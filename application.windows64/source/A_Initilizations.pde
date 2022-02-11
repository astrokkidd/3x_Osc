//Initialize all osc for each note
SinOsc sinC11;
SinOsc sinCs1;
SinOsc sinD1;
SinOsc sinDs1;
SinOsc sinE1;
SinOsc sinF1;
SinOsc sinFs1;
SinOsc sinG1;
SinOsc sinGs1;
SinOsc sinA1;
SinOsc sinAs1;
SinOsc sinB1;
SinOsc sinC21;

SinOsc sinC12;
SinOsc sinCs2;
SinOsc sinD2;
SinOsc sinDs2;
SinOsc sinE2;
SinOsc sinF2;
SinOsc sinFs2;
SinOsc sinG2;
SinOsc sinGs2;
SinOsc sinA2;
SinOsc sinAs2;
SinOsc sinB2;
SinOsc sinC22;

SinOsc sinC13;
SinOsc sinCs3;
SinOsc sinD3;
SinOsc sinDs3;
SinOsc sinE3;
SinOsc sinF3;
SinOsc sinFs3;
SinOsc sinG3;
SinOsc sinGs3;
SinOsc sinA3;
SinOsc sinAs3;
SinOsc sinB3;
SinOsc sinC23;



SqrOsc sqrC11;
SqrOsc sqrCs1;
SqrOsc sqrD1;
SqrOsc sqrDs1;
SqrOsc sqrE1;
SqrOsc sqrF1;
SqrOsc sqrFs1;
SqrOsc sqrG1;
SqrOsc sqrGs1;
SqrOsc sqrA1;
SqrOsc sqrAs1;
SqrOsc sqrB1;
SqrOsc sqrC21;

SqrOsc sqrC12;
SqrOsc sqrCs2;
SqrOsc sqrD2;
SqrOsc sqrDs2;
SqrOsc sqrE2;
SqrOsc sqrF2;
SqrOsc sqrFs2;
SqrOsc sqrG2;
SqrOsc sqrGs2;
SqrOsc sqrA2;
SqrOsc sqrAs2;
SqrOsc sqrB2;
SqrOsc sqrC22;

SqrOsc sqrC13;
SqrOsc sqrCs3;
SqrOsc sqrD3;
SqrOsc sqrDs3;
SqrOsc sqrE3;
SqrOsc sqrF3;
SqrOsc sqrFs3;
SqrOsc sqrG3;
SqrOsc sqrGs3;
SqrOsc sqrA3;
SqrOsc sqrAs3;
SqrOsc sqrB3;
SqrOsc sqrC23;



SawOsc sawC11;
SawOsc sawCs1;
SawOsc sawD1;
SawOsc sawDs1;
SawOsc sawE1;
SawOsc sawF1;
SawOsc sawFs1;
SawOsc sawG1;
SawOsc sawGs1;
SawOsc sawA1;
SawOsc sawAs1;
SawOsc sawB1;
SawOsc sawC21;

SawOsc sawC12;
SawOsc sawCs2;
SawOsc sawD2;
SawOsc sawDs2;
SawOsc sawE2;
SawOsc sawF2;
SawOsc sawFs2;
SawOsc sawG2;
SawOsc sawGs2;
SawOsc sawA2;
SawOsc sawAs2;
SawOsc sawB2;
SawOsc sawC22;

SawOsc sawC13;
SawOsc sawCs3;
SawOsc sawD3;
SawOsc sawDs3;
SawOsc sawE3;
SawOsc sawF3;
SawOsc sawFs3;
SawOsc sawG3;
SawOsc sawGs3;
SawOsc sawA3;
SawOsc sawAs3;
SawOsc sawB3;
SawOsc sawC23;

//booleans that determine which wave is used
boolean Sine1 = true;
boolean Sine2 = true;
boolean Sine3 = true;

boolean Square1 = false;
boolean Square2 = false;
boolean Square3 = false;

boolean saw1 = false;
boolean saw2 = false;
boolean saw3 = false;

//booleans that determine if mouse is over wave buttons
boolean overSine1 = false;
boolean overSine2 = false;
boolean overSine3 = false;

boolean overSquare1 = false;
boolean overSquare2 = false;
boolean overSquare3 = false;

boolean oversaw1 = false;
boolean oversaw2 = false;
boolean oversaw3 = false;

//booleans that determine if mouse is over cent buttons
boolean over1Up = false;
boolean over1Down = false;

boolean over2Up = false;
boolean over2Down = false;

boolean over3Up = false;
boolean over3Down = false;

//boolean that determines if mouse is over volume slider
boolean overVol = false;

//color for sine lights
color sine1Color = color(0, 255, 0);
color sine2Color = color(0, 255, 0);
color sine3Color = color(0, 255, 0);
//color for square lights
color square1Color = color(50);
color square2Color = color(50);
color square3Color = color(50);
//color for saw lights
color saw1Color = color(50);
color saw2Color = color(50);
color saw3Color = color(50);

//initialize fonts 
PFont numFont;
PFont nameFont;
//Initialize wave pictures
PImage sinePng;
PImage squarePng;
PImage sawPng;

// initialize each note frequency
float C1hz1 = 261.63;
float Cshz1 = 277.18;
float Dhz1 = 293.66;
float Dshz1 = 311.13;
float Ehz1 = 329.63;
float Fhz1 = 349.23;
float Fshz1 = 369.99;
float Ghz1 = 392;
float Gshz1 = 415.30;
float Ahz1 = 440;
float Ashz1 = 466.16;
float Bhz1 = 493.88;
float C2hz1 = 523.25;

float C1hz2 = 261.63;
float Cshz2 = 277.18;
float Dhz2 = 293.66;
float Dshz2 = 311.13;
float Ehz2 = 329.63;
float Fhz2 = 349.23;
float Fshz2 = 369.99;
float Ghz2 = 392;
float Gshz2 = 415.30;
float Ahz2 = 440;
float Ashz2 = 466.16;
float Bhz2 = 493.88;
float C2hz2 = 523.25;

float C1hz3 = 261.63;
float Cshz3 = 277.18;
float Dhz3 = 293.66;
float Dshz3 = 311.13;
float Ehz3 = 329.63;
float Fhz3 = 349.23;
float Fshz3 = 369.99;
float Ghz3 = 392;
float Gshz3 = 415.30;
float Ahz3 = 440;
float Ashz3 = 466.16;
float Bhz3 = 493.88;
float C2hz3 = 523.25;

//initialize each cent number
int cent1 = 0;
int cent2 = 0;
int cent3 = 0;
//Slider Y
int volY = 240;
//Total sound
Sound synth;

//determine if mouse is over a circle button
boolean overCircle(int x, float y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
//determine if mouse is over a rect button
boolean overRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && 
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
