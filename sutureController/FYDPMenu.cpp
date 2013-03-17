#include "FYDPMenu.h"
// #include "ToggleGrip.h"
// #include "Pitch.h"
// #include "Roll.h"

FYDPMenu::FYDPMenu()
{
  _param[0].reserve(50);
  _param[1].reserve(50);
  _param[2].reserve(50);

  resetMenu();
  
  
  toggle1 = LinearActuator(TOG1_EN_PIN,TOG1_POS_PIN,TOG1_DISENGAGE,TOG1_ENGAGE);
  toggle2 = LinearActuator(TOG2_EN_PIN,TOG2_POS_PIN,TOG2_DISENGAGE,TOG2_ENGAGE);
  gripper = LinearActuator(GRIP_EN_PIN,GRIP_POS_PIN,GRIP_CLOSED,GRIP_OPEN);
  
	pitch = StepperMotor(PITCH_POS_PIN, PITCH_STEP_PIN, PITCH_STRAIGHT, PITCH_CURLED);
	outerRoll = StepperMotor(ROLL_O_POS_PIN, ROLL_O_STEP_PIN, ROLL_MIN, ROLL_MAX);
	wristRoll = StepperMotor(ROLL_W_POS_PIN, ROLL_W_STEP_PIN, ROLL_MIN, ROLL_MAX);
  // toggleGrip = ToggleGrip();
  // pitch = Pitch();
  // outerRoll = Roll();
  // wristRoll = Roll();
}

void FYDPMenu::resetMenu()
{
   _error = false;
   _errorStr = "";
   _commandReady = false;
   _pIdx = 0;
   _param[0] = "";
   _param[1] = "";
   _param[2] = "";
}

boolean FYDPMenu::inputReady() {
  return !_commandReady && !_error;
}
boolean FYDPMenu::cmdReady() {
  return _commandReady && !_error;
}

boolean FYDPMenu::isError() {
  return _error; 
}

String FYDPMenu::getError() {
  return _errorStr; 
}

void FYDPMenu::_setError(String errMsg) {
  _errorStr = errMsg;
  _error = true;
}

boolean FYDPMenu::doneCmd() {
   if(!_error) {
     for(int i=0; i < 3; i++)
       _param[i].toUpperCase();      
     _commandReady = true;
     return true;
   }
   
   return false;
}

boolean FYDPMenu::addChar(char inChar) {
//debug("add c- "); debug(_commandReady); debug("add e- "); debugln(_error);

  if(!_commandReady && !_error) { 
      if(_pIdx != 2 && _param[_pIdx].length() >= 2) {
        _setError("Err: Too many characters");
      }
      if(_pIdx == 2 && !isDigit(inChar))
        _setError("Err: 3rd parameter must be numeric");
      else {
        _param[_pIdx] += inChar;
        return true;
      }
  }

  debug("fail - "); debugln(getError());
  return false;
}

int FYDPMenu::getNumParams() {
  return _pIdx; 
}
String FYDPMenu::getParam(int p) {
  if(p >= 0 || p < 3)
    return _param[p];

  return "";
}

boolean FYDPMenu::nxtParam() {
  if(_pIdx < 2) {
    _pIdx ++;
    return true;
  }
  else {
    _error = true;
    _errorStr = "Error: too many parameters";
    return false;
  }
}

