void setup(){
size(400, 400);
}

void tri() {

  stroke(0, 25, 0);
  fill(100, 255, 100);
  triangle(200, 100, 230, 170, 170, 170);
  fill(50, 100, 50);
  ellipse(200, 150, 30, 15);
  fill(0, 50, 10);
  circle(200, 150, 15);
}

void draw() {

  background(255);
  tri();
}
