#include "Constants.h"
#include "FYDPMenu.h"

FYDPMenu menu;

void setup()
{     
	//Set baud rate to 57600
	// Serial.begin(4800);
	Serial.begin(57600);

	//Define pin mode and set default valyes for common signals
	pinMode(LIN_DIR_PIN, OUTPUT);  
	digitalWrite(LIN_DIR_PIN, LOW);

	pinMode(STEP_DIR, OUTPUT);  
	digitalWrite(STEP_DIR, LOW);  
	
	pinMode(STEP_NSLEEP, OUTPUT);
	digitalWrite(STEP_NSLEEP, LOW);

	menu = FYDPMenu();

	Serial.println("\t Robotic Suturing Controller");
	delay(500);
}

//Perform a soft reset
void softReset()
{
  Serial.println("RESET");
  asm volatile ("  jmp 0"); 
}

//Read in serial command and handle it in menu (FYDPMenu object)
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

//Main loop
void loop()
{  
  //See what's happening with the serial connection
  checkSerial();
  
  if(menu.isError()) {
    menuError();
    menu.resetMenu();
  }
  
  else if (menu.cmdReady()) {
//    Serial.println(menu.getParam(0) + "," + menu.getParam(1) + "," + menu.getParam(2));
    
    //Handle new command. True implies error
    if(menu.handleInput(menu.getParam(0), menu.getParam(1), menu.getParam(2)) == FAIL)
      menuError();

    menu.resetMenu();
  }

  delay(1000);   
}

//Fire upon error processing serial input
void menuError()                
{
    Serial.println(menu.getError()); 
    delay(100);                  //Wait to see if any more characters are arriving
    while (Serial.read() >= 0);  //Flush buffer
}

void printWelcome()
{
    Serial.println("\n\nPlease enter command: "); 
    Serial.print(">");
}
