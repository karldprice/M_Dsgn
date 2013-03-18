#include "FYDPMenu.h"

FYDPMenu::FYDPMenu()
{
	_param[0] = String("");
	_param[1] = String("");
	_param[2] = String("");
	_errorStr = String("");
	resetMenu();

	toggle1 = LinearActuator(TOG1_EN_PIN,TOG1_POS_PIN,TOG1_DISENGAGE,TOG1_ENGAGE);
	toggle2 = LinearActuator(TOG2_EN_PIN,TOG2_POS_PIN,TOG2_DISENGAGE,TOG2_ENGAGE);
	gripper = LinearActuator(GRIP_EN_PIN,GRIP_POS_PIN,GRIP_CLOSED,GRIP_OPEN);

	pitch = StepperMotor(PITCH_POS_PIN, PITCH_STEP_PIN, PITCH_STRAIGHT, PITCH_CURLED, STEP_DELAY);
	outerRoll = StepperMotor(ROLL_O_POS_PIN, ROLL_O_STEP_PIN, ROLL_MIN, ROLL_MAX, STEP_DELAY);
	wristRoll = StepperMotor(ROLL_W_POS_PIN, ROLL_W_STEP_PIN, ROLL_MIN, ROLL_MAX, STEP_DELAY);

       Serial.print("POS,P,"); Serial.println(pB2D(pitch.getPos()));
       Serial.print("POS,O,"); Serial.println(orB2D(outerRoll.getPos()));
       Serial.print("POS,W,"); Serial.println(wrB2D(wristRoll.getPos()));
}

void FYDPMenu::resetMenu()
{
   _error = false;
   _errorStr = "_";
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
  _errorStr = "ERR:" + errMsg;
  // _errorStr = errMsg;
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
  if(!_commandReady && !_error) { 
      if(_pIdx != 2 && _param[_pIdx].length() >= 2) {
        _setError("Too many chars");
      }
      if(_pIdx == 2 && !isDigit(inChar))
        _setError("3rd param not num");
      else {
        _param[_pIdx] += inChar;
        return true;
      }
  }

  Serial.print("fail - "); Serial.println(getError());
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
    _errorStr = "Too many params";
    return false;
  }
}

