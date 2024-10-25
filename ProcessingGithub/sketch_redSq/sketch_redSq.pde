float red = 128;
void setup() {
  size(400, 400);
}

void draw()
{
  background(100);
  fill(red, 128, 128);
  rect(100, 100, 60, 60);
}

void keyPressed() {
  //Make the square more red (warmer colour)
  if (key == 'R') {
    red = red +10;
  //Make the square less red (cloder colour)
  } else if (key == 'r') {
    red = red -10;
  }
}
