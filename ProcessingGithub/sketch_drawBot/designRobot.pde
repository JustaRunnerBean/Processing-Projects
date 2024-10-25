//import Robot;
Robot mb = new Robot();

class designRobot
{
  void draw() {
    fill(200);
    rect(mb.position.x, mb.position.y, mb.size/2, mb.size/4);
    fill(255);
    circle(mb.position.x+50, mb.position.y, mb.size/5);
  }
}
