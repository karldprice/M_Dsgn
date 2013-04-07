#include "helper.h"

/*	
	Absolute modulus
*/
int amod(int a, int b)
{
   int ret = a % b;
   if(ret < 0)
     ret += b;
   return ret;
}

/*	
	Pitch: bit to degree conversion
*/
int pB2D (int bits) {
	return (bits - PITCH_STRAIGHT) * PITCH_BIT_TO_DEG + PITCH_STRAIGHT_ANG;
}

/*	
	Pitch: degree to bit conversion
*/
int pD2B (int degs) {
	return PITCH_STRAIGHT + (degs - PITCH_STRAIGHT_ANG) / PITCH_BIT_TO_DEG;
}

/*	
	Wrist Roll: bit to degree conversion
*/
int wrB2D (int bits){
//  int degs = (bits - ROLL_MIN)*ROLL_BIT_TO_DEG - ROLL_W_OFFSET + ROLL_MIN_ANGLE;
//  return abs(degs);
	return bits*ROLL_BIT_TO_DEG;
}

/*	
	Wrist Roll: degree to bit conversion
*/
int wrD2B (int degs){
//        int bits = ROLL_MIN + (degs - ROLL_MIN_ANGLE + ROLL_W_OFFSET) / ROLL_BIT_TO_DEG;
//        return amod(bits,ROLL_MAX);
	return degs / ROLL_BIT_TO_DEG;
}

/*	
	Outer Roll: bit to degree conversion
*/
int orB2D (int bits){
//        int degs = (bits - ROLL_MAX)*ROLL_BIT_TO_DEG + ROLL_O_OFFSET - ROLL_MIN_ANGLE;
//        return abs(degs);
	return = bits*ROLL_BIT_TO_DEG;
}

/*	
	Outer Roll: degree to bit conversion
*/
int orD2B (int degs){
//        int bits = ROLL_MAX - (degs - ROLL_MIN_ANGLE + ROLL_O_OFFSET) / ROLL_BIT_TO_DEG;
//        return amod(bits,ROLL_MAX);		//Absolute modulus
	return degs / ROLL_BIT_TO_DEG;
}
