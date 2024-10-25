int fSeconds = frameCount;
int fMinutes = 0;

int bSeconds = 0;
int bMinutes = 5;

void setup() {
  size(600, 300);
  //frameRate(15);
}
void draw() {
  background(0);


  text(fSeconds, 300, 100);
  text(":", 295, 100);
  String strFMins = Integer.toString(fMinutes);
  if (strFMins.length() > 1) {
    text(fMinutes, 280, 100);
  } else {
    text(fMinutes, 285, 100);
  }
  if (fSeconds == 59) {
    fMinutes=fMinutes+1;
    fSeconds=0;
  }
  fSeconds++;

  if (bSeconds == 0 && bMinutes == 0) {
    text("00", 300, 200);
    text(":", 295, 200);
    text("00", 280, 200);
  } else {
    if (bSeconds == 0) {
      bMinutes--;
      bSeconds=59;
    }
    bSeconds--;
    text(bSeconds, 300, 200);
    text(":", 295, 200);
    text(bMinutes, 285, 200);
  }
}
