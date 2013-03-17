#include "Constants.h"
#include "LinearActuator.h"
#include "StepperMotor.h"

class FYDPMenu
{
  public:
    FYDPMenu();
    void resetMenu();
	boolean inputReady();
	boolean cmdReady();  
	boolean isError();
	String 	getError();
	int getNumParams();  
	
    boolean handleInput(String pFunc, String pDir, String pValue);
    boolean addChar(char inChar);
    boolean nxtParam();
    boolean doneCmd();
    
    
    String getParam(int p);

  private:
    void _setError(String errMsg);

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
};
