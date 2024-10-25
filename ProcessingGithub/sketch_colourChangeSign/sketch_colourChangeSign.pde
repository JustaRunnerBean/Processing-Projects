float x;
float y;
void setup() 
{
 size(200,300);
 //size(400,600);
 x = random(width);
 y = random(height);
}
 
void draw()
{
  
  background(100);
  fill(255);
  circle(x,y,100);
  rectMode(CENTER);
  rect(x,y,130,20);
  
  if (mouseX>x-65 && mouseX<x+65 && mouseY>y-10 && mouseY<y+10){;
    fill(0,0,255);
    rect(x,y,130,20);
}else if(mouseX>x-65 && mouseX<x+65 && mouseY>y-10 && mouseY<y+10){
}else{
     fill(255);
    rect(x,y,130,20);
   }
 
}
