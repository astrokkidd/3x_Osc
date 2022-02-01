//Build the slider as one unit to make changing the Y value easier
void slider(int x, int y, int w, int h) {
  fill(120);
  rect(x, y, w, h);
  fill(130);
  rect(x+4, y+4, w-8, h-8);
  fill(150);
  quad(x, y, x+4, y+4, x+4, y+15, x, y+20);
  fill(100);
  quad(x+36, y+4, x+40, y, x+40, y+20, x+36, y+16);
}
