float xPos = random(500);
float yPos = random(500);
float col = 0;

void setup() {
  size(500, 500);
}


void draw() {
  background(0);
  fill(255);
  text(frameCount/60, 10, 10);

  //scope
  stroke(250);
  fill(255);
  circle(mouseX, mouseY, 45);

  //crosshairs
  stroke(255, 0, 0);
  line(mouseX, mouseY-5, mouseX, mouseY+5);
  line(mouseX-5, mouseY, mouseX+5, mouseY);

  float d = dist(xPos, yPos, mouseX, mouseY);
  float maxDist = dist(0, 0, width/2, height/2);
  //float gray = map(d, , maxDist, 0, 255);
  //println(maxDist, gray, d);
  println(d, xPos);

  noStroke();
  //float gray = map(d, 0, 25, 0, 255);
  //println(d, maxDist,gray);
  //fill(gray);
  //fill(160,82,45);
  fill(col, 0, 0);
  circle(xPos, yPos, 5);

  //if xPos >

  if (d <25) {
    
    xPos = xPos - 2*sin(mouseX-xPos);
    yPos = yPos - 2*sin(mouseY-yPos);
  } 
  if (d <10) {
    xPos = xPos - 2*cos(mouseX-xPos);
    yPos = yPos - 2*cos(mouseY-yPos);
    col = col + 3;
    if (col > 255) {
      fill(0, 255, 0);
      textAlign(CENTER);
      text("you win", height/2, width/2);
      frameRate(0);
    }
  }
 else if (col > 0) {
  col --;
}
}
