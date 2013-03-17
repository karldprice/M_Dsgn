#ifndef LinearActuator_h
#define LinearActuator_h

#include "Arduino.h"

/****** ASSUME ALL POSITIONS IN BITS!!!!!!!!!!!! *****/

class LinearActuator
{  
  public:
    LinearActuator();
    LinearActuator(int enPin, int posPin, int encMin, int encMax);
    int getPos();           //return position in bits
	int limitPos(int posBit);
	bool isValidPos(int posBit);
    bool goToPos(int desPosBit);
	bool isAtPos(int testPosBit);
    // void moveBySteps(int numSteps, boolean extend);
	
  private:
	bool _isAtPos(int curPosBit, int desPosBit);
	bool _limitReached(int curPosBit, bool extend);
    // void extendAct(int curPos, int desPos, int limit);
    // void retractAct(int curPos, int desPos, int limit);
    // void muxSelect(int s);
    
    int _enPin;
    int _posPin;    
	int _encMin;
	int _encMax;
	bool _isGripper;
};

#endif
