
void setup() {
  size(1000,1000);
  //noStroke();
  
}
void draw() {
  for (int i=0; i<1000; i=i+50) {
    for (int j=0; j<1000; j=j+50) {
      float d = dist(i,j,mouseX,mouseY);
      float grey = map(d, 0, 300, 0, 255);
      //int roundNum = (int) Math.ceil(mouseX*255/1000);
      fill(grey);
      stroke(grey);
      rect(i, j, 5, 5);    
    }
  }
}
