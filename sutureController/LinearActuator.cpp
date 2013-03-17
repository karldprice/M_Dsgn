#include "LinearActuator.h"

/****** ASSUME ALL POSITIONS IN BITS!!!!!!!!!!!! *****/
LinearActuator::LinearActuator()
{  }

LinearActuator::LinearActuator(int enPin, int posPin, int encMin, int encMax)
{  
	_encMin = encMin;
	_encMax = encMax;

	_enPin = enPin;
	_posPin = posPin;
	
	_isGripper = (_enPin == GRIP_EN_PIN);
  
	pinMode(_enPin, OUTPUT);
	pinMode(_posPin, INPUT);  
  
  digitalWrite(_enPin, LOW);
}

int LinearActuator::getPos()
{
  int pos = analogRead(_posPin);
  return pos; 
}

bool LinearActuator::isValidPos(int posBit)
{
	return (posBit >= _encMin && posBit <= _encMax);
}

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

bool LinearActuator::_isAtPos(int curPosBit, int desPosBit) {
	return(abs(curPosBit - desPosBit) < NED_TOL);
}

bool LinearActuator::isAtPos(int testPosBit) {
	return (abs(getPos() - testPosBit) < NED_TOL*2);
}

int LinearActuator::limitPos(int posBit)
{
	if(posBit > _encMax)
		posBit = _encMax;
	else if(posBit < _encMin)
		posBit = _encMin;
		
	return posBit;
}

bool LinearActuator::goToPos(int desPosBit)
{
	int curPosBit = getPos();
	bool extend;
	
	if(!isValidPos(desPosBit)) {
		Serial.print("ERR: Invalid toggle destination: "); Serial.println(desPosBit);
		return false;
	}
	if(_isAtPos(curPosBit, desPosBit)) {
		// Serial.print("WARN: Toggle already at position: "); Serial.println(desPosBit);
		return true;
	}
	
	if((_isGripper && curPosBit < desPosBit) ||
	   (!_isGripper && curPosBit > desPosBit)) {
		extend = true;
		digitalWrite(LIN_DIR_PIN, HIGH);	//Extend
	}
	else {
		extend = false;
		digitalWrite(LIN_DIR_PIN, LOW); 	//Retract
	}

	int cnt = 0;
	while(!_isAtPos(curPosBit, desPosBit)) {
		if(_limitReached(curPosBit,extend)) {
			digitalWrite(_enPin, LOW); 
			Serial.print("ERR: Toggle limit reached: "); Serial.println(desPosBit);
			return FAIL;
		}
		else if(++cnt > 250) {
			digitalWrite(_enPin, LOW); 
			Serial.print("ERR: Toggle timeout: "); Serial.println(desPosBit);
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