#include "StepperMotor.h"

/****** ASSUME ALL POSITIONS IN BITS!!!!!!!!!!!! *****/
StepperMotor::StepperMotor()
{  
}

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
}

int StepperMotor::getPos()
{
  return analogRead(_posPin); 
}

bool StepperMotor::isValidPos(int posBit) {
	return (posBit <= _encMax && posBit >= _encMin);
}
bool StepperMotor::_limitReached(int curPosBit, bool isCW) {
	if(!_isPitch || isValidPos(curPosBit))
		return false;
	else if((curPosBit > _encMax && isCW) || (curPosBit > _encMax && isCW))
		return false;

	return true;
}
bool StepperMotor::_isAtPos(int curPosBit, int desPosBit)
{
	return(abs(curPosBit - desPosBit) < STEP_TOL);
}
int StepperMotor::limitPos(int posBit) {
	if(posBit > _encMax)
		posBit = _encMax;
	else if(posBit < _encMin)
		posBit = _encMin;
	
	return posBit;
}

bool StepperMotor::goToPos(int desAngBit) {
	bool isCW = (desAngBit < getPos());
	return goToPos(desAngBit, isCW);
}

bool StepperMotor::goToPos(int desPosBit, bool isCW) {
	int curPosBit = getPos();
	
	if(!isValidPos(desPosBit)) {
		Serial.print("ERR: Invalid stepper destination: "); Serial.println(desPosBit);
		return FAIL; 
	}
	if(_isAtPos(curPosBit, desPosBit)) {
		return PASS;
	}
	
	if(isCW) {
		digitalWrite(STEP_DIR, LOW);
	}
	else {
		digitalWrite(STEP_DIR, HIGH);
	}

	digitalWrite(STEP_NSLEEP, HIGH);
	delay(5);	//According to datasheet - exiting sleep

	while(!_isAtPos(curPosBit, desPosBit)) {
		if(_limitReached(curPosBit, isCW)) {
			Serial.print("ERR: Toggle limit: "); Serial.println(desPosBit);
			digitalWrite(STEP_NSLEEP, LOW);
			return FAIL;
		}
		else if(abs(curPosBit - desPosBit) < 5)
			_performStep(_stepDelay*2); 
		else
			_performStep(_stepDelay); 
		
		curPosBit = getPos();
		// Serial.println(curPosBit);
	} 
	
	digitalWrite(STEP_NSLEEP, LOW);
	return PASS;
}

void StepperMotor::_performStep(int stepInterval) 
{
  digitalWrite(_stepPin, HIGH); 
  delay(stepInterval); 
  digitalWrite(_stepPin, LOW);
  delay(stepInterval); 
}