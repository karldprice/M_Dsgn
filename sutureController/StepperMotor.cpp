#include "StepperMotor.h"

/****** ASSUME ALL POSITIONS IN BITS!!!!!!!!!!!! *****/
/*
	Default Constructor
*/
StepperMotor::StepperMotor()
{  
}

/*	
	Constructor

INPUT
posPin: digital input pin connected to position feedback (encoder)
stepPin: digital output pin that enables step signal
encMin: minimum possible value for the encoder/motor
encMax: maximum possible value for the encoder/motor
stepDelay: determines speed of rotation of the motor

*/
StepperMotor::StepperMotor(int posPin, int stepPin, int encMin, int encMax, int stepDelay)
{  
  _posPin = posPin;
  _stepPin = stepPin;  
  
  _encMin = encMin;
  _encMax = encMax;

  _stepDelay = stepDelay;
  
  pinMode(_posPin, INPUT);
  pinMode(_stepPin, OUTPUT);
  
  digitalWrite(_stepPin, LOW);  
  //default stepper to be asleep
  digitalWrite(STEP_NSLEEP, LOW);
}

/*	
	Return position measured by encoder (in bits)
*/
int StepperMotor::getPos()
{
  return analogRead(_posPin); 
}

/*	
	Check if position is valid (i.e. not outside encoder range)
	
INPUT
posBit: the position value to verify (in bits)

*/
bool StepperMotor::isValidPos(int posBit) {
	return (posBit <= _encMax && posBit >= _encMin);
}

/*	
	Check if stepper motor has reached limit (e.g. for pitch actuation)
	
INPUT
curPosBit: the current motor position (in bits)
isCW: flag to determine direction of rotation

*/
bool StepperMotor::_limitReached(int curPosBit, bool isCW) {
	if(!_isPitch || isValidPos(curPosBit))
		return false;
	else if((curPosBit > _encMax && isCW) || (curPosBit < _encMin && !isCW))
		return false;

	return true;
}

/*	
	Check if have reached desired position
	
INPUT
curPosBit: the current motor position (in bits)
desPosBit: the desired motor position (in bits)

*/
bool StepperMotor::_isAtPos(int curPosBit, int desPosBit)
{
	return(abs(curPosBit - desPosBit) < STEP_TOL);
}

/*	
	Restrict the position to within the valid range
	
INPUT
posBit: the motor position (in bits)

*/
int StepperMotor::limitPos(int posBit) {
	if(posBit > _encMax)
		posBit = _encMax;
	else if(posBit < _encMin)
		posBit = _encMin;
	
	return posBit;
}

/*	
	Move motor to desired position 
	
INPUT
desPosBit: the desired motor position (in bits)

*/
bool StepperMotor::goToPos(int desPosBit) {
	bool isCW = (desPosBit < getPos());
	return goToPos(desPosBit, isCW);
}

/*	
	Move motor to desired position in specified direction
	
INPUT
desPosBit: the desired motor position (in bits)
isCw: the desired direction of travel

*/
bool StepperMotor::goToPos(int desPosBit, bool isCW) {
	int curPosBit = getPos();
	
	///verify desired position and valid and not already reached
	if(!isValidPos(desPosBit)) {
		Serial.print("ERR: Invalid stepper destination: "); Serial.println(desPosBit);
		return FAIL; 
	}
	if(_isAtPos(curPosBit, desPosBit)) {
		return PASS;
	}
	
	//specify direction of rotation
	if(isCW) {
		digitalWrite(STEP_DIR, LOW);
	}
	else {
		digitalWrite(STEP_DIR, HIGH);
	}

	//wake up the stepper
	digitalWrite(STEP_NSLEEP, HIGH);
	delay(5);	//According to datasheet - exiting sleep
	
	unsigned long startTime =  millis();
        int temp = 0;
	
	//step until reached desired position
	for(int i =0; i<3 || !_isAtPos(curPosBit, desPosBit); i++) {
		while(!_isAtPos(curPosBit, desPosBit)) {
			if(_limitReached(curPosBit, isCW)) {
				Serial.print("ERR: Rotation limit: "); Serial.println(desPosBit);
				return FAIL;
			}
			else if(millis() - startTime > TIMEOUT) {
				Serial.print("ERR: Stepper timeout: "); Serial.println(desPosBit);
				digitalWrite(STEP_NSLEEP, LOW);
				return FAIL;
			}
			else if(abs(curPosBit - desPosBit) < 10)
				_performStep(_stepDelay*2); 
			else
				_performStep(_stepDelay); 
			
			curPosBit = getPos();

			if(curPosBit % 5 == 0 && temp != curPosBit) {
			  temp = curPosBit;
			  Serial.println(curPosBit);
			}
		} 
		delay(100);
                curPosBit = getPos();
	}
	
	//put stepper motor back to sleep
	digitalWrite(STEP_NSLEEP, LOW);
	return PASS;
}

/*	
	Perform one step 
	
INPUT
stepInterval: time delay between rising and falling edges

*/
void StepperMotor::_performStep(int stepInterval) 
{
  digitalWrite(_stepPin, HIGH); 
  delay(stepInterval); 
  digitalWrite(_stepPin, LOW);
  delay(stepInterval); 
}
