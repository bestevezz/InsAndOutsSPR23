import processing.serial.*; //imports Serial library from Processing
Serial myPort; // creates object from Serial class
int sensorVal = 0;

int pcX = 0;
int pcY = 550;
int red = 0;
int blue = 255;
int floor = 590;
void setup(){
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
  
  background(200,200,200);
  size(900,700);
}

void draw(){
  if ( myPort.available() > 0) { // If data is available,
  sensorVal = myPort.read(); // read it and store it in val
}
  detectValSensor(sensorVal);
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
  println(sensorVal);
  if((red == 255) && (pcX >= 450) && (pcX<=595)){
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


void detectValSensor(int val){
  if((val >= 1) && (val <=2)){
    red = 255;
    blue = 0;
  }
  
  if(val >= 2){
    pcX+=5;
    if(pcX == 900){
     pcX = 0; 
    }
  }
   if(val ==0){
    blue = 255;
    red = 0;
   }
}
