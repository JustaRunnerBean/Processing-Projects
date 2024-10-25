float x;
float y;

void setup() {
  size(400, 400);
  x=width/2;
  y=height/2;
  rectMode(CENTER);
}

void draw() {
  background(220);
  rect(x, y, 60, 60);
}

void keyPressed() {
  if (key == 'w') {
    y --;
  } else if (key == 'a') {
    x--;
  } else if (key == 's') {
    y++;
  } else if (key == 'd') {
    x++;
  } else {
  }
}
