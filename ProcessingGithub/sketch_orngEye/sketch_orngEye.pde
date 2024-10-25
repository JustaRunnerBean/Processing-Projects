//float circleX;
//float circleY;
float radius = 15;

void setup() {
  size(500, 500);
}

void draw() {
  for (int circleX =0; circleX<width; circleX=circleX+20) {
    for (int circleY =0; circleY<height; circleY=circleY+20) {
      // -- check on distance from mouse to circle centre:
      float dist = dist(circleX, circleY, mouseX, mouseY);
      if ( dist < radius) {
        // -- within circle - do something
        fill(255, 128, 64);
      } else {
        // -- outside circle - do something else
        fill(255);
      }

      // -- draw the circle
      float shrink = map(dist,0,100,30,0);
      ellipse(circleX, circleY, radius+shrink, radius+shrink);
    }
  }
}
