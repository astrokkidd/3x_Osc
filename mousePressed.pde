/* 
for each wave button, if mouse is over it and is pressed,
change the type of osc being used, and change the color of the osc light
*/
void mousePressed() {
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
      fill(255);
      
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
  
  //if over theme select button, change the theme
  if (overThemeSelect == true) {
    if (theme == 1) {
      theme = 2;
    } else if (theme == 2) {
      theme = 3;
    } else if (theme == 3) {
      theme = 4;
    } else if (theme == 4) {
      theme = 5;
    } else if (theme == 5) {
      theme = 1;
    }
  }
}
