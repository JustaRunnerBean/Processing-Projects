float manX = width/2;
float manY = height/2;
float v = 0;

void setup() {
  size(500, 500);
  noStroke();
  //background(0);
}
void draw() {
  /*//mouse control
  if (manX>0) {
    v-- ;
  } else if (manX<0) {
    v++ ;
  } else if (manY>0) {
    v-- ;
  } else if (manY<0) {
    v++ ;
  } else {
    
  }
  
  if (v < 3 || v >0){
    v = v + 1;
  }
  if (key == 'w') {
    manY = manY - v;
  } else if (key == 's') {
    manY = manY + v;
  } else if (key == 'd') {
    manX = manX + v;
  } else if (key == 'a') {
    manX = manX - v;
  } else {
    manX = 0;
    manY = 0;
  }

  if (manX > 1000 || manX<0){
   manX = -manX; 
  }
  
  if (manY > 1000 || manY<0){
   manY = -manY; 
  }
  */
  //background(0);
  
  //mouse movement
  manX = mouseX;
  manY = mouseY;
  for (int i=0; i<width; i=i+50) {
    for (int j=0; j<height; j=j+50) {
      float d = dist(i, j, manX, manY);
      float red = map(d, mouseY*255/1000, 300, 255, 0);
      float green = map(d, (mouseX+mouseY)*255/2000, 300, 255, 0);
      float blue = map(d, mouseX*255/1000, 300, 255, 0);
      //int roundNum = (int) Math.ceil(mouseX*255/1000);
      fill(red, green, blue);
      //stroke(grey,0,0);
      rect(i, j, 50, 50);
      //fill(0,0, 255-grey);
      //rect(i+grey*1/255, j+grey*1/255, 5, 5);
    }
  }
}
