//function to find cent value
float cent(float fq, int cnt) {
  float newFreq = fq + ((fq * 0.01059)*cnt);
  return newFreq;
}
//find the  cent value for each note
void findCent() {
  C1hz1 = cent(261.63, cent1);
  Cshz1 = cent(277.18, cent1);
  Dhz1 = cent(293.66, cent1);
  Dshz1 = cent(311.13, cent1);
  Ehz1 = cent(329.63, cent1);
  Fhz1 = cent(349.23, cent1);
  Fshz1 = cent(369.99, cent1);
  Ghz1 = cent(392, cent1);
  Gshz1 = cent(415.30, cent1);
  Ahz1 = cent(440, cent1);
  Ashz1 = cent(466.16, cent1);
  Bhz1 = cent(493.88, cent1);
  C2hz1 = cent(523.25, cent1);

  C1hz2 = cent(261.63, cent2);
  Cshz2 = cent(277.18, cent2);
  Dhz2 = cent(293.66, cent2);
  Dshz2 = cent(311.13, cent2);
  Ehz2 = cent(329.63, cent2);
  Fhz2 = cent(349.23, cent2);
  Fshz2 = cent(369.99, cent2);
  Ghz2 = cent(392, cent2);
  Gshz2 = cent(415.30, cent2);
  Ahz2 = cent(440, cent2);
  Ashz2 = cent(466.16, cent2);
  Bhz2 = cent(493.88, cent2);
  C2hz2 = cent(523.25, cent2);

  C1hz3 = cent(261.63, cent3);
  Cshz3 = cent(277.18, cent3);
  Dhz3 = cent(293.66, cent3);
  Dshz3 = cent(311.13, cent3);
  Ehz3 = cent(329.63, cent3);
  Fhz3 = cent(349.23, cent3);
  Fshz3 = cent(369.99, cent3);
  Ghz3 = cent(392, cent3);
  Gshz3 = cent(415.30, cent3);
  Ahz3 = cent(440, cent3);
  Ashz3 = cent(466.16, cent3);
  Bhz3 = cent(493.88, cent3);
  C2hz3 = cent(523.25, cent3);
}
