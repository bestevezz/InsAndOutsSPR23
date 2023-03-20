//Planetary Shift by Bryan Estevez

PImage light;
PImage dark;

//Code from textbook Getting Started with Processing page 108
int startX = 10;
int stopX = 265;
int startY = 10;
int stopY = 265;
float x = startX;
float y = startY;
float step = 0.005;
float pct = 0.0;
int startX2 = 710;
int stopX2 = 440;
int startY2 = 710;
int stopY2 = 440;
float x2 = startX2;
float y2 = startY2;
float step2 = 0.005;
float pct2 = 0.0;

void setup(){
  size(720,720);
  imageMode(CENTER);
  textAlign(CENTER);
  textSize(20);
  light = loadImage("1stPlanet.png");
  dark = loadImage("2ndPlanet.png");
}

void draw(){
  float timerX = 0.0;
  float addTimerX = 0.005;
  background(0);
  image(dark,x,y,300,300);
  image(light,x2,y2,300,300);
  println(x);
  if( x >= 264.990){
    background(255);
    fill(0);
    text("The planets have shifted",width/2,height/2);
  }
  if((mouseX >= 260) && (mouseX <= 470) && (mouseY >= 280) && (mouseY <= 470)
  && (pct <1.0)){
    x = startX + ((stopX-startX)*pct);
    y = startY + ((stopY-startY)*pct);
    pct += step;
    x2 = startX2 + ((stopX2-startX2)*pct2);
    y2 = startY2 + ((stopY2-startY2)*pct2);
    pct2 += step2;
    timerX += addTimerX;
  }
}
