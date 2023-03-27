//20 Seconds by Bryan Estevez
//Scene Holder
int scene = 0;
//Eye holders for color change
int redEye = 255;
int eyePlace = 255;
int eyePlace2 = 255;
int eyePlace3 = 255;
//Nose hair length to change
int noseHairLgnth = 440;
int noseHairLgnth2 = 500;
//Holder for amounts clicked
int keyPressedAmt = 0;
//Timer holders to display and change timer
int begin;
int duration = 20;
int time = 20;
//Image of the nose
PFont funky;
//Floats for random positions of eyes
float circleX;
float circleY;
float circleX2;
float circleY2;
float circleX3;
float circleY3;
//Float for nosehair to require random number of clicks
float noseHair;
PImage nose;


void setup(){
  //Yellow bg
  background(220,220,60);
  size (800,800);
  //Proper centering
  ellipseMode(CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
  //Initializing random numbers
  //Initialized in setup so they will stay the same
  //until the game is played over and they are called in Scene 3
  circleX = random(200,600);
  circleY = random(200,600);
  circleX2 = random(200,600);
  circleY2 = random(200,600);
  circleX3 = random(200,600);
  circleY3 = random(200,600);
  noseHair = int(random(10,40));
  nose = loadImage("nose.png");
  //Using funky font
  funky = createFont("Funky.otf",35);
  textFont(funky);
  //Starting timer using millis
  begin=millis();
}

void draw(){
  //Yellow BG to refresh and draw over other scenes
  background(220,220,60);
  //Starting Scene
  if (scene==0){
    doScene0();
    }
    //Eye poke scene
    else if(scene==1){
      //timer is called here so it is updated while playing
    time = duration - (millis() - begin)/1000;
    fill(255,20,255);
    text(time,400,100);
     doScene1();
    } 
    //Nose pluck scene
    else if(scene==2){
      //timer is called here so it is updated while playing
     time = duration - (millis() - begin)/1000;
     fill(255,20,255);
     textSize(30);
     text(time,400,100);
     doScene2();
     //Reset for eye game so when retrying it wont skip past it
     eyePlace=255;
     eyePlace2=255;
     eyePlace3=255;
     
    }
    //Retry screen
    else if(scene==3){
      doScene3();
    }
  }

void mousePressed() {
  //Press start with mouse over starts game
   if((scene==0) && (mousePressed == true) && (mouseX>=210) && (mouseX<=590)
    && (mouseY >= 540) && (mouseY<=640)){
      scene=1;
  }
  if((mousePressed==true) && (mouseX >= circleX-50) && (mouseX <= circleX+50)
    && (mouseY >= circleY-50) && (mouseY <= circleY+50)){
      eyePlace=0;
      createEye(redEye,circleX,circleY,eyePlace);
    }
    else if((mousePressed==true) && (mouseX >= circleX2-50) && (mouseX <= circleX2+50)
    && (mouseY >= circleY2-50) && (mouseY <= circleY2+50)) {
      eyePlace2=0;
     createEye(redEye,circleX2,circleY2,eyePlace); 
    }
    else if((mousePressed==true) && (mouseX >= circleX3-50) && (mouseX <= circleX3+50)
    && (mouseY >= circleY3-50) && (mouseY <= circleY3+50)) {
     eyePlace3=0;
     createEye(redEye,circleX3,circleY3,eyePlace); 
    }
  //Once all eyes are red, proceed to scene 2 
  //Calls score screen once the nosehair has reached desired length
  else if((noseHairLgnth==495) && (noseHairLgnth2==550)){
   doScene3(); 
  }
}

void keyPressed(){
  //Doing math for nosehair to increase when it gets closer to random number of inputs
     if((keyCode == DOWN) && (scene==2)){
      keyPressedAmt++;
      if(keyPressedAmt == noseHair-5){
        noseHairLgnth+=5;
        noseHairLgnth2+=5;
      }
      else if((keyCode == DOWN) && (keyPressedAmt == noseHair-3)){
        noseHairLgnth+=10;
        noseHairLgnth2+=10;
      }
      else if((keyCode == DOWN) && (keyPressedAmt == noseHair-1)){
        noseHairLgnth+=15;
        noseHairLgnth2+=15;
      }
      else if((keyCode == DOWN) && (keyPressedAmt == noseHair)){
        noseHairLgnth+=25;
        noseHairLgnth2+=25;
        scene=3;
      }
    } 
    //The reset condition, also resets timer for retrying
    if((keyCode == 'R') && (scene==3)){
     scene=0; 
     doScene0();
     time=20;
     duration=20;
    }
}

//Creates the basic eye with parameters to change color  
void createEye(int r,float x, float y, int yo) {
  //EyeBall
  strokeWeight(2);
  fill(r,yo,yo);
  ellipse(x,y,100,100);
  //Pupil
  fill(0);
  ellipse(x,y,40,40);
  }
//Simple to create the nose hair and arguments to change its length
void createNoseHair(int x, int y){
  strokeWeight(4);
  line(410,x,410,y);
}

//Eye poking game
void doScene1(){
  //Condition to go straight to end screen with 0 score if u do nothing
  if(time <= 0){
    scene=3;
  }
  fill(255,20,255);
  textSize(30);
  text("Poke the eyes!",400,700);
  //Creating eyes at random locations
  createEye(redEye,circleX,circleY,eyePlace);
  createEye(redEye,circleX2,circleY2,eyePlace2);
  createEye(redEye,circleX3,circleY3,eyePlace3);
  //If the eye is clickec anywhere on it, it will change to red
  if ((eyePlace == 0) && (eyePlace2 == 0) 
  && (eyePlace3 == 0)){
    scene=2;   
    doScene2();   
  }
}

//Nose pluck scene
void doScene2(){
  //Condition to go straight to end screen with 0 score if u do nothing
  if(time <= 0){
    scene=3;
  }
  fill(255,20,255);
  textSize(30);
  text("Pluck the nose hair!",400,700);
  textSize(20);
  text("(Spam 'down' key)",400,750);
  image(nose,width/2,height/2);
  //creates nose hair, which is updated with keyPressed function
  createNoseHair(noseHairLgnth,noseHairLgnth2);
  }
//Start screen  
void doScene0(){
  //Timer will not start until game has begun, and when reset
  //it will begin again at 20
   if(time==20){
   time=20;
   begin=millis();
  }
    text(time,400,100);
    fill(255,20,255);
    text(time + " Seconds to Win It!",400,200);
    text("Can You Do It?",400,300);
    //our click to start button
    text("Click Here to Start!",400,660);
    fill(0,0,0,0);
    strokeWeight(4);
    rect(400,650,380,100);
  }
//Score screen
void doScene3(){
  //reseting to old values, so game can be replayed
    if(scene==3){
      noseHairLgnth = 440;
      noseHairLgnth2 = 500;
      keyPressedAmt = 0;
      noseHair = int(random(10,40));
      textSize(30);
      fill(255,20,255);
      text(time + " was your score! Press r to replay.",400,400);
      //resetting random here so it will change when game is replayed
      circleX = random(200,600);
      circleY = random(200,600);
      circleX2 = random(200,600);
      circleY2 = random(200,600);
      circleX3 = random(200,600);
      circleY3 = random(200,600);
      noseHair = int(random(10,40));
    }
}
  
