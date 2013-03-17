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
    bool goToPos(int desPosBit);
	bool goToPos(int desPosBit, bool isCW);

  private:
    void _performStep(int stepInterval);
	bool _isAtPos(int curPosBit, int desPosBit);
	bool _limitReached(int curPosBit, bool isCW);

    int _posPin; 
    int _stepPin;  
	int _encMin;
	int _encMax;
	
	bool _isPitch;
};

#endif
