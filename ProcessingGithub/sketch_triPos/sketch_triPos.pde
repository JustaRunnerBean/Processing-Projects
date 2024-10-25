void setup(){
size(400, 400);
}

void tri(float xPos, float yPos) {
//xPos=200
//yPos = 150
  
  stroke(0, 25, 0);
  fill(100, 255, 100);
  triangle(xPos, yPos-50, xPos+30, yPos+20, xPos-30, yPos+20);
  
  fill(50, 100, 50);
  ellipse(xPos, yPos, 30, 15);
  
  fill(0, 50, 10);
  circle(xPos, yPos, 15);
}

void draw() {

  background(255);
  tri(width/2,height/2);
  tri(width/3,height/3);
  tri(width/4,height/4);
}
