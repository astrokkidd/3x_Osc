/*
for each button or slider, determine if the mouse is 
over it, and if it is, flip the boolean to true
*/
void update(int x, int y) {
  if (overCircle(100, 33.3, 50)) {
    overSine1 = true;
  } else if (overCircle(100, 99.9, 50)) {
    overSine2 = true;
  } else if (overCircle(100, 166.5, 50)) {
    overSine3 = true;
  } else if (overCircle(200, 33.3, 50)) {
    overSquare1 = true;
  } else if (overCircle(200, 99.9, 50)) {
    overSquare2 = true;
  } else if (overCircle(200, 166.5, 50)) {
    overSquare3 = true;
  } else if (overCircle(300, 33.3, 50)) {
    oversaw1 = true;
  } else if (overCircle(300, 99.9, 50)) {
    oversaw2 = true;
  } else if (overCircle(300, 166.5, 50)) {
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
  
  if (overCircle(55,33.3-20,15)) {
    overUp1 = true;
  } else if (overCircle(55,33.3,15)) {
    overMain1 = true;
  } else if (overCircle(55,33.3+20,15)) {
    overDown1 = true;
  } else if (overCircle(55,99.9-20,15)) {
    overUp2 = true;
  } else if (overCircle(55,99.9,15)) {
    overMain2 = true;
  } else if (overCircle(55,99.9+20,15)) {
    overDown2 = true;
  } else if (overCircle(55,166.5-20,15)) {
    overUp3 = true;
  } else if (overCircle(55,166.5,15)) {
    overMain3 = true;
  } else if (overCircle(55,166.5+20,15)) {
    overDown3 = true;
  } else {
    overUp1 = overMain1 = overDown1 = false;
    overUp2 = overMain2 = overDown2 = false;
    overUp3 = overMain3 = overDown3 = false;
    
    if (overCircle(20,250,22)) {
      overThemeSelect = true;
    }else {
      overThemeSelect = false;
    }
  }
}
