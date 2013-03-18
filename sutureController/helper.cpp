#include "helper.h"

//Absolute modulus
int amod(int a, int b)
{
   int ret = a % b;
   if(ret < 0)
     ret += b;
   return ret;
}

int pB2D (int bits) {
	return (bits - PITCH_STRAIGHT) * PITCH_BIT_TO_DEG + PITCH_STRAIGHT_ANG;
}
int pD2B (int degs) {
	return PITCH_STRAIGHT + (degs - PITCH_STRAIGHT_ANG) / PITCH_BIT_TO_DEG;
}

int wrB2D (int bits){
int degs = (bits - ROLL_MIN)*ROLL_BIT_TO_DEG - ROLL_W_OFFSET + ROLL_MIN_ANGLE;
return abs(degs);
//	int degs = bits*ROLL_BIT_TO_DEG;
//	return degs;
}
int wrD2B (int degs){
//        int bits = ROLL_MIN + (degs - ROLL_MIN_ANGLE + ROLL_W_OFFSET) / ROLL_BIT_TO_DEG;
//        return amod(bits,ROLL_MAX);
	int bits = degs / ROLL_BIT_TO_DEG;
	return bits;
}

int orB2D (int bits){
//        int degs = (bits - ROLL_MAX)*ROLL_BIT_TO_DEG + ROLL_O_OFFSET - ROLL_MIN_ANGLE;
//        return abs(degs);
	int degs = bits*ROLL_BIT_TO_DEG;
	return degs;
}
int orD2B (int degs){
//        int bits = ROLL_MAX - (degs - ROLL_MIN_ANGLE + ROLL_O_OFFSET) / ROLL_BIT_TO_DEG;
//        return amod(bits,ROLL_MAX);		//Absolute modulus
	int bits = degs / ROLL_BIT_TO_DEG;
	return bits;		//Absolute modulus
}

// void debug(String message) { 
	// Serial.print(message); 
// }
// void debugln(String message) { 
	// Serial.println(message); 
// }

// void debug(char* message)
// { debug((String)message); }
// void debugln(char* message)
// { debugln((String)message); }

// void debug(int message)
// { debug((String)message); }
// void debugln(int message)
// { debugln((String)message); }
