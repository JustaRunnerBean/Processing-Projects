float x = 0;
float y = 0;
float z = 0;
void setup() {
  background(0);
  size(1000, 1000);
  //frameRate(15);
}
void draw() {
 //background(0);
  stroke(255);
  //r=sin3theta, sq(x)+sq(y)=sin(3*z)
  //y=tan(z)*x
  x = (sin(4*z))/(1+sq(tan(z)));
  y = (sin(4*z))/(1+sq(1/tan(z)));
  //x = sqrt((sq(2*sin(z/3)))-sq(y));
  //y = sqrt((sq(2*sin(z/3)))-sq(x));
  circle(((x*100)+(width/2)), ((y*100)+(height/2)), 5);
  z=z+1;
  //x = x +1;
  //y = y +1;
  //200*sin(z/3))
}
