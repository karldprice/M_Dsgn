#ifndef helper_h
#define helper_h

#include "Arduino.h"
#include "Constants.h"

int amod(int a, int b);

int pB2D (int bits);
int pD2B (int degs);
int wrB2D (int bits);
int wrD2B (int degs);
int orB2D (int bits);
int orD2B (int degs);

// void debug(String message);
// void debugln(String message);
// void debug(char* message);
// void debugln(char* message);
// void debug(int message);
// void debugln(int message);

#endif
