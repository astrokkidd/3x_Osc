/*
for each key, and for each different osc, play 
 the osc at a certain frequency and change color, 
 else stop playing and revert color
 */
void press() {
  if (keyPressed) {
    if (key == 'z') {
      C1key = color(255, 170, 0);
      C1shade = color(190, 125, 0);
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
      Dkey = color(255, 170, 0);
      Dshade = color(190, 125, 0);
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
      Ekey = color(255, 170, 0);
      Eshade = color(190, 125, 0);
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
      Fkey = color(255, 170, 0);
      Fshade = color(190, 125, 0);
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
      Gkey = color(255, 170, 0);
      Gshade = color(190, 125, 0);
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
      Akey = color(255, 170, 0);
      Ashade = color(190, 125, 0);
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
      Bkey = color(255, 170, 0);
      Bshade = color(190, 125, 0);
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
      C2key = color(255, 170, 0);
      C2shade = color(190, 125, 0);
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
      CsTop = color(180, 120, 0);
      CsLeft = color(220, 145, 0);
      CsShade = color(160, 100, 0);
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
      DsTop = color(180, 120, 0);
      DsLeft = color(220, 145, 0);
      DsShade = color(160, 100, 0);
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
      FsTop = color(180, 120, 0);
      FsLeft = color(220, 145, 0);
      FsShade = color(160, 100, 0);
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
      GsTop = color(180, 120, 0);
      GsLeft = color(220, 145, 0);
      GsShade = color(160, 100, 0);
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
      AsTop = color(180, 120, 0);
      AsLeft = color(220, 145, 0);
      AsShade = color(160, 100, 0);
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
    C1key = color(255);
    C1shade = color(150);
    Dkey = color(255);
    Dshade = color(150);
    Ekey = color(255);
    Eshade = color(150);
    Fkey = color(255);
    Fshade = color(150);
    Gkey = color(255);
    Gshade = color(150);
    Akey = color(255);
    Ashade = color(150);
    Bkey = color(255);
    Bshade = color(150);
    C2key = color(255);
    C2shade = color(150);

    CsLeft = color(100);
    DsLeft = color(100);
    FsLeft = color(100);
    GsLeft = color(100);
    AsLeft = color(100);

    CsTop = color(70);
    DsTop = color(70);
    FsTop = color(70);
    GsTop = color(70);
    AsTop = color(70);

    CsShade = color(0);
    DsShade = color(0);
    FsShade = color(0);
    GsShade = color(0);
    AsShade = color(0);


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
