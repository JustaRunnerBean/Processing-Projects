float[][] diameters;      // Declare a 2D array of floats


void setup()
{
  size(800,800);
  
  noStroke();
 
  diameters = new float[100][100];
  for (int row=0; row<100; row=row+1)
  {
    for (int col=0; col<100; col=col+1)
    {
      diameters[row][col] = random(1,10);
    }
  }
}
 
void draw()
{
  background(255);
  float fillColR = 0;
  float fillColG = 0;
 
  for (int row=0; row<100; row = row+1)
  {
    fillColR ++;
    for (int col=0; col<100; col = col+1)
    {
      fillColG ++;
      fill(fillColR,fillColG,0,100);
      circle(col*8, row*8,diameters[row][col]);
    }
  }
}
