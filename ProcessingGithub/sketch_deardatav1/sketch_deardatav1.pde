void setup(){
  size(500,500);
}

void draw(){
  //week
  for(int i = 0; i<7; i++){
    //number of weeks
    for(int j = 0; j<4; j++){
      fill(colour);
      
      circle(i*70+10, j*50+10,10);
    }
  }
}
