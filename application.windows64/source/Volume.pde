//Determine the volume at different Y values of the slider
void volume() {
  if (volY >= 270) {
    synth.volume(0);
  } else if (volY >= 260) {
    synth.volume(0.1);
  }else if (volY >= 250) {
    synth.volume(0.15);
  } else if (volY >=240) {
    synth.volume(0.2);
  }else if (volY >=230) {
    synth.volume(0.25);
  } else if (volY >= 220) {
    synth.volume(0.3);
  }
}
