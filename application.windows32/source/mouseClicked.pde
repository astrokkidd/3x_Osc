/*
If mouse clicked while on one of the cent buttons, 
add or subtract one to the cent value, capping at + or - 25
*/
void mouseClicked() {
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
