import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.sound.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ThreeX_Osc extends PApplet {



public void setup() {
  
  //load fonts and PNGs
  numFont = loadFont("Ebrima-Bold-48.vlw");
  nameFont = loadFont("BookmanOldStyle-BoldItalic-20.vlw");

  sinePng = loadImage("sinewave.png");
  squarePng = loadImage("squarewave.png");
  sawPng = loadImage("sawwave.png");
  //load osc
  oscillators();
}

public void draw() {
  //set title and background
  background(42, 157, 143);
   surface.setTitle("3x Oscillator " /*+ mouseX + ", " +mouseY*/  );
  //call each function
  display();
  press();
  update(mouseX, mouseY);
  findCent();
  volume();
}
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
int sine1Color = color(0, 255, 0);
int sine2Color = color(0, 255, 0);
int sine3Color = color(0, 255, 0);
//color for square lights
int square1Color = color(50);
int square2Color = color(50);
int square3Color = color(50);
//color for saw lights
int saw1Color = color(50);
int saw2Color = color(50);
int saw3Color = color(50);

//initialize fonts 
PFont numFont;
PFont nameFont;
//Initialize wave pictures
PImage sinePng;
PImage squarePng;
PImage sawPng;

// initialize each note frequency
float C1hz1 = 261.63f;
float Cshz1 = 277.18f;
float Dhz1 = 293.66f;
float Dshz1 = 311.13f;
float Ehz1 = 329.63f;
float Fhz1 = 349.23f;
float Fshz1 = 369.99f;
float Ghz1 = 392;
float Gshz1 = 415.30f;
float Ahz1 = 440;
float Ashz1 = 466.16f;
float Bhz1 = 493.88f;
float C2hz1 = 523.25f;

float C1hz2 = 261.63f;
float Cshz2 = 277.18f;
float Dhz2 = 293.66f;
float Dshz2 = 311.13f;
float Ehz2 = 329.63f;
float Fhz2 = 349.23f;
float Fshz2 = 369.99f;
float Ghz2 = 392;
float Gshz2 = 415.30f;
float Ahz2 = 440;
float Ashz2 = 466.16f;
float Bhz2 = 493.88f;
float C2hz2 = 523.25f;

float C1hz3 = 261.63f;
float Cshz3 = 277.18f;
float Dhz3 = 293.66f;
float Dshz3 = 311.13f;
float Ehz3 = 329.63f;
float Fhz3 = 349.23f;
float Fshz3 = 369.99f;
float Ghz3 = 392;
float Gshz3 = 415.30f;
float Ahz3 = 440;
float Ashz3 = 466.16f;
float Bhz3 = 493.88f;
float C2hz3 = 523.25f;

//initialize each cent number
int cent1 = 0;
int cent2 = 0;
int cent3 = 0;
//Slider Y
int volY = 240;
//Total sound
Sound synth;

//determine if mouse is over a circle button
public boolean overCircle(int x, float y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
//determine if mouse is over a rect button
public boolean overRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && 
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
//function to find cent value
public float cent(float fq, int cnt) {
  float newFreq = fq + ((fq * 0.01059f)*cnt);
  return newFreq;
}
//find the  cent value for each note
public void findCent() {
  C1hz1 = cent(261.63f, cent1);
  Cshz1 = cent(277.18f, cent1);
  Dhz1 = cent(293.66f, cent1);
  Dshz1 = cent(311.13f, cent1);
  Ehz1 = cent(329.63f, cent1);
  Fhz1 = cent(349.23f, cent1);
  Fshz1 = cent(369.99f, cent1);
  Ghz1 = cent(392, cent1);
  Gshz1 = cent(415.30f, cent1);
  Ahz1 = cent(440, cent1);
  Ashz1 = cent(466.16f, cent1);
  Bhz1 = cent(493.88f, cent1);
  C2hz1 = cent(523.25f, cent1);

  C1hz2 = cent(261.63f, cent2);
  Cshz2 = cent(277.18f, cent2);
  Dhz2 = cent(293.66f, cent2);
  Dshz2 = cent(311.13f, cent2);
  Ehz2 = cent(329.63f, cent2);
  Fhz2 = cent(349.23f, cent2);
  Fshz2 = cent(369.99f, cent2);
  Ghz2 = cent(392, cent2);
  Gshz2 = cent(415.30f, cent2);
  Ahz2 = cent(440, cent2);
  Ashz2 = cent(466.16f, cent2);
  Bhz2 = cent(493.88f, cent2);
  C2hz2 = cent(523.25f, cent2);

  C1hz3 = cent(261.63f, cent3);
  Cshz3 = cent(277.18f, cent3);
  Dhz3 = cent(293.66f, cent3);
  Dshz3 = cent(311.13f, cent3);
  Ehz3 = cent(329.63f, cent3);
  Fhz3 = cent(349.23f, cent3);
  Fshz3 = cent(369.99f, cent3);
  Ghz3 = cent(392, cent3);
  Gshz3 = cent(415.30f, cent3);
  Ahz3 = cent(440, cent3);
  Ashz3 = cent(466.16f, cent3);
  Bhz3 = cent(493.88f, cent3);
  C2hz3 = cent(523.25f, cent3);
}
public void display() {
  //Red, Orange, and Yellow rects
  stroke(231, 111, 81);
  fill(231, 111, 81);
  rect(0, 0, 450, 66.6f);
  stroke(244, 162, 97);
  fill(244, 162, 97);
  rect(0, 66.6f, 450, 66.6f);
  stroke(233, 196, 106);
  fill(233, 196, 106);
  rect(0, 133.3f, 450, 66.6f);

  //Osc numbers
  fill(255);
  textFont(numFont);
  text("1", 10, 51.6f);
  text("2", 10, 118.2f);
  text("3", 10, 184.8f);
  //Signature
  stroke(50);
  fill(233, 196, 106);
  textFont(nameFont);
  text("Josiah\nParrott", 350, 230);
  fill(231, 111, 81);
  text("3x Osc", 350, 280);

  fill(150);
  //Sine buttons
  circle(100, 33.3f, 50);
  circle(100, 99.9f, 50);
  circle(100, 166.5f, 50);
  //Square buttons
  circle(200, 33.3f, 50);
  circle(200, 99.9f, 50);
  circle(200, 166.5f, 50);
  //saw buttons
  circle(300, 33.3f, 50);
  circle(300, 99.9f, 50);
  circle(300, 166.5f, 50);

  //Sine PNGs
  image(sinePng, 75, 10, 50, 50);
  image(sinePng, 75, 75, 50, 50);
  image(sinePng, 75, 75+67, 50, 50);
  //Square PNGs
  image(squarePng, 175, 10, 50, 50);
  image(squarePng, 175, 75, 50, 50);
  image(squarePng, 175, 75+67, 50, 50);
  //saw PNGs
  image(sawPng, 275, 12, 50, 45);
  image(sawPng, 275, 78, 50, 45);
  image(sawPng, 275, 75+70, 50, 45);

  //Sine lights
  fill(sine1Color);
  circle(150, 33.3f, 20);
  fill(sine2Color);
  circle(150, 99.9f, 20);
  fill(sine3Color);
  circle(150, 166.5f, 20);
  //Square lights
  fill(square1Color);
  circle(250, 33.3f, 20);
  fill(square2Color);
  circle(250, 99.9f, 20);
  fill(square3Color);
  circle(250, 166.5f, 20);
  //saw lights
  fill(saw1Color);
  circle(350, 33.3f, 20);
  fill(saw2Color);
  circle(350, 99.9f, 20);
  fill(saw3Color);
  circle(350, 166.5f, 20);

  //White keys
  fill(255);  
  noStroke();
  rect(40, 220, 20, 80);
  rect(80, 220, 20, 80);
  rect(120, 220, 20, 80);
  rect(140, 220, 20, 80);
  rect(180, 220, 20, 80);
  rect(220, 220, 20, 80);
  rect(260, 220, 20, 80);

  //Black keys
  noStroke();
  fill(150);
  //White key shade
  rect(40, 220, 20, 10);
  rect(80, 220, 20, 10);
  rect(120, 220, 20, 10);
  rect(140, 220, 20, 10);
  rect(180, 220, 20, 10);
  rect(220, 220, 20, 10);
  rect(260, 220, 20, 10); 

  stroke(0);
  fill(70);
  //Black key base
  rect(60, 220, 20, 80);
  rect(100, 220, 20, 80);
  rect(160, 220, 20, 80);
  rect(200, 220, 20, 80);
  rect(240, 220, 20, 80);

  noStroke();
  fill(0);
  //Black key shade
  rect(60, 220, 20, 10);
  rect(100, 220, 20, 10);
  rect(160, 220, 20, 10);
  rect(200, 220, 20, 10);
  rect(240, 220, 20, 10);
  stroke(0);
  line(140, 220, 140, 300);
  noStroke();
  fill(100);
  //Black key highlights
  quad(65, 290, 75, 290, 80, 300, 60, 300);
  quad(60, 230, 65, 230, 65, 290, 60, 300);

  quad(105, 290, 115, 290, 120, 300, 100, 300);
  quad(100, 230, 105, 230, 105, 290, 100, 300);

  quad(165, 290, 175, 290, 180, 300, 160, 300);
  quad(160, 230, 165, 230, 165, 290, 160, 300);

  quad(205, 290, 215, 290, 220, 300, 200, 300);
  quad(200, 230, 205, 230, 205, 290, 200, 300);

  quad(245, 290, 255, 290, 260, 300, 240, 300);
  quad(240, 230, 245, 230, 245, 290, 240, 300);

  fill(0);
  //Black key right side
  quad(75, 230, 80, 230, 80, 300, 75, 290);
  quad(115, 230, 120, 230, 120, 300, 115, 290);
  quad(175, 230, 180, 230, 180, 300, 175, 290);
  quad(215, 230, 220, 230, 220, 300, 215, 290);
  quad(255, 230, 260, 230, 260, 300, 255, 290);
  //Base of synth shade
  fill(22, 137, 123);
  rect(0, 200, 450, 10);
  rect(37, 220, 3, 240);
  rect(40, 220, 240, 3);

  fill(0);
  //Cent screens
  rect(390, 23.3f, 40, 20);
  rect(390, 89.9f, 40, 20);
  rect(390, 156.5f, 40, 20);

  //Cent buttons
  fill(0);
  triangle(400, 18.3f, 410, 8.3f, 420, 18.3f);
  triangle(400, 84.9f, 410, 74.9f, 420, 84.9f);
  triangle(400, 151.5f, 410, 141.5f, 420, 151.5f);
  triangle(400, 48.3f, 420, 48.3f, 410, 58.3f);
  triangle(400, 114.9f, 420, 114.9f, 410, 124.9f);
  triangle(400, 181.5f, 420, 181.5f, 410, 191.5f);

  //Cent numbers
  String dispCent1 = String.valueOf(cent1);
  String dispCent2 = String.valueOf(cent2);
  String dispCent3 = String.valueOf(cent3);
  fill(255);
  text(dispCent1, 395, 41.3f);
  text(dispCent2, 395, 107.9f);
  text(dispCent3, 395, 174.5f);
  //Slider and line
  fill(0);
  rect(310, 220, 2, 70);
  slider(291, volY, 40, 20);
}
//Declare each note as an osc

public void oscillators() {
  sinC11 = new SinOsc(this);
  sinCs1 = new SinOsc(this);
  sinD1 = new SinOsc(this);
  sinDs1 = new SinOsc(this);
  sinE1 = new SinOsc(this);
  sinF1 = new SinOsc(this);
  sinFs1 = new SinOsc(this);
  sinG1 = new SinOsc(this);
  sinGs1 = new SinOsc(this);
  sinA1 = new SinOsc(this);
  sinAs1 = new SinOsc(this);
  sinB1 = new SinOsc(this);
  sinC21 = new SinOsc(this);

  sinC12 = new SinOsc(this);
  sinCs2 = new SinOsc(this);
  sinD2 = new SinOsc(this);
  sinDs2 = new SinOsc(this);
  sinE2 = new SinOsc(this);
  sinF2 = new SinOsc(this);
  sinFs2 = new SinOsc(this); 
  sinG2 = new SinOsc(this);
  sinGs2 = new SinOsc(this);
  sinA2 = new SinOsc(this);
  sinAs2 = new SinOsc(this);
  sinB2 = new SinOsc(this);
  sinC22 = new SinOsc(this);

  sinC13 = new SinOsc(this);
  sinCs3 = new SinOsc(this);
  sinD3 = new SinOsc(this);
  sinDs3 = new SinOsc(this);
  sinE3 = new SinOsc(this);
  sinF3 = new SinOsc(this);
  sinFs3 = new SinOsc(this);
  sinG3 = new SinOsc(this);
  sinGs3 = new SinOsc(this);
  sinA3 = new SinOsc(this);
  sinAs3 = new SinOsc(this);
  sinB3 = new SinOsc(this);
  sinC23 = new SinOsc(this);



  sqrC11 = new SqrOsc(this);
  sqrCs1 = new SqrOsc(this);
  sqrD1 = new SqrOsc(this);
  sqrDs1 = new SqrOsc(this);
  sqrE1 = new SqrOsc(this);
  sqrF1 = new SqrOsc(this);
  sqrFs1 = new SqrOsc(this);
  sqrG1 = new SqrOsc(this);
  sqrGs1 = new SqrOsc(this);
  sqrA1 = new SqrOsc(this);
  sqrAs1 = new SqrOsc(this);
  sqrB1 = new SqrOsc(this);
  sqrC21 = new SqrOsc(this);

  sqrC12 = new SqrOsc(this);
  sqrCs2 = new SqrOsc(this);
  sqrD2 = new SqrOsc(this);
  sqrDs2 = new SqrOsc(this);
  sqrE2 = new SqrOsc(this);
  sqrF2 = new SqrOsc(this);
  sqrFs2 = new SqrOsc(this);
  sqrG2 = new SqrOsc(this);
  sqrGs2 = new SqrOsc(this);
  sqrA2 = new SqrOsc(this);
  sqrAs2 = new SqrOsc(this);
  sqrB2 = new SqrOsc(this);
  sqrC22 = new SqrOsc(this);

  sqrC13 = new SqrOsc(this);
  sqrCs3 = new SqrOsc(this);
  sqrD3 = new SqrOsc(this);
  sqrDs3 = new SqrOsc(this);
  sqrE3 = new SqrOsc(this);
  sqrF3 = new SqrOsc(this);
  sqrFs3 = new SqrOsc(this);
  sqrG3 = new SqrOsc(this);
  sqrGs3 = new SqrOsc(this);
  sqrA3 = new SqrOsc(this);
  sqrAs3 = new SqrOsc(this);
  sqrB3 = new SqrOsc(this);
  sqrC23 = new SqrOsc(this);



  sawC11 = new SawOsc(this);
  sawCs1 = new SawOsc(this);
  sawD1 = new SawOsc(this);
  sawDs1 = new SawOsc(this);
  sawE1 = new SawOsc(this);
  sawF1 = new SawOsc(this);
  sawFs1 = new SawOsc(this);
  sawG1 = new SawOsc(this);
  sawGs1 = new SawOsc(this);
  sawA1 = new SawOsc(this);
  sawAs1 = new SawOsc(this);
  sawB1 = new SawOsc(this);
  sawC21 = new SawOsc(this);

  sawC12 = new SawOsc(this);
  sawCs2 = new SawOsc(this);
  sawD2 = new SawOsc(this);
  sawDs2 = new SawOsc(this);
  sawE2 = new SawOsc(this);
  sawF2 = new SawOsc(this);
  sawFs2 = new SawOsc(this);
  sawG2 = new SawOsc(this);
  sawGs2 = new SawOsc(this);
  sawA2 = new SawOsc(this);
  sawAs2 = new SawOsc(this);
  sawB2 = new SawOsc(this);
  sawC22 = new SawOsc(this);

  sawC13 = new SawOsc(this);
  sawCs3 = new SawOsc(this);
  sawD3 = new SawOsc(this);
  sawDs3 = new SawOsc(this);
  sawE3 = new SawOsc(this);
  sawF3 = new SawOsc(this);
  sawFs3 = new SawOsc(this);
  sawG3 = new SawOsc(this);
  sawGs3 = new SawOsc(this);
  sawA3 = new SawOsc(this);
  sawAs3 = new SawOsc(this);
  sawB3 = new SawOsc(this);
  sawC23 = new SawOsc(this);

  synth = new Sound(this);
}
/*
for each key, and for each different osc, play 
the osc at a certain frequency, else stop playing
*/
public void press() {
  if (keyPressed) {
    if (key == 'z') {
      if (Sine1 == true) {
        sinC11.play();
        sinC11.freq(C1hz1);
      }
      if (Sine2 == true) {
        sinC12.play();
        sinC12.freq(C1hz2);
      }
      if (Sine3 == true) {
        sinC13.play();
        sinC13.freq(C1hz3);
      }

      if (Square1 == true) {
        sqrC11.play();
        sqrC11.freq(C1hz1);
      }
      if (Square2 == true) {
        sqrC12.play();
        sqrC12.freq(C1hz2);
      }
      if (Square3 == true) {
        sinC13.play();
        sinC13.freq(C1hz3);
      }

      if (saw1 == true) {
        sawC11.play();
        sawC11.freq(C1hz1);
      }
      if (saw2 == true) {
        sawC12.play();
        sawC12.freq(C1hz2);
      }
      if (saw3 == true) {
        sawC13.play();
        sawC13.freq(C1hz3);
      }
    } else if (key == 'x') {
      if (Sine1 == true) {
        sinD1.play();
        sinD1.freq(Dhz1);
      }
      if (Sine2 == true) {
        sinD2.play();
        sinD2.freq(Dhz2);
      }
      if (Sine3 == true) {
        sinD3.play();
        sinD3.freq(Dhz3);
      }

      if (Square1 == true) {
        sqrD1.play();
        sqrD1.freq(Dhz1);
      }
      if (Square2 == true) {
        sqrD2.play();
        sqrD2.freq(Dhz2);
      }
      if (Square3 == true) {
        sinD3.play();
        sinD3.freq(Dhz3);
      }

      if (saw1 == true) {
        sawD1.play();
        sawD1.freq(Dhz1);
      }
      if (saw2 == true) {
        sawD2.play();
        sawD2.freq(Dhz2);
      }
      if (saw3 == true) {
        sawD3.play();
        sawD3.freq(Dhz3);
      }
    } else if (key == 'c') {
      if (Sine1 == true) {
        sinE1.play();
        sinE1.freq(Ehz1);
      }
      if (Sine2 == true) {
        sinE2.play();
        sinE2.freq(Ehz2);
      }
      if (Sine3 == true) {
        sinE3.play();
        sinE3.freq(Ehz3);
      }

      if (Square1 == true) {
        sqrE1.play();
        sqrE1.freq(Ehz1);
      }
      if (Square2 == true) {
        sqrE2.play();
        sqrE2.freq(Ehz2);
      }
      if (Square3 == true) {
        sinE3.play();
        sinE3.freq(Ehz3);
      }

      if (saw1 == true) {
        sawE1.play();
        sawE1.freq(Ehz1);
      }
      if (saw2 == true) {
        sawE2.play();
        sawE2.freq(Ehz2);
      }
      if (saw3 == true) {
        sawE3.play();
        sawE3.freq(Ehz3);
      }
    } else if (key == 'v') {
      if (Sine1 == true) {
        sinF1.play();
        sinF1.freq(Fhz1);
      }
      if (Sine2 == true) {
        sinF2.play();
        sinF2.freq(Fhz2);
      }
      if (Sine3 == true) {
        sinF3.play();
        sinF3.freq(Fhz3);
      }

      if (Square1 == true) {
        sqrF1.play();
        sqrF1.freq(Fhz1);
      }
      if (Square2 == true) {
        sqrF2.play();
        sqrF2.freq(Fhz2);
      }
      if (Square3 == true) {
        sinF3.play();
        sinF3.freq(Fhz3);
      }

      if (saw1 == true) {
        sawF1.play();
        sawF1.freq(Fhz1);
      }
      if (saw2 == true) {
        sawF2.play();
        sawF2.freq(Fhz2);
      }
      if (saw3 == true) {
        sawF3.play();
        sawF3.freq(Fhz3);
      }
    } else if (key == 'b') {
      if (Sine1 == true) {
        sinG1.play();
        sinG1.freq(Ghz1);
      }
      if (Sine2 == true) {
        sinG2.play();
        sinG2.freq(Ghz2);
      }
      if (Sine3 == true) {
        sinG3.play();
        sinG3.freq(Ghz3);
      }

      if (Square1 == true) {
        sqrG1.play();
        sqrG1.freq(Ghz1);
      }
      if (Square2 == true) {
        sqrG2.play();
        sqrG2.freq(Ghz2);
      }
      if (Square3 == true) {
        sinG3.play();
        sinG3.freq(Ghz3);
      }

      if (saw1 == true) {
        sawG1.play();
        sawG1.freq(Ghz1);
      }
      if (saw2 == true) {
        sawG2.play();
        sawG2.freq(Ghz2);
      }
      if (saw3 == true) {
        sawG3.play();
        sawG3.freq(Ghz3);
      }
    } else if (key == 'n') {
      if (Sine1 == true) {
        sinA1.play();
        sinA1.freq(Ahz1);
      }
      if (Sine2 == true) {
        sinA2.play();
        sinA2.freq(Ahz2);
      }
      if (Sine3 == true) {
        sinA3.play();
        sinA3.freq(Ahz3);
      }

      if (Square1 == true) {
        sqrA1.play();
        sqrA1.freq(Ahz1);
      }
      if (Square2 == true) {
        sqrA2.play();
        sqrA2.freq(Ahz2);
      }
      if (Square3 == true) {
        sinA3.play();
        sinA3.freq(Ahz3);
      }

      if (saw1 == true) {
        sawA1.play();
        sawA1.freq(Ahz1);
      }
      if (saw2 == true) {
        sawA2.play();
        sawA2.freq(Ahz2);
      }
      if (saw3 == true) {
        sawA3.play();
        sawA3.freq(Ahz3);
      }
    } else if (key == 'm') {
      if (Sine1 == true) {
        sinB1.play();
        sinB1.freq(Bhz1);
      }
      if (Sine2 == true) {
        sinB2.play();
        sinB2.freq(Bhz2);
      }
      if (Sine3 == true) {
        sinB3.play();
        sinB3.freq(Bhz3);
      }

      if (Square1 == true) {
        sqrB1.play();
        sqrB1.freq(Bhz1);
      }
      if (Square2 == true) {
        sqrB2.play();
        sqrB2.freq(Bhz2);
      }
      if (Square3 == true) {
        sinB3.play();
        sinB3.freq(Bhz3);
      }

      if (saw1 == true) {
        sawB1.play();
        sawB1.freq(Bhz1);
      }
      if (saw2 == true) {
        sawB2.play();
        sawB2.freq(Bhz2);
      }
      if (saw3 == true) {
        sawB3.play();
        sawB3.freq(Bhz3);
      }
    } else if (key == ',') {
      if (Sine1 == true) {
        sinC21.play();
        sinC21.freq(C2hz1);
      }
      if (Sine2 == true) {
        sinC22.play();
        sinC22.freq(C2hz2);
      }
      if (Sine3 == true) {
        sinC23.play();
        sinC23.freq(C2hz3);
      }

      if (Square1 == true) {
        sqrC21.play();
        sqrC21.freq(C2hz1);
      }
      if (Square2 == true) {
        sqrC22.play();
        sqrC22.freq(C2hz2);
      }
      if (Square3 == true) {
        sinC23.play();
        sinC23.freq(C2hz3);
      }

      if (saw1 == true) {
        sawC21.play();
        sawC21.freq(C2hz1);
      }
      if (saw2 == true) {
        sawC22.play();
        sawC22.freq(C2hz2);
      }
      if (saw3 == true) {
        sawC23.play();
        sawC23.freq(C2hz3);
      }
    } else if (key == 's') {
      if (Sine1 == true) {
        sinCs1.play();
        sinCs1.freq(Cshz1);
      }
      if (Sine2 == true) {
        sinCs2.play();
        sinCs2.freq(Cshz2);
      }
      if (Sine3 == true) {
        sinCs3.play();
        sinCs3.freq(Cshz3);
      }

      if (Square1 == true) {
        sqrCs1.play();
        sqrCs1.freq(Cshz1);
      }
      if (Square2 == true) {
        sqrCs2.play();
        sqrCs2.freq(Cshz2);
      }
      if (Square3 == true) {
        sinCs3.play();
        sinCs3.freq(Cshz3);
      }

      if (saw1 == true) {
        sawCs1.play();
        sawCs1.freq(Cshz1);
      }
      if (saw2 == true) {
        sawCs2.play();
        sawCs2.freq(Cshz2);
      }
      if (saw3 == true) {
        sawCs3.play();
        sawCs3.freq(Cshz3);
      }
    } else if (key == 'd') {
      if (Sine1 == true) {
        sinDs1.play();
        sinDs1.freq(Dshz1);
      }
      if (Sine2 == true) {
        sinDs2.play();
        sinDs2.freq(Dshz2);
      }
      if (Sine3 == true) {
        sinDs3.play();
        sinDs3.freq(Dshz3);
      }

      if (Square1 == true) {
        sqrDs1.play();
        sqrDs1.freq(Dshz1);
      }
      if (Square2 == true) {
        sqrDs2.play();
        sqrDs2.freq(Dshz2);
      }
      if (Square3 == true) {
        sinDs3.play();
        sinDs3.freq(Dshz3);
      }

      if (saw1 == true) {
        sawDs1.play();
        sawDs1.freq(Dshz1);
      }
      if (saw2 == true) {
        sawDs2.play();
        sawDs2.freq(Dshz2);
      }
      if (saw3 == true) {
        sawDs3.play();
        sawDs3.freq(Dshz3);
      }
    } else if (key == 'g') {
      if (Sine1 == true) {
        sinFs1.play();
        sinFs1.freq(Fshz1);
      }
      if (Sine2 == true) {
        sinFs2.play();
        sinFs2.freq(Fshz2);
      }
      if (Sine3 == true) {
        sinFs3.play();
        sinFs3.freq(Fshz3);
      }

      if (Square1 == true) {
        sqrFs1.play();
        sqrFs1.freq(Fshz1);
      }
      if (Square2 == true) {
        sqrFs2.play();
        sqrFs2.freq(Fshz2);
      }
      if (Square3 == true) {
        sinFs3.play();
        sinFs3.freq(Fshz3);
      }

      if (saw1 == true) {
        sawFs1.play();
        sawFs1.freq(Fshz1);
      }
      if (saw2 == true) {
        sawFs2.play();
        sawFs2.freq(Fshz2);
      }
      if (saw3 == true) {
        sawFs3.play();
        sawFs3.freq(Fshz3);
      }
    } else if (key == 'h') {
      if (Sine1 == true) {
        sinGs1.play();
        sinGs1.freq(Gshz1);
      }
      if (Sine2 == true) {
        sinGs2.play();
        sinGs2.freq(Gshz2);
      }
      if (Sine3 == true) {
        sinGs3.play();
        sinGs3.freq(Gshz3);
      }

      if (Square1 == true) {
        sqrGs1.play();
        sqrGs1.freq(Gshz1);
      }
      if (Square2 == true) {
        sqrGs2.play();
        sqrGs2.freq(Gshz2);
      }
      if (Square3 == true) {
        sinGs3.play();
        sinGs3.freq(Gshz3);
      }

      if (saw1 == true) {
        sawGs1.play();
        sawGs1.freq(Gshz1);
      }
      if (saw2 == true) {
        sawGs2.play();
        sawGs2.freq(Gshz2);
      }
      if (saw3 == true) {
        sawGs3.play();
        sawGs3.freq(Gshz3);
      }
    } else if (key == 'j') {
      if (Sine1 == true) {
        sinAs1.play();
        sinAs1.freq(Ashz1);
      }
      if (Sine2 == true) {
        sinAs2.play();
        sinAs2.freq(Ashz2);
      }
      if (Sine3 == true) {
        sinAs3.play();
        sinAs3.freq(Ashz3);
      }

      if (Square1 == true) {
        sqrAs1.play();
        sqrAs1.freq(Ashz1);
      }
      if (Square2 == true) {
        sqrAs2.play();
        sqrAs2.freq(Ashz2);
      }
      if (Square3 == true) {
        sinAs3.play();
        sinAs3.freq(Ashz3);
      }

      if (saw1 == true) {
        sawAs1.play();
        sawAs1.freq(Ashz1);
      }
      if (saw2 == true) {
        sawAs2.play();
        sawAs2.freq(Ashz2);
      }
      if (saw3 == true) {
        sawAs3.play();
        sawAs3.freq(Ashz3);
      }
    }
  } else {
    sinC11.stop();
    sinC12.stop();
    sinC13.stop();

    sqrC11.stop();
    sqrC12.stop();
    sqrC13.stop();

    sawC11.stop();
    sawC12.stop();
    sawC13.stop();


    sinCs1.stop();
    sinCs2.stop();
    sinCs3.stop();

    sqrCs1.stop();
    sqrCs2.stop();
    sqrCs3.stop();

    sawCs1.stop();
    sawCs2.stop();
    sawCs3.stop();


    sinD1.stop();
    sinD2.stop();
    sinD3.stop();

    sqrD1.stop();
    sqrD2.stop();
    sqrD3.stop();

    sawD1.stop();
    sawD2.stop();
    sawD3.stop();


    sinDs1.stop();
    sinDs2.stop();
    sinDs3.stop();

    sqrDs1.stop();
    sqrDs2.stop();
    sqrDs3.stop();

    sawDs1.stop();
    sawDs2.stop();
    sawDs3.stop();


    sinE1.stop();
    sinE2.stop();
    sinE3.stop();

    sqrE1.stop();
    sqrE2.stop();
    sqrE3.stop();

    sawE1.stop();
    sawE2.stop();
    sawE3.stop();


    sinF1.stop();
    sinF2.stop();
    sinF3.stop();

    sqrF1.stop();
    sqrF2.stop();
    sqrF3.stop();

    sawF1.stop();
    sawF2.stop();
    sawF3.stop();


    sinFs1.stop();
    sinFs2.stop();
    sinFs3.stop();

    sqrFs1.stop();
    sqrFs2.stop();
    sqrFs3.stop();

    sawFs1.stop();
    sawFs2.stop();
    sawFs3.stop();


    sinG1.stop();
    sinG2.stop();
    sinG3.stop();

    sqrG1.stop();
    sqrG2.stop();
    sqrG3.stop();

    sawG1.stop();
    sawG2.stop();
    sawG3.stop();


    sinGs1.stop();
    sinGs2.stop();
    sinGs3.stop();

    sqrGs1.stop();
    sqrGs2.stop();
    sqrGs3.stop();

    sawGs1.stop();
    sawGs2.stop();
    sawGs3.stop();


    sinA1.stop();
    sinA2.stop();
    sinA3.stop();

    sqrA1.stop();
    sqrA2.stop();
    sqrA3.stop();

    sawA1.stop();
    sawA2.stop();
    sawA3.stop();


    sinAs1.stop();
    sinAs2.stop();
    sinAs3.stop();

    sqrAs1.stop();
    sqrAs2.stop();
    sqrAs3.stop();

    sawAs1.stop();
    sawAs2.stop();
    sawAs3.stop();


    sinB1.stop();
    sinB2.stop();
    sinB3.stop();

    sqrB1.stop();
    sqrB2.stop();
    sqrB3.stop();

    sawB1.stop();
    sawB2.stop();
    sawB3.stop();


    sinC21.stop();
    sinC22.stop();
    sinC23.stop();

    sqrC21.stop();
    sqrC22.stop();
    sqrC23.stop();

    sawC21.stop();
    sawC22.stop();
    sawC23.stop();
  }
}
//Build the slider as one unit to make changing the Y value easier
public void slider(int x, int y, int w, int h) {
  fill(120);
  rect(x, y, w, h);
  fill(130);
  rect(x+4, y+4, w-8, h-8);
  fill(150);
  quad(x, y, x+4, y+4, x+4, y+15, x, y+20);
  fill(100);
  quad(x+36, y+4, x+40, y, x+40, y+20, x+36, y+16);
}
/*
for each button or slider, determine if the mouse is 
over it, and if it is, flip the boolean to true
*/
public void update(int x, int y) {
  if (overCircle(100, 33.3f, 50)) {
    overSine1 = true;
  } else if (overCircle(100, 99.9f, 50)) {
    overSine2 = true;
  } else if (overCircle(100, 166.5f, 50)) {
    overSine3 = true;
  } else if (overCircle(200, 33.3f, 50)) {
    overSquare1 = true;
  } else if (overCircle(200, 99.9f, 50)) {
    overSquare2 = true;
  } else if (overCircle(200, 166.5f, 50)) {
    overSquare3 = true;
  } else if (overCircle(300, 33.3f, 50)) {
    oversaw1 = true;
  } else if (overCircle(300, 99.9f, 50)) {
    oversaw2 = true;
  } else if (overCircle(300, 166.5f, 50)) {
    oversaw3 = true;
  } else {
    overSine1 = overSine2 = overSine3 = false;
    overSquare1 = overSquare2 = overSquare3 = false;
    oversaw1 = oversaw2 = oversaw3 = false;
  }

  if (overRect(400, 8, 20, 10)) {
    over1Up = true;
  } else if (overRect(400, 48, 20, 10)) {
    over1Down = true;
  } else if (overRect(400, 75, 20, 10)) {
    over2Up = true;
  } else if (overRect(400, 115, 20, 10)) {
    over2Down = true;
  } else if (overRect(400, 142, 20, 10)) {
    over3Up = true;
  } else if (overRect(400, 181, 20, 10)) {
    over3Down = true;
  } else {
    over1Up = over2Up = over3Up = false;
    over1Down = over2Down = over3Down = false;
  }
  if (overRect(291, volY, 40, 10)) {
    overVol = true;
  } else {
    overVol = false;
  }
}
//Determine the volume at different Y values of the slider
public void volume() {
  if (volY >= 270) {
    synth.volume(0);
  } else if (volY >= 260) {
    synth.volume(0.1f);
  }else if (volY >= 250) {
    synth.volume(0.15f);
  } else if (volY >=240) {
    synth.volume(0.2f);
  }else if (volY >=230) {
    synth.volume(0.25f);
  } else if (volY >= 220) {
    synth.volume(0.3f);
  }
}
/*
If mouse clicked while on one of the cent buttons, 
add or subtract one to the cent value, capping at + or - 25
*/
public void mouseClicked() {
  if (over1Up == true) {
    if (cent1 != 25) {
      cent1 = cent1 + 1;
    }
  } else if (over1Down == true) {
    if (cent1 != -25) {
      cent1 = cent1 - 1;
    }
  } else if (over2Up == true) {
    if (cent2 != 25) {
      cent2 = cent2 + 1;
    }
  } else if (over2Down == true) {
    if (cent2 != -25) {
      cent2 = cent2 - 1;
    }
  } else if (over3Up == true) {
    if (cent3 != 25) {
      cent3 = cent3 + 1;
    }
  } else if (over3Down == true) {
    if (cent3 != -25) {
      cent3 = cent3 - 1;
    }
  } else {
  }
}
/*
if mouse drgged while over the slider, add or subtract to 
the Y value of the slider, capping at 219 and 271
*/
public void mouseDragged() {
  if (overVol == true) {
    if (pmouseY > mouseY && volY != 219) {
      volY--;
    } else if (pmouseY < mouseY && volY != 271) {
      volY++;
    }
  }
}
/* 
for each wave button, if mouse is over it and is pressed,
change the type of osc being used, and change the color of the osc light
*/
public void mousePressed() {
  if (overSine1 == true) {
    if (Sine1 == true) {
      Sine1 = false;
      sine1Color = color(20);
    } else if (Sine1 == false) {
      Sine1 = true;
      Square1 = false;
      saw1 = false;
      sine1Color = color(0, 255, 0);
      square1Color = color(20);
      saw1Color = color(20);
    }
  }
  if (overSine2 == true) {
    if (Sine2 == true) {
      Sine2 = false;
      sine2Color = color(20);
    } else if (Sine2 == false) {
      Sine2 = true;
      Square2 = false;
      saw2 = false;
      sine2Color = color(0, 255, 0);
      square2Color = color(20);
      saw2Color = color(20);
    }
  }
  if (overSine3 == true) {
    if (Sine3 == true) {
      Sine3 = false;
      sine3Color = color(20);
    } else if (Sine3 == false) {
      Sine3 = true;
      Square3 = false;
      saw3 = false;
      sine3Color = color(0, 255, 0);
      square3Color = color(20);
      saw3Color = color(20);
    }
  }

  if (overSquare1 == true) {
    if (Square1 == true) {
      Square1 = false;
      square1Color = color(20);
    } else if (Square1 == false) {
      Square1 = true;
      Sine1 = false;
      saw1 = false;
      square1Color = color(0, 255, 0);
      sine1Color = color(20);
      saw1Color = color(20);
    }
  }
  if (overSquare2 == true) {
    if (Square2 == true) {
      Square2 = false;
      square2Color = color(20);
    } else if (Square2 == false) {
      Square2 = true;
      Sine2 = false;
      saw2 = false;
      square2Color = color(0, 255, 0);
      sine2Color = color(20);
      saw2Color = color(20);
    }
  }
  if (overSquare3 == true) {
    if (Square3 == true) {
      Square3 = false;
      square3Color = color(20);
    } else if (Square3 == false) {
      Square3 = true;
      Sine3 = false;
      saw3 = false;
      square3Color = color(0, 255, 0);
      sine3Color = color(20);
      saw3Color = color(20);
    }
  }

  if (oversaw1 == true) {
    if (saw1 == true) {
      saw1 = false;
      saw1Color = color(20);
    } else if (saw1 == false) {
      saw1 = true;
      Sine1 = false;
      Square1 = false;
      saw1Color = color(0, 255, 0);
      sine1Color = color(20);
      square1Color = color(20);
    }
  }
  if (oversaw2 == true) {
    if (saw2 == true) {
      saw2 = false;
      saw2Color = color(20);
    } else if (saw2 == false) {
      saw2 = true;
      Sine2 = false;
      Square2 = false;
      saw2Color = color(0, 255, 0);
      sine2Color = color(20);
      square2Color = color(20);
    }
  }
  if (oversaw3 == true) {
    if (saw3 == true) {
      saw3 = false;
      saw3Color = color(20);
    } else if (saw3 == false) {
      saw3 = true;
      Sine3 = false;
      Square3 = false;
      saw3Color = color(0, 255, 0);
      sine3Color = color(20);
      square3Color = color(20);
    }
  }
}
  public void settings() {  size(450, 300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ThreeX_Osc" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
