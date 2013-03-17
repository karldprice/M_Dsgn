#include "StepperMotor.h"

/****** ASSUME ALL POSITIONS IN BITS!!!!!!!!!!!! *****/
StepperMotor::StepperMotor()
{  
}

StepperMotor::StepperMotor(int posPin, int stepPin, int encMin, int encMax)
{  
  _posPin = posPin;
  _stepPin = stepPin;  
  
  _encMin = encMin;
  _encMax = encMax;
  
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
		debug("ERR: Invalid stepper destination: "); debugln(desPosBit);
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
	delay(1);	//According to datasheet - exiting sleep

	while(!_isAtPos(curPosBit, desPosBit)) {
		if(_limitReached(curPosBit, isCW)) {
			debug("ERR: Toggle limit reached: "); debugln(desPosBit);
			digitalWrite(STEP_NSLEEP, LOW);
			return FAIL;
		}
		else if(abs(curPosBit - desPosBit) < 5)
			_performStep(STEP_DELAY*2); 
		else
			_performStep(STEP_DELAY); 
		
		curPosBit = getPos();
		debugln(curPosBit);
	} 
	
	digitalWrite(STEP_NSLEEP, LOW);
	return PASS;
}



void StepperMotor::_performStep(int stepInterval) 
{
  //motor steps on rising edge  
  digitalWrite(_stepPin, HIGH); 
  delay(stepInterval); 
  digitalWrite(_stepPin, LOW);
  delay(stepInterval); 
}

/*
void StepperMotor::goToPos(int desAngBit)
{  
  int curAngle = getPos();  
  desAngBit = performPositionChecks(desAngBit);  
  
  debugln("goToPos Checking things... curAngle, desAngBit = "); debug(curAngle); debug(" , "); debugln(desAngBit);
  
  if(abs(curAngle-desAngBit) < ANGLE_TOL)
    return;
    
  boolean cw;
  if(_posPin = PITCH_POS_PIN)
	cw = (curAngle > desAngBit);
  else {
    debug("curAngle plus half rotation = "); debugln(((curAngle + (ROLL_MAX - ROLL_MIN)/2)%ROLL_MAX));
    if(((curAngle + (ROLL_MAX - ROLL_MIN)/2)%ROLL_MAX) >= desAngBit) { cw = true; debugln("Move cw"); }
    else { cw = false; }
  }
    
  digitalWrite(ROT_NSLEEP_PIN, HIGH);
  
  if(cw) { spinCW(curAngle, desAngBit); }
  else { spinCCW(curAngle, desAngBit); }
  
  //Set stepper back to sleep
  digitalWrite(ROT_NSLEEP_PIN, LOW);
  
  return;
}


//CCW = curling for pitch
void StepperMotor::moveBySteps(int numSteps, boolean CW)
{
  digitalWrite(ROT_NSLEEP_PIN, HIGH);
  
  if(CW == true) { digitalWrite(ROT_DIR_PIN, HIGH); }
  else { digitalWrite(ROT_DIR_PIN, LOW); }
  
  int curAngle = getPos(); 
  
  if(CW) { spinCW(curAngle, curAngle+numSteps); }
  else { spinCCW(curAngle, curAngle-numSteps); }

  //Set stepper back to sleep
  digitalWrite(ROT_NSLEEP_PIN, LOW);
}

//CCW = curling pitch, from 0->85* [330b -> 40b]
void StepperMotor::spinCCW(int curAngle, int desAngle)
{
  debug("Checking things... curAngle, desAngle = "); debug(curAngle); debug(" , "); debugln(desAngle);
  desAngle = performPositionChecks(desAngle);  
  digitalWrite(ROT_DIR_PIN, HIGH);
  
//  while(curAngle > desAngle) {
  while(abs(curAngle - desAngle) > ANGLE_TOL) {  
    performStep(); 
    curAngle = getPos();   
    
    debugln(curAngle);
    
    //Watch limits for pitch motor
    if(_posPin == PITCH_POS_PIN && curAngle >= PITCH_CURLED) {
      debugln("Hit pitch limit");
      break;
    }
  }  
}

//CW = straightening pitch, from 85->0* [40b -> 330b]
void StepperMotor::spinCW(int curAngle, int desAngle)
{ 
  debug("Checking things... curAngle, desAngle = "); debug(curAngle); debug(" , "); debugln(desAngle);
  desAngle = performPositionChecks(desAngle);  
  digitalWrite(ROT_DIR_PIN, LOW);
  
//  while(curAngle < desAngle) {  
  while(abs(curAngle - desAngle) > ANGLE_TOL) {    
    performStep();     
    curAngle = getPos();  
    
    debugln(curAngle);
    
    //Watch limits for pitch motor
    if(_posPin == PITCH_POS_PIN && curAngle <= PITCH_STRAIGHT) {
      debugln("Hit pitch limit");
      break;
    }
  }  
}

/*
int StepperMotor::performPositionChecks(int desAngBit)
{
  //Perform pre-checks
  if(_posPin == PITCH_POS_PIN){
    if(desAngBit > PITCH_CURLED) {
		debugln("WARN: desAngBit too large, going to PITCH_CURLED");
		desAngBit = PITCH_CURLED;
    } 
	else if(desAngBit < PITCH_STRAIGHT) {
		debugln("WARN: desAngBit too small, going to PITCH_STRAIGHT");
		desAngBit = PITCH_STRAIGHT;
    }
  } 
  else {
    // debug("ROLL_MIN, ROLL_MAX = "); debug(ROLL_MIN); debug(" , "); debugln(ROLL_MAX);
    if(desAngBit <= ROLL_MIN) {
		debugln("WARN: desAngBit too small, going to ROLL_MIN");
		desAngBit = ROLL_MIN;
      // debug("looping around roll position, new desAngBit = "); debugln(ROLL_MAX - (ROLL_MIN - desAngBit));
      // return ROLL_MAX - (ROLL_MIN - desAngBit);
    } else if(desAngBit >= ROLL_MAX) {
		debugln("WARN: desAngBit too large, going to ROLL_MAX");
		desAngBit = ROLL_MAX;
      // debugln("looping around roll position, new desAngBit = "); debugln(ROLL_MIN + (desAngBit - ROLL_MAX));
      // return ROLL_MIN + (desAngBit - ROLL_MAX);
    }    
  }
  return desAngBit;
}
*/
/**/