boolean FYDPMenu::handleInput(String pFunc, String pDir, String pValue)
{
	// Serial.print(pFunc); Serial.print(" , "); Serial.print(pDir); Serial.print(" , "); Serial.println(pValue); 
 
	int pVal = pValue.toInt();
	bool isMM = false;
	bool isDeg = false;
	
	String dirStr = "";
	if(pDir.length() > 0)
		dirStr = pDir.substring(0,1);

	if(pDir.length() > 1)
		if(pDir.substring(1,2) == "M")
			isMM = true;
		else if(pDir.substring(1,2) == "D")
			isDeg = true;
		else
			_setError("Invalid direction");

	if(!isError()){ 
		if (pFunc == "P") {				// Pitch
			if(isDeg) {
				if(pVal < PITCH_STRAIGHT_ANG)
					_setError("Pitch angle too small.");
				else if(pVal > PITCH_CURLED_ANG)
					_setError("Pitch angle too large.");
				else
					pVal = pD2B(pVal);
			}
			if(!isError()) {
				if(!pitch.goToPos(pVal))
					_setError("Pitch failed.");
			}
			Serial.print("POS,P,"); Serial.println(pB2D(pitch.getPos()));
		}
		else if (pFunc == "WR") {		// Wrist Roll
			if(isDeg) {
				pVal = wrD2B(pVal);
			}
			if(!isError()) {

				if(dirStr == "+") {
					if(!wristRoll.goToPos(pVal,ROLL_W_CW))
						Serial.println("WR - CW failed");
				}
				else if(dirStr == "-") {
					if(!wristRoll.goToPos(pVal,!ROLL_W_CW))
						Serial.println("WR - CW failed");
				}
				else
					Serial.println("WR - Invalid direction parameter");
			}
			// Serial.print("POS,WR,"); Serial.println(wrB2D(wristRoll.getPos()));
			Serial.print("POS,WR,"); Serial.println(wrB2D(wristRoll.getPos()));
		}
		else if (pFunc == "OR") {		// Outer Roll
			if(isDeg) {
				pVal = orD2B(pVal);
			}

			if(dirStr == "+") {
				if(!outerRoll.goToPos(pVal,ROLL_O_CW))
					Serial.println("Outer Roll CW failed");
			}
			else if(dirStr == "-") {
				if(!outerRoll.goToPos(pVal,!ROLL_O_CW))
					Serial.println("Outer Roll CW failed");
			}
			else
				Serial.println("OR - Invalid direction parameter");
				
			Serial.print("POS,OR,"); Serial.println(orB2D(outerRoll.getPos()));
		}
		else if (pFunc == "T1") {		// Toggle 1
			if(dirStr == "E")
				pVal = TOG1_ENGAGE;
			else if(dirStr == "D")
				pVal = TOG1_DISENGAGE;
			
			if(!gripper.isAtPos(GRIP_CLOSED))
				_setError("Toggle1 - Grip not closed.");
			else {
				// Serial.print("Going to = "); Serial.print(pVal); Serial.print(" [bit] \n");
				toggle1.goToPos(pVal);
				// Serial.print("Toggle1Pos = "); Serial.print(toggle1.getPos()); Serial.print(" [bit] \n");
			}
		}
		else if (pFunc == "T2") {		// Toggle 2

			if(dirStr == "E")
				pVal = TOG2_ENGAGE;
			else if(dirStr == "D")
				pVal = TOG2_DISENGAGE;
			
			if(!gripper.isAtPos(GRIP_CLOSED))
				_setError("Toggle1 - Grip not closed.");
			else {
				toggle2.goToPos(pVal);
			}
		}
		else if (pFunc == "G") {
			Serial.println("FN: Grip");

			if(!(toggle1.isAtPos(TOG1_DISENGAGE)) &&
			   !(toggle2.isAtPos(TOG2_DISENGAGE))) {
				_setError("Grip - Both toggles engaged.");
			}
			else {
				if(dirStr == "C")
					pVal = GRIP_CLOSED;
				else if(dirStr == "O")
					pVal = GRIP_OPEN;
					
				if(!gripper.goToPos(pVal))
					_setError("G - move failed");
			}
		}
		else if (pFunc == "N") {
			Serial.println("FN: GripNeedle");
			bool toTog1;
			
			if(toggle1.isAtPos(TOG1_ENGAGE))
				toTog1 = false;
			else if(toggle2.isAtPos(TOG2_ENGAGE))
				toTog1 = true;
			else if(abs(toggle1.getPos() - TOG1_ENGAGE) < abs(toggle2.getPos() - TOG2_ENGAGE))
				toTog1 = false;
			else
				toTog1 = true;
					
			if(dirStr == "T"){

				Serial.println("close");
				if(!gripper.isAtPos(GRIP_CLOSED)){
					_setError("Toggle - Gripper must be closed");
					return FAIL;
				}
				Serial.println("t1c");
				if(!toggle1.goToPos(TOG1_ENGAGE)){
					_setError("Toggle - T1 failed to engage");
					return FAIL;
				}
				Serial.println("t2c");
				if(!toggle2.goToPos(TOG2_ENGAGE)){
					_setError("Toggle - T2 failed to engage");
					return FAIL;
				}
				
				Serial.println("dhg,c");
				if(!toTog1) {
					if(!toggle1.goToPos(TOG1_DISENGAGE)){
						_setError("Toggle - T1 failed to disengage");
						return FAIL;
					}
				}
				else {
					if(!toggle2.goToPos(TOG2_DISENGAGE)){
						_setError("Toggle - T2 failed to disengage");
						return FAIL;
					}
				}
			}
			else if(dirStr == "D"){
				if(!gripper.isAtPos(GRIP_CLOSED)){
					_setError("Drop - Gripper must be closed");
					return FAIL;
				}
				if(!toggle1.goToPos(TOG1_DISENGAGE)){
					_setError("Drop - T1 failed to disengage");
					return FAIL;
				}
				if(!toggle2.goToPos(TOG2_DISENGAGE)){
					_setError("Drop - T2 failed to disengage");
					return FAIL;
				}
				if(!gripper.goToPos(GRIP_OPEN)){
					_setError("Drop - Grip failed to open");
					return FAIL;
				}
			}
			else {
			  _setError("N - Dir Param: {T,F,L}");
			}
		}
		else if(pFunc == "C"){
			int retVal = -1;

			if(dirStr == "P")
				retVal = pB2D(pitch.getPos());
			else if(dirStr == "W")
				retVal = wrB2D(wristRoll.getPos());
			else if(dirStr == "O")
				retVal = orB2D(outerRoll.getPos());
			else if(dirStr == "G")
				if(gripper.isAtPos(GRIP_CLOSED))
					retVal = 1;
				else if(gripper.isAtPos(GRIP_OPEN))
					retVal = 2;	
			else if(dirStr == "N") {
				if(toggle1.isAtPos(TOG1_ENGAGE))
					retVal = 1;
				else if(toggle2.isAtPos(TOG2_ENGAGE))
					retVal = 2;	
                        }
                        else if(dirStr == "A") {
                           Serial.print("POS,P,"); Serial.println(pB2D(pitch.getPos()));
                           Serial.print("POS,O,"); Serial.println(orB2D(outerRoll.getPos()));
                           Serial.print("POS,W,"); Serial.println(wrB2D(wristRoll.getPos()));
			}
			
			Serial.print("pos,"); Serial.print(dirStr); Serial.print(","); Serial.println(retVal);
		}
	}
	else
  		_setError("Invalid function parameter. {P,WR,OR,T1,T2,G,N}");

	return !isError();

}

