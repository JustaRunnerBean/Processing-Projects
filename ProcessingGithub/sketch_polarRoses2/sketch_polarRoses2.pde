float x = 0;
float y = 0;
float z = 0;
void setup() {
  background(0);
  size(1000, 1000);
  noStroke();
  //frameRate(15);
}
void draw() {
 //background(0);
  
  //r=a+sinbtheta, e.g.(a=0, b=3), sq(x)+sq(y)=sin(3*z)
  //y=tan(z)*x
  float a = 1;
  float b = 3;
  float equation = a+sin(b*z);
  x = sqrt(sq(equation)/(1+sq(tan(z))));
  y = sqrt(sq(equation)/(1+sq(1/tan(z))));
  //notes
  //a=0,b=1 == 1-cos2z
  
  //earlyVersion
  //x = sqrt((sq(2*sin(z/3)))-sq(y));
  //y = sqrt((sq(2*sin(z/3)))-sq(x));
  
  //white
  fill(255);
  circle(((x*100)+(width/2)), ((y*100)+(height/2)), 5);
  
  //red
  fill(255,0,0);
  circle((-(x*100)+(width/2)), ((y*100)+(height/2)), 5);
  
  //green
  fill(0,255,0);
  circle(((x*100)+(width/2)), (-(y*100)+(height/2)), 5);
  
  //blue
  fill(0,0,255);
  circle((-(x*100)+(width/2)), (-(y*100)+(height/2)), 5);
  
  //smooth connection of shapes
  z=z+0.01;
  //x = x +1;
  //y = y +1;
  //200*sin(z/3))
}
