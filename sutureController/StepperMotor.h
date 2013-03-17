#ifndef StepperMotor_h
#define StepperMotor_h

#include "Arduino.h"
#include "Constants.h"
#include <math.h>

/****** ASSUME ALL POSITIONS IN BITS!!!!!!!!!!!! *****/

class StepperMotor
{  
  public:
    StepperMotor();
    StepperMotor(int posPin, int stepPin, int encMin, int encMax);
	
    int getPos();           //return position in bits
	bool isValidPos(int posBit);
	int limitPos(int posBit);
	// int performPositionChecks(int desAngBit);
	
    bool goToPos(int desPosBit);
	bool goToPos(int desPosBit, bool isCW);
    // void moveBySteps(int numSteps, boolean CW);
	
  private:
    // void spinCW(int curAngle, int desAngle);
    // void spinCCW(int curAngle, int desAngle);
    
    void _performStep(int stepInterval);
	bool _isAtPos(int curPosBit, int desPosBit);
	bool _limitReached(int curPosBit, bool isCW);
    // void digitalMuxSelect(int s);
    // void analogMuxSelect(int s);
    
    int _posPin; 
    int _stepPin;  
	int _encMin;
	int _encMax;
	
	bool _isPitch;
};

#endif
