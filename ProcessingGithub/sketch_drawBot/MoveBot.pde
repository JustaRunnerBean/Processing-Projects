public class Robot
{
  public PVector position;   // Position of the robot.
  public PVector velocity;   // Amount it moves on each redraw.
  public float size;         // Size of robot.
  public color colour;       // Colour of robot.
 
  // Initialises the robot's state.
  public Robot()
  {
    position = new PVector(width/2, height/2);
    velocity = new PVector(random(0,5),random(-2,2));
    //    velocity = new PVector(random(-2,2),random(-2,2));
    size     = 100;
    colour   = color(0, 0, 0);
  }
 
   //Draws the robot at its current position.
  void draw()
  {
    noStroke();
    //fill(colour);
    //rect(position.x, position.y, size, size);
    //delay(60);
    designRobot dr = new designRobot();
    dr.draw();
  }
 
  // Moves the robot according to its current velocity.
  void move()
  {
    position.x = (position.x + velocity.x);
    position.y = (position.y + velocity.y);
 
    if (position.x < 0)
    {
      velocity.x = -1 * velocity.x; // If robot at left of sketch move to right.
    }
    else if (position.x > width-size)
    {
      velocity.x = -1 * velocity.x; // If robot at right of sketch move to left.
    }
 
    if (position.y < 0)
    {
      velocity.y = -1 * velocity.y; // If robot at top of sketch move down.
    }
    else if (position.y > height-size)
    {
      velocity.y = -1 * velocity.y; // If robot at bottom of sketch move  up.
    }
  }
}
