#include "LinearActuator.h"

/****** ASSUME ALL POSITIONS IN BITS!!!!!!!!!!!! *****/
/*
	Default Constructor
*/
LinearActuator::LinearActuator()
{  }

/*	
	Constructor

INPUT
enPin:  digital output pin that enables the motor
posPin: digital input pin connected to position feedback (potentiometer)
encMin: minimum possible value for the actuator
encMax: maximum possible value for the actuator

*/
LinearActuator::LinearActuator(int enPin, int posPin, int encMin, int encMax)
{  
	_encMin = encMin;
	_encMax = encMax;

	_enPin = enPin;
	_posPin = posPin;
	
	//flag to determine identity of the linear actuator, gripper has special powers (involved in needle toggling/dropping)
	_isGripper = (_enPin == GRIP_EN_PIN);
  
	pinMode(_enPin, OUTPUT);
	pinMode(_posPin, INPUT);  
  
	//turn off all lin acts
    digitalWrite(_enPin, LOW);
}

/*	
	Return position measured by potentiometer (in bits)
*/
int LinearActuator::getPos()
{
  return analogRead(_posPin);
}

/*	
	Check if position is valid (i.e. not outside actuator range)
	
INPUT
posBit: the position value to verify (in bits)

*/
bool LinearActuator::isValidPos(int posBit)
{
	return (posBit >= _encMin && posBit <= _encMax);
}

/*	
	Check if the linear actuator has reached limit (to prevent mechanical damage)
	
INPUT
curPosBit: the current motor position (in bits)
extend: flag to determine direction of lin act travel

*/
bool LinearActuator::_limitReached(int curPosBit, bool extend) {
	if(isValidPos(curPosBit))
		return false;
	else if(!_isGripper && 
			((curPosBit > _encMax && extend) || (curPosBit < _encMin && !extend)))
				return false;
	else if(_isGripper &&
			((curPosBit > _encMax && !extend) || (curPosBit < _encMin && extend)))
				return false;
	
	return true;
}


/*	
	Check if have reached desired position
	
INPUT
curPosBit: the current motor position (in bits)
desPosBit: the desired motor position (in bits)

*/
bool LinearActuator::_isAtPos(int curPosBit, int desPosBit) {
	return(abs(curPosBit - desPosBit) < NED_TOL);
}


/*	
	Check if have reached a specified position (compare current position to specified position)
	
INPUT
testPosBit: the current motor position (in bits)

*/
bool LinearActuator::isAtPos(int testPosBit) {
	return (abs(getPos() - testPosBit) < NED_TOL*2);
}

/*	
	Restrict the position to within the valid range
	
INPUT
posBit: the motor position (in bits)

*/
int LinearActuator::limitPos(int posBit)
{
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
bool LinearActuator::goToPos(int desPosBit)
{
	int curPosBit = getPos();
	bool extend;
	
	//verify if desired position is valid and not already there
	if(!isValidPos(desPosBit)) {
		Serial.print("ERR: Invalid toggle destination: "); Serial.println(desPosBit);
		return false;
	}
	if(_isAtPos(curPosBit, desPosBit)) {
		// Serial.print("WARN: Toggle already at position: "); Serial.println(desPosBit);
		return true;
	}
	
	//Chose direction (extend/retract)
	if((_isGripper && curPosBit < desPosBit) ||
	   (!_isGripper && curPosBit > desPosBit)) {
		extend = true;
		digitalWrite(LIN_DIR_PIN, HIGH);	//Extend
	}
	else {
		extend = false;
		digitalWrite(LIN_DIR_PIN, LOW); 	//Retract
	}

	unsigned long startTime =  millis();

	//loop until reached desired position
	while(!_isAtPos(curPosBit, desPosBit)) {
		if(_limitReached(curPosBit,extend)) {
			digitalWrite(_enPin, LOW); 
			Serial.print("ERR: Toggle limit reached: "); Serial.println(desPosBit);
			return FAIL;
		}
		else if(millis() - startTime > TIMEOUT) {
			digitalWrite(_enPin, LOW); 
			Serial.print("ERR: LinAct timeout: "); Serial.println(desPosBit);
			return FAIL;
		}
		
		digitalWrite(_enPin, HIGH);		//enable lin act
		delay(LIN_DUTY_ON);
		digitalWrite(_enPin, LOW); 
		
		if(abs(curPosBit - desPosBit) < 15)
			(_isGripper) ? delay(GRIP_DUTY_OFF*5) : delay(LIN_DUTY_OFF*5);
		else
			(_isGripper) ? delay(GRIP_DUTY_OFF) : delay(LIN_DUTY_OFF);
		
		curPosBit = getPos();
		// Serial.println((String)curPosBit);
	}
}