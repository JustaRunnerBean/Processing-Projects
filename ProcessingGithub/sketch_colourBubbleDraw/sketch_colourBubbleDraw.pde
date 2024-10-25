void setup(){
  size(500,500);
  background(255,240,255);
  noStroke();
  frameRate(30);
}

void draw(){
  fill(mouseX,150,mouseY, 100);
  circle(mouseX,mouseY,random(10)+5);
  
}