boolean FYDPMenu::handleInput(String pFunc, String pDir, String pValue)
{
	debug(pFunc); debug(" , "); debug(pDir); debug(" , "); debugln(pValue); 
 
	int pVal = pValue.toInt();
	
	boolean isBits = false;
	boolean posDir = false;
	
	String dirStr = pDir.substring(0,1);

	//If NOT needle or check
	// if(pFunc != "N" && pFunc != "C" && pFunc != "N") {
		// if( == "+")
			// posDir = true;
		// else if(pDir.substring(0,1) == "-")
			// posDir = false;
		// else {
			// _setError("Invalid direction parameter");
			// return FAIL;
		// }
	// }

	if(pDir.length() > 1 && pDir.substring(1,2) == "B") {
		isBits = true;
		debugln("isBits");
	}

	isBits = true;				//DEBUGGGGGGGG
	
	if (pFunc == "P") {				// Pitch
		debugln("FN: Pitch");
		
		debug("Going to = "); debug(pVal); debugln(" [bit]");
		if(!pitch.goToPos(pVal))
			debugln("Pitch failed");
		debug("PitchPos = "); debug(pitch.getPos()); debugln(" [bit]");
	}
	else if (pFunc == "WR") {		// Wrist Roll
		debugln("FN: Wrist Roll");
		
		debug("Going to = "); debug(pVal); debugln(" [bit]");
		
		if(dirStr == "+") {
			if(!wristRoll.goToPos(pVal,ROLL_W_CW))
				debugln("Wrist Roll CW failed");
		}
		else if(dirStr == "-") {
			if(!wristRoll.goToPos(pVal,!ROLL_W_CW))
				debugln("Wrist Roll CW failed");
		}
		else
			debugln("ERR: Wrist Roll - Invalid direction parameter");

		debug("PitchPos = "); debug(wristRoll.getPos()); debugln(" [bit]");

	}
	else if (pFunc == "OR") {		// Outer Roll
		debugln("FN: Outer Roll");
		
		// if(isBits) {
			// debug("Going to = "); debug(pVal); debug(" [bit] \n");
			// outerRoll.goToPosBit(pVal);
			// debug("outerRollPos = "); debug(outerRoll.getPosBit()); debug(" [bit] \n");
		// }
		// else {
			// debug("Going to = "); debug(pVal); debug(" [deg] \n");
			// outerRoll.goToPosDeg(pVal);
			// debug("outerRollPos = "); debug(outerRoll.getPosDeg()); debug(" [deg] \n");
		// }
	}
	else if (pFunc == "T1") {		// Toggle 1
		if(dirStr == "E")
			pVal = TOG1_ENGAGE;
		else if(dirStr == "D")
			pVal = TOG1_DISENGAGE;
		
		if(!gripper.isAtPos(GRIP_CLOSED))
			_setError("ERR: Toggle1 - Grip not closed.");
		else {
			debug("Going to = "); debug(pVal); debug(" [bit] \n");
			toggle1.goToPos(pVal);
			debug("Toggle1Pos = "); debug(toggle1.getPos()); debug(" [bit] \n");
		}
	}
	else if (pFunc == "T2") {		// Toggle 2
		debugln("FN: Toggle 2");
		
		if(dirStr == "E")
			pVal = TOG2_ENGAGE;
		else if(dirStr == "D")
			pVal = TOG2_DISENGAGE;
		
		if(!gripper.isAtPos(GRIP_CLOSED))
			_setError("ERR: Toggle1 - Grip not closed.");
		else {
			debug("Going to = "); debug(pVal); debug(" [bit] \n");
			toggle2.goToPos(pVal);
			debug("Toggle1Pos = "); debug(toggle2.getPos()); debug(" [bit] \n");
		}
	}
	else if (pFunc == "G") {		// Gripper
		debugln("FN: Grip");
		
		if(abs(toggle1.getPos() - TOG1_DISENGAGE) > NED_TOL*2 && 
					abs(toggle2.getPos() - TOG2_DISENGAGE) > NED_TOL*2) {
			_setError("ERR: Grip - Both toggles engaged.");
			Serial.println("here9");
		}
		else {
			if(dirStr == "C")
				pVal = GRIP_CLOSED;
			else if(dirStr == "O")
				pVal = GRIP_OPEN;
				
			debugln("here0");
			
			debug("Going to = "); debug((int)(2)); debugln(" [bit]");
			gripper.goToPos(pVal);
			debug("Toggle1Pos = "); debug(gripper.getPos()); debugln(" [bit]");
		}
		Serial.println("here1");
	}
	else if (pFunc == "N") {		// Gripper
		debugln("FN: GripNeedle");
		bool toTog1;
		
		if(toggle1.isAtPos(TOG1_ENGAGE))
			toTog1 = false;
		else if(toggle2.isAtPos(TOG2_ENGAGE))
			toTog1 = true;
		else if(abs(toggle1.getPos() - TOG1_ENGAGE) < abs(toggle2.getPos() - TOG2_ENGAGE))
			toTog1 = false;
		else
			toTog1 = true;
				
		if(pDir == "T"){

			debugln("close");
			if(!gripper.isAtPos(GRIP_CLOSED)){
				_setError("ERR: Toggle - Gripper must be closed");
				return FAIL;
			}
			debugln("t1c");
			if(!toggle1.goToPos(TOG1_ENGAGE)){
				_setError("ERR: Toggle - T1 failed to engage");
				return FAIL;
			}
			debugln("t2c");
			if(!toggle2.goToPos(TOG2_ENGAGE)){
				_setError("ERR: Toggle - T2 failed to engage");
				return FAIL;
			}
			
			debugln("dhg,c");
			if(!toTog1) {
				if(!toggle1.goToPos(TOG1_DISENGAGE)){
					_setError("ERR: Toggle - T1 failed to disengage");
					return FAIL;
				}
			}
			else {
				if(!toggle2.goToPos(TOG2_DISENGAGE)){
					_setError("ERR: Toggle - T2 failed to disengage");
					return FAIL;
				}
			}
		}
		else if(pDir == "D"){
			if(!gripper.isAtPos(GRIP_CLOSED)){
				_setError("ERR: Drop - Gripper must be closed");
				return FAIL;
			}
			if(!toggle1.goToPos(TOG1_DISENGAGE)){
				_setError("ERR: Drop - T1 failed to disengage");
				return FAIL;
			}
			if(!toggle2.goToPos(TOG2_DISENGAGE)){
				_setError("ERR: Drop - T2 failed to disengage");
				return FAIL;
			}
			if(!gripper.goToPos(GRIP_OPEN)){
				_setError("ERR: Drop - Grip failed to open");
				return FAIL;
			}
		}
		else
		  _setError("Invalid Needle param: {T,F,L}");
	}

	else
  		_setError("Invalid function parameter. {P,WR,OR,T1,T2,G,N,C}");
    
	return !isError();

}

