#ifndef Constants_h
#define Constants_h

#include "Arduino.h"
#include "helper.h"

/********************** STANDARD BOOLEANS ****************************/
const boolean DEBUG_MODE = true;
const boolean OPEN_GRIP  = false; 
const boolean CLOSE_GRIP = true; 
const boolean EXTEND     = true;  
const boolean RETRACT    = false;

const boolean FAIL       = false;
const boolean PASS       = true;

/********************** PRINT CONSTANTS ****************************/


/*********************** POS FEEDBACK ********************************/
const int PITCH   = 0;
const int W_ROLL  = 1;
const int O_ROLL  = 2;
const int T1 	  = 3;
const int T2 	  = 4;
const int GRIP 	  = 5;

//const int MAX_REACHED_COUNT = 50;
const int NED_TOL       = 5; 
const int GRIP_TOL      = 5;
const int STEP_TOL      = 5; //in case encoder skips over the one required value

const int STEP_NSLEEP   = 8;
const int STEP_DIR      = 9;

const int TIMEOUT		= 30000;

/********************** STEPPER MOTORS *******************************/  
const int STEP_DELAY = 5;

/************************** PITCH ************************************/ 
const int PITCH_POS_PIN         = A3;  //Stepper #1
const int PITCH_STEP_PIN        = 11;  //Stepper #1
const int PITCH_STRAIGHT		= 440;  	//fully straight position
const int PITCH_CURLED          = 700;   //fully curled position      
const int PITCH_STRAIGHT_ANG    = 6;  	//fully straight angle (for conversion)
const int PITCH_CURLED_ANG      = 77;   //fully curled angle (for conversion)

const double PITCH_BIT_TO_DEG = float((PITCH_CURLED_ANG - PITCH_STRAIGHT_ANG))/(PITCH_CURLED - PITCH_STRAIGHT);

/************************** ROLL *************************************/ 
const int ROLL_W_POS_PIN    = A5;  	//Stepper #3
const int ROLL_W_STEP_PIN   = 12;  	//Stepper #3
const bool ROLL_W_CW 	  	= true;
const int ROLL_W_OFFSET	 	= -15;	//Angular offset

const int ROLL_O_POS_PIN    = A4;  	//Stepper #2  
const int ROLL_O_STEP_PIN   = 10;  	//Stepper #2
const bool ROLL_O_CW 	  	= true;
const int ROLL_O_OFFSET	 	= 160;	//Angular offset

const int ROLL_MIN          = 0;          
const int ROLL_MAX          = 1023;

const int ROLL_MIN_ANGLE    = 0;
const int ROLL_MAX_ANGLE    = 360;
const double ROLL_BIT_TO_DEG = float((ROLL_MAX_ANGLE - ROLL_MIN_ANGLE))/(ROLL_MAX - ROLL_MIN);


/********************* TOGGLE LIN ACTS *******************************/ 
const int TOG1_EN_PIN        = 6;
const int TOG1_POS_PIN       = A2;
const int TOG1_ENGAGE        = 410;
const int TOG1_DISENGAGE     = 319;

const int TOG2_EN_PIN        = 5;
const int TOG2_POS_PIN       = A0;
const int TOG2_ENGAGE        = 398;
const int TOG2_DISENGAGE     = 290;

const int LIN_DUTY_ON	 	= 5;	
const int LIN_DUTY_OFF	 	= 50;	

const int LIN_DIR_PIN        = 7;
const double TOG_BIT_TO_MM   = 20.0/983;

/************************ GRIPPER **********************************/ 
const int GRIP_EN_PIN        = 4;
const int GRIP_POS_PIN       = A1;   	//#3 - big pops
const int GRIP_OPEN       	 = 155; 	//160
const int GRIP_CLOSED        = 39; 

const int GRIP_DUTY_ON	 	 = 10;	
const int GRIP_DUTY_OFF	 	 = 10;	

const double GRIP_BIT_TO_MM  = 30.0/970;

#endif
