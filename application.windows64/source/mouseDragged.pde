/*
if mouse drgged while over the slider, add or subtract to 
the Y value of the slider, capping at 219 and 271
*/
void mouseDragged() {
  if (overVol == true) {
    if (pmouseY > mouseY && volY != 219) {
      volY--;
    } else if (pmouseY < mouseY && volY != 271) {
      volY++;
    }
  }
}
