int pcX = 0;
int pcY = 550;
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
  rect(pcX,pcY,30,30);
  println(pcX,pcY);
  if((red == 255) && (pcX >= 450) && (pcX<=565)){
   pcY-=20;
   if(pcY<=90){
     pcY = 90;
   }
  } else if((red == 255) && (pcX >= 630) && (pcY == 90)){
    pcX=630;
  }
  if((blue == 255) && (pcX >= 450) && (pcX<=630)){
   pcY+=20;
   if(pcY>=550){
     pcY = 550;
   } else if((pcX>=565) && (pcX<=650) && (pcY<=550)){
     pcY=190;
     }
  }
}


void keyPressed(){
  if(keyCode == UP){
    red = 255;
    blue = 0;
  }
  
  if(keyCode == RIGHT){
    pcX+=10;
    if(pcX == 900){
     pcX = -10; 
    }
  }
   if(keyCode == DOWN){
    blue = 255;
    red = 0;
   }
}
