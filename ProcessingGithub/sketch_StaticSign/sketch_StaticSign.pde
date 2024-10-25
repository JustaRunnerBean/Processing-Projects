void setup() {
  size(600, 400);
}
void draw() {
  background(200);
  noStroke();
  rectMode(CENTER);
  fill(255, 0, 0);
  circle(width/2, height/2, 250);
  fill(255);
  circle(width/2, height/2, 150);
  fill(0, 0, 255);
  rect(width/2, height/2, 300, 50);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("UNDERGROUND", width/2, 215.5);
}
