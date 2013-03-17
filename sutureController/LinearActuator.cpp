#include "Arduino.h"
#include "Constants.h"
#include "LinearActuator.h"
// #include "ToggleGrip.h"


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
		debug("ERR: Invalid toggle destination: "); debugln(desPosBit);
		return false;
	}
	if(_isAtPos(curPosBit, desPosBit)) {
		debug("WARN: Toggle already at position: "); debugln(desPosBit);
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
			debug("ERR: Toggle limit reached: "); debugln(desPosBit);
			return FAIL;
		}
		else if(++cnt > 250) {
			digitalWrite(_enPin, LOW); 
			debug("ERR: Toggle timeout: "); debugln(desPosBit);
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
		// debug("pos - ");
		debugln((String)curPosBit);
	}
}

/*




int LinearActuator::goToPos(int desPos)
{
  int curPos = getPos();
  
  //check if already at Position
  if(abs(curPos-desPos) < NED_TOL)
    return PASS;
    
  boolean extend = (curPos < desPos);

  int limit;  
  
  //REMOVED WIGGLE_ROOM (x6)
  if(extend) { 					
    if(_posPin == TOG1_POS_PIN)
      limit = TOG1_RETRACT;
    else if (_posPin == TOG2_POS_PIN)
      limit = TOG2_RETRACT;
    else if(_posPin == GRIP_POS_PIN)
      limit = GRIP_EXTEND; 
      
    if(desPos > limit) {
      debug("ERR: Requested LinAct position ouside limit. Max: ");  debugln(limit);
    }
    else
      extendAct(curPos, desPos, limit); 
  }
  else { 
    if(_posPin == TOG1_POS_PIN)
      limit = TOG1_ENGAGE;
    else if (_posPin == TOG2_POS_PIN)
      limit = TOG2_ENGAGE;
    else if(_posPin == GRIP_POS_PIN)
      limit = GRIP_RETRACT; 
      
    if(desPos < limit) {
      debug("ERR: Requested LinAct position ouside limit. Min: ");  debugln(limit);
    }
    else
      retractAct(curPos, desPos, limit); 
  }
  
  if(abs(curPos-desPos) < NED_TOL)
  {
    debug("LinAct Success - "); debugln(getPos());
    return PASS;
  }
  else
  {
    debug("ERR: LinAct Did Not Reach Destination - ");  debugln(getPos());
    return FAIL;
  }
  
//  boolean complete;
//  //check reached desiredPosition
//  for(int attempt = 0; attempt < 3; attempt++)
//  {
//    curPos = getPos();
//    debug("curPos = "); debug(curPos); debug("\t , desPos = "); debug(desPos);
//    complete = abs((curPos - desPos)) < (2*NED_TOL);
//    if(complete) { debug("  -  Got there\n"); return PASS; }
//    
//    //else, try again
//    debug("  - Re-attempt move\n"); 
//    
//    extend = (curPos < desPos);
//    if(extend) { extendAct(curPos, desPos, limit); }
//    else { retractAct(curPos, desPos, limit); }
//  }
}

void LinearActuator::moveBySteps(int numSteps, boolean extend)
{
  int curPos = getPos();
  if(extend) { 
    goToPos(curPos + numSteps); 
  } else {
    goToPos(curPos - numSteps); 
  }
  return;
}

void LinearActuator::extendAct(int curPos, int desPos, int limit)
{
  debug("LinAct Extend: desPos = "); debugln(desPos);
  
  //set direction
  digitalWrite(LIN_DIR_PIN, HIGH); 
  
  //enable lin act
  digitalWrite(_enPin, HIGH); 

  int counter = 0;
  while(curPos < (desPos - NED_TOL)) {    
    curPos = getPos();   

    if(curPos >= limit) {
      debugln("ERR: LinAct Extend Limit");
      break;
    }
    else if(++counter > 500)    // Quit if taking too long
    {
      debugln("ERR: LinAct Extend Timeout");
      break;
    }
  } 
  
  //disable lin act once reach desired position
  digitalWrite(_enPin, LOW);  
}

void LinearActuator::retractAct(int curPos, int desPos, int limit)
{
  debug("LinAct Retract: desPos = "); debugln(desPos);
  
  //set direction
  digitalWrite(LIN_DIR_PIN, LOW); 
  
  //enable lin act
  digitalWrite(_enPin, HIGH); 

  int counter = 0;
  while(curPos > (desPos + NED_TOL)) {
    curPos = getPos();       

    if(curPos <= limit) {
      debugln("ERR: LinAct Retract Limit");
      break;
    }
    
    if(++counter > 500)    // Quit if taking too long
    {
      debugln("ERR: LinAct Retract Timeout");
      break;
    }
  }  
  
  //disable lin act once reach desired position
  digitalWrite(_enPin, LOW);  
}
*/
