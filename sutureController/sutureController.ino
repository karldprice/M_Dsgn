#include "Constants.h"
#include "FYDPMenu.h"

FYDPMenu menu;
// int inpt;

void setup()
{     
	Serial.begin(9600);

	menu = FYDPMenu();

	pinMode(LIN_DIR_PIN, OUTPUT);  
	digitalWrite(LIN_DIR_PIN, LOW);

	pinMode(STEP_DIR, OUTPUT);  
	digitalWrite(STEP_DIR, LOW);  
	
	pinMode(STEP_NSLEEP, OUTPUT);
	digitalWrite(STEP_NSLEEP, LOW);


	debugln("SETUP - SETUP - SETUP - SETUP - SETUP - SETUP");

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
    debugln(menu.getParam(0) + "," + menu.getParam(1) + "," + menu.getParam(2));
    
    //Handle new command. True implies error
    if(menu.handleInput(menu.getParam(0), menu.getParam(1), menu.getParam(2)) == FAIL)
      menuError();

    menu.resetMenu();
    printWelcome();
  }
  // debug(".");
  
  Serial.flush();
  
  delay(1000);                  
}

void menuError()                //Fire upon error processing serial input
{
    debugln(menu.getError()); 
    delay(100);                 //Wait to see if any more characters are arriving
    while (Serial.read() >= 0);  //Flush buffer
}

void printWelcome()
{
  if(DEBUG_MODE) { 
    debugln("\n\nPlease enter [P1, P2, P3]: P1 = {P,WR,OR,T1,T2,G,N,V}; P2 = {A, I}; P3 = {#}"); 
    debug(">");
  }    
  else { 
    debugln("\n\nPlease select a function: {Pitch (p), Wrist Roll (wr), Outer Roll (or), or Toggle Needle (t)}, {Desired Angle (if necessary)}"); 
  }
}

void debug(String message) { 
	Serial.print(message); 
}
void debugln(String message) { 
	Serial.println(message); 
}

void debug(char* message)
{ debug((String)message); }
void debugln(char* message)
{ debugln((String)message); }

void debug(int message)
{ debug((String)message); }
void debugln(int message)
{ debugln((String)message); }
