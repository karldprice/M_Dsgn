#include "Constants.h"
#include "LinearActuator.h"
#include "StepperMotor.h"

// #include "ToggleGrip.h"
// #include "Pitch.h"
// #include "Roll.h"

class FYDPMenu
{
  public:
    FYDPMenu();
    void resetMenu();
	
	boolean inputReady();
	boolean cmdReady();  
	boolean isError();
	String 	getError();
	
    boolean handleInput(String pFunc, String pDir, String pValue);

    
    boolean addChar(char inChar);
    boolean nxtParam();
    boolean doneCmd();
    
    int getNumParams();  
    String getParam(int p);

  private:
    void _setError(String errMsg);
    void _moveInc(int id, int pVal);
    void _moveAbs(int id, int pVal);   
	
    boolean _error;
    String _errorStr;
    boolean _commandReady;
    int _pIdx;
    String _param[3];
    boolean _worked;
	
	LinearActuator toggle1;
	LinearActuator toggle2;
	LinearActuator gripper;
	
	StepperMotor pitch;
	StepperMotor outerRoll;
	StepperMotor wristRoll;
	
    // ToggleGrip _toggleGrip;
    // Pitch _pitch;
    // Roll _outerRoll;
    // Roll _wristRoll;
};
