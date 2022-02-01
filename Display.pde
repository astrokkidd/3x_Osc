void display() {
  //Red, Orange, and Yellow rects
  stroke(231, 111, 81);
  fill(231, 111, 81);
  rect(0, 0, 450, 66.6);
  stroke(244, 162, 97);
  fill(244, 162, 97);
  rect(0, 66.6, 450, 66.6);
  stroke(233, 196, 106);
  fill(233, 196, 106);
  rect(0, 133.3, 450, 66.6);

  //Osc numbers
  fill(255);
  textFont(numFont);
  text("1", 10, 51.6);
  text("2", 10, 118.2);
  text("3", 10, 184.8);
  //Signature
  stroke(50);
  fill(233, 196, 106);
  textFont(nameFont);
  text("Josiah\nParrott", 350, 230);
  fill(231, 111, 81);
  text("3x Osc", 350, 280);

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
  rect(390, 23.3, 40, 20);
  rect(390, 89.9, 40, 20);
  rect(390, 156.5, 40, 20);

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
  text(dispCent1, 395, 41.3);
  text(dispCent2, 395, 107.9);
  text(dispCent3, 395, 174.5);
  //Slider and line
  fill(0);
  rect(310, 220, 2, 70);
  slider(291, volY, 40, 20);
}
