int playX = 0;
int playY = 550;
int red = 0;
int blue = 255;
int floor = 590;
void setup(){
  
  background(200,200,200);
  size(900,700);
}

void draw(){
  background(200,200,200);
  fill(0,0,0);
  rect(0,20,900,70);
  rect(floor,220,320,70);
  fill(255,0,0);
  rect(width/2,20,200,70);
  fill(0,0,0);
  rect(0,580,900,700);
  fill(red,0,blue);
  rect(playX,playY,30,30);
  println(playX,playY);
  if((red == 255) && (playX >= 450) && (playX<=630)){
   playY-=20;
   if(playY<=90){
     playY = 90;
   }
  }
  if((blue == 255) && (playX >= 450) && (playX<=630)){
   playY+=20;
   if(playY>=550){
     playY = 550;
   } else if((playX>=620) && (playX<=650) && (playY<=550)){
     playY=190;
     }
  }
}


void keyPressed(){
  if(keyCode == UP){
    red = 255;
    blue = 0;
  }
  
  if(keyCode == RIGHT){
    playX+=10;
  }
    if(playX == 900){
     playX = -5; 
    }
   if(keyCode == DOWN){
    blue = 255;
    red = 0;
   }
}
