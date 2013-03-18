#include "Constants.h"
#include "FYDPMenu.h"
// #include "MemoryFree.h"

FYDPMenu menu;
// int inpt;

void setup()
{     
	// Serial.begin(4800);
	Serial.begin(57600);

	pinMode(LIN_DIR_PIN, OUTPUT);  
	digitalWrite(LIN_DIR_PIN, LOW);

	pinMode(STEP_DIR, OUTPUT);  
	digitalWrite(STEP_DIR, LOW);  
	
	pinMode(STEP_NSLEEP, OUTPUT);
	digitalWrite(STEP_NSLEEP, LOW);

	menu = FYDPMenu();

	Serial.println("SETUP - SETUP - SETUP - SETUP - SETUP - SETUP");

	delay(500);

	printWelcome();
}

void softReset()
{
  Serial.println("RESET");
  asm volatile ("  jmp 0"); 
}

void checkSerial()
{
  while (menu.inputReady() && Serial.available()) {
    char inChar = (char)Serial.read(); 

    if(inChar == '*') {
      softReset();
    }
    else if (inChar == ',') {          //Delimiter character
      if(!menu.nxtParam())
        menuError();
    }
    else if (inChar == '\n') {    //Termination character
      if(!menu.doneCmd())
        menuError();
    }
    else {                        //Any other character
      if(!menu.addChar(inChar))
        menuError();
    }
  }
}

void loop()
{  
  checkSerial();
  
  if(menu.isError()) {
    menuError();
    menu.resetMenu();
  }
  else if (menu.cmdReady()) {
    Serial.println(menu.getParam(0) + "," + menu.getParam(1) + "," + menu.getParam(2));
    
    //Handle new command. True implies error
    if(menu.handleInput(menu.getParam(0), menu.getParam(1), menu.getParam(2)) == FAIL)
      menuError();

    menu.resetMenu();
    printWelcome();
  }

  delay(1000);   

	// Serial.print("freeMemory()=");
    // Serial.println(freeMemory());  
}

void menuError()                //Fire upon error processing serial input
{
    Serial.println(menu.getError()); 
    delay(100);                 //Wait to see if any more characters are arriving
    while (Serial.read() >= 0);  //Flush buffer
}

void printWelcome()
{
  if(DEBUG_MODE) { 
    Serial.println("\n\nPlease enter [P1, P2, P3]: P1 = {P,WR,OR,T1,T2,G,N,V}; P2 = {A, I}; P3 = {#}"); 
    Serial.print(">");
  }    
  else { 
    Serial.println("\n\nPlease select a function: {Pitch (p), Wrist Roll (wr), Outer Roll (or), or Toggle Needle (t)}, {Desired Angle (if necessary)}"); 
  }
}