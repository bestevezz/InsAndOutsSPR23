int playX = 0;
int playY = 550;
int magnetX = 370;
int magnetY = 550;
int red = 255;
int blue = 0;

void setup(){
  background(200,200,200);
  size(900,700);
}

void draw(){
  background (200,200,200);
  fill(0,0,0);
  rect(0,20,900,70);
  rect(0,580,900,700);
  fill(200,200,200);
  stroke(255,0,0);
  rect(500,60,100,30);
  stroke(0);
  fill(red,0,blue);
  rect(playX,playY,30,30);
  fill(255,0,0);
  println(magnetX,magnetY);
  rect(magnetX,magnetY,100,30);
  if((red == 255) && (magnetX == playX) && (playX == 500)){
   magnetY-=10;
   if(magnetY<=60){
    magnetY = 60; 
   }
  } else if((red == 255) && (magnetX == playX) && (magnetX != 500)){
    magnetY -=10;
    if ((magnetY <= 330) && (playX != 500)){
     magnetY = 330; 
    }
  }
  if((blue == 255) && (magnetX == playX) && (playX != 500)){
   magnetY+=10;
   if((magnetY >= playY-50) && (playX !=500)){
    magnetY = playY-50; 
   }
  }
}

void keyPressed(){
  if(keyCode == UP){
    red = 255;
    blue = 0;
  }
  
  if(keyCode == RIGHT){
    if(magnetX == playX){
     magnetX+=10; 
    }
    playX+=10;
  }
    if(playX == 900){
     playX = -10; 
    } else if((magnetX >= 500) && (magnetY <= 330)){
     magnetX = 500; 
    }
   if(keyCode == DOWN){
    blue = 255;
    red = 0;
   }
   if(keyCode == SHIFT){
     if((playX >= 330) && (playX <=340) && (red == 0)){
       magnetX = playX;
       magnetY = playY-50;
     }
     
   }
}
