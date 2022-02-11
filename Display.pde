void display() {
  //Backboard rects
  stroke(themeColor1);
  fill(themeColor1);
  rect(0, 0, 450, 66.6);
  stroke(themeColor2);
  fill(themeColor2);
  rect(0, 66.6, 450, 66.6);
  stroke(themeColor3);
  fill(themeColor3);
  rect(0, 133.3, 450, 66.6);

  //Osc numbers
  fill(255);
  textFont(numFont);
  text("1", 10, 51.6);
  text("2", 10, 118.2);
  text("3", 10, 184.8);
  //Signature
  stroke(50);
  fill(themeColor3);
  textFont(nameFont);
  text("Josiah\nParrott", 355, 230);
  fill(themeColor1);
  text("3x Osc", 355, 280);

  noStroke();
  fill(75);
  //Sine button backs
  circle(100, 33.3, 55);
  circle(100, 99.9, 55);
  circle(100, 166.5, 55);
  //Square button backs
  circle(200, 33.3, 55);
  circle(200, 99.9, 55);
  circle(200, 166.5, 55);
  //saw button backs
  circle(300, 33.3, 55);
  circle(300, 99.9, 55);
  circle(300, 166.5, 55);

  fill(150);
  //Sine buttons
  circle(100, 33.3, 50);
  circle(100, 99.9, 50);
  circle(100, 166.5, 50);
  //Square buttons
  circle(200, 33.3, 50);
  circle(200, 99.9, 50);
  circle(200, 166.5, 50);
  //saw buttons
  circle(300, 33.3, 50);
  circle(300, 99.9, 50);
  circle(300, 166.5, 50);

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


  fill(100);
  noStroke();
  //Behind the lights
  circle(150, 33.3, 30);
  circle(150, 99.9, 30);
  circle(150, 166.5, 30);
  circle(250, 33.3, 30);
  circle(250, 99.9, 30);
  circle(250, 166.5, 30);
  circle(350, 33.3, 30);
  circle(350, 99.9, 30);
  circle(350, 166.5, 30);
  
  //Sine lights
  fill(sine1Color);
  circle(150, 33.3, 20);
  fill(sine2Color);
  circle(150, 99.9, 20);
  fill(sine3Color);
  circle(150, 166.5, 20);
  //Square lights
  fill(square1Color);
  circle(250, 33.3, 20);
  fill(square2Color);
  circle(250, 99.9, 20);
  fill(square3Color);
  circle(250, 166.5, 20);
  //saw lights
  fill(saw1Color);
  circle(350, 33.3, 20);
  fill(saw2Color);
  circle(350, 99.9, 20);
  fill(saw3Color);
  circle(350, 166.5, 20);

  //White keys
  fill(255);  
  noStroke();
  fill(C1key);
  rect(40, 220, 20, 80);
  fill(Dkey);
  rect(80, 220, 20, 80);
  fill(Ekey);
  rect(120, 220, 20, 80);
  fill(Fkey);
  rect(140, 220, 20, 80);
  fill(Gkey);
  rect(180, 220, 20, 80);
  fill(Akey);
  rect(220, 220, 20, 80);
  fill(Bkey);
  rect(260, 220, 20, 80);
  fill(C2key);
  rect(280, 220, 20, 80);

  noStroke();
  fill(150);
  //White key shade
  fill(C1shade);
  rect(40, 220, 20, 10);
  fill(Dshade);
  rect(80, 220, 20, 10);
  fill(Eshade);
  rect(120, 220, 20, 10);
  fill(Fshade);
  rect(140, 220, 20, 10);
  fill(Gshade);
  rect(180, 220, 20, 10);
  fill(Ashade);
  rect(220, 220, 20, 10);
  fill(Bshade);
  rect(260, 220, 20, 10); 
  fill(C2shade);
  rect(280, 220, 20, 10);

  stroke(0);
  fill(70);
  //Black key base
  fill(CsTop);
  rect(60, 220, 20, 80);
  fill(DsTop);
  rect(100, 220, 20, 80);
  fill(FsTop);
  rect(160, 220, 20, 80);
  fill(GsTop);
  rect(200, 220, 20, 80);
  fill(AsTop);
  rect(240, 220, 20, 80);

  noStroke();
  fill(0);
  //Black key shade
  fill(CsShade);
  rect(60, 220, 20, 10);
  fill(DsShade);
  rect(100, 220, 20, 10);
  fill(FsShade);
  rect(160, 220, 20, 10);
  fill(GsShade);
  rect(200, 220, 20, 10);
  fill(AsShade);
  rect(240, 220, 20, 10);
  stroke(0);
  line(140, 220, 140, 300);
  line(280, 220, 280, 300);
  noStroke();
  fill(100);
  //Black key highlights
  fill(CsLeft);
  quad(65, 290, 75, 290, 80, 300, 60, 300);
  quad(60, 230, 65, 230, 65, 290, 60, 300);
  fill(DsLeft);
  quad(105, 290, 115, 290, 120, 300, 100, 300);
  quad(100, 230, 105, 230, 105, 290, 100, 300);
  fill(FsLeft);
  quad(165, 290, 175, 290, 180, 300, 160, 300);
  quad(160, 230, 165, 230, 165, 290, 160, 300);
  fill(GsLeft);
  quad(205, 290, 215, 290, 220, 300, 200, 300);
  quad(200, 230, 205, 230, 205, 290, 200, 300);
  fill(AsLeft);
  quad(245, 290, 255, 290, 260, 300, 240, 300);
  quad(240, 230, 245, 230, 245, 290, 240, 300);

  fill(0);
  //Black key right side
  fill(CsShade);
  quad(75, 230, 80, 230, 80, 300, 75, 290);
  fill(DsShade);
  quad(115, 230, 120, 230, 120, 300, 115, 290);
  fill(FsShade);
  quad(175, 230, 180, 230, 180, 300, 175, 290);
  fill(GsShade);
  quad(215, 230, 220, 230, 220, 300, 215, 290);
  fill(AsShade);
  quad(255, 230, 260, 230, 260, 300, 255, 290);
  //Base of synth shade
  fill(themeColor5);
  rect(0, 200, 450, 10);
  rect(37, 220, 3, 240);
  rect(40, 220, 260, 3);

  fill(0);
  //Cent screens
  rect(387, 23.3, 45, 20);
  rect(387, 89.9, 45, 20);
  rect(387, 156.5, 45, 20);

  //Cent buttons
  fill(0);
  triangle(400, 18.3, 410, 8.3, 420, 18.3);
  triangle(400, 84.9, 410, 74.9, 420, 84.9);
  triangle(400, 151.5, 410, 141.5, 420, 151.5);
  triangle(400, 48.3, 420, 48.3, 410, 58.3);
  triangle(400, 114.9, 420, 114.9, 410, 124.9);
  triangle(400, 181.5, 420, 181.5, 410, 191.5);

  //Cent numbers
  String dispCent1 = String.valueOf(cent1);
  String dispCent2 = String.valueOf(cent2);
  String dispCent3 = String.valueOf(cent3);
  fill(255);
  text(dispCent1, 392, 41.3);
  text(dispCent2, 392, 107.9);
  text(dispCent3, 392, 174.5);
  //Slider and line
  fill(0);
  rect(310+20, 220, 2, 70);
  slider(291+20, volY, 40, 20);

  //Light highlights if light is on
  fill(255);
  if (Sine1 == true) {
    fill(170,255,170);
    circle(150-2,33.3-2,15);
    fill(255);
    circle(150-3, 33.3-3, 7);
  } else if (Square1 == true) {
    fill(170,255,170);
    circle(250-2,33.3-2,15);
    fill(255);
    circle(250-3, 33.3-3, 7);
  } else if (saw1 == true) {
    fill(170,255,170);
    circle(350-2,33.3-2,15);
    fill(255);
    circle(350-3, 33.3-3, 7);
  }
  if (Sine2 == true) {
    fill(170,255,170);
    circle(150-2,99.9-2,15);
    fill(255);
    circle(150-3, 99.9-3, 7);
  } else if (Square2 == true) {
    fill(170,255,170);
    circle(250-2,99.9-2,15);
    fill(255);
    circle(250-3, 99.9-3, 7);
  } else if (saw2 == true) {
    fill(170,255,170);
    circle(350-2,99.9-2,15);
    fill(255);
    circle(350-3, 99.9-3, 7);
  }
  if (Sine3 == true) {
    fill(170,255,170);
    circle(150-2,166.5-2,15);
    fill(255);
    circle(150-3, 166.5-3, 7);
  } else if (Square3 == true) {
    fill(170,255,170);
    circle(250-2,166.5-2,15);
    fill(255);
    circle(250-3, 166.5-3, 7);
  } else if (saw3 == true) {
    fill(170,255,170);
    circle(350-2,166.5-2,15);
    fill(255);
    circle(350-3, 166.5-3, 7);
  }
  
  fill(100);
  circle(20,250,22);
  fill(150);
  circle(20,250,15);
}
