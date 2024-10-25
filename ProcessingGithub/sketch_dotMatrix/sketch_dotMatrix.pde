float x;
float y;
void setup(){
  //frameRate(5);
  size(1000,1000);
  background(0);
  x = 500;
  y = 500;
  noStroke();
  fill(255);
}
void draw(){
  ellipse(x,y,5,5);
  fill(x*0.2602,y*0.2602,random(255));
  x = 480*cos(x+1)+500;
  y = 480*sin(y+1)+500;
  println(x,y);
}
