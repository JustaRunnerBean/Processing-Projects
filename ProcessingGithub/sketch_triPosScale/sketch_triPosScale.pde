void setup(){
size(400, 400);
}

void tri(float xPos, float yPos, float scale) {
//origninal
//xPos=200
//yPos = 150
//scale = 1
  
  stroke(0, 25, 0);
  fill(100, 255, 100);
  triangle(xPos, yPos-50*scale, xPos+30*scale, yPos+20*scale, xPos-30*scale, yPos+20*scale);
  
  fill(50, 100, 50);
  ellipse(xPos, yPos, 30*scale, 15*scale);
  
  fill(0, 50, 10);
  circle(xPos, yPos, 15*scale);
}

void draw() {

  background(255);
  tri(width/2,height/2,0.5);
  tri(width/2,height/4,2);
  tri(width/2,3*height/4,1.5);
  
}
