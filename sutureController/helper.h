#ifndef helper_h
#define helper_h

#include "Arduino.h"
#include "Constants.h"

//HELPER FUNCTIONS

int amod(int a, int b);

int pB2D (int bits);
int pD2B (int degs);
int wrB2D (int bits);
int wrD2B (int degs);
int orB2D (int bits);
int orD2B (int degs);

#endif
