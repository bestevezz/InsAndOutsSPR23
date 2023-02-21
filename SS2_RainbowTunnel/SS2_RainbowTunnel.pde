//Rainbow Tunnels by Bryan Estevez

float wOut1 = 255;
float wOut2 = 255;
float wOut3 = 255;
float wOut4 = 255;
float wOut5 = 255;
float wOut6 = 255;
float wOut7 = 255;
float wOut8 = 255;
float r = 0;
float g = 0;
float b = 0;
//float ranCol = random(0,255);
void setup(){
size(1080,720);
background(0,0,0);
  }
  
void draw(){
int cyLength = 510;
int cyWidth = 80;


//Interactivity of mouse position
if ((mouseX >= 10) && (mouseX <= 510) && (mouseY >=5) && (mouseY <=80)){
  wOut1 = 0;
  } else if ((mouseX >= 560) && (mouseX <= 1070) && (mouseY >=90) && (mouseY <=165)){
     wOut2 = 0;
  } else if ((mouseX >= 10) && (mouseX <= 510) && (mouseY >=175) && (mouseY <=250)){
     wOut3 = 0;
  }  else if ((mouseX >= 560) && (mouseX <= 1070) && (mouseY >=260) && (mouseY <=335)){
     wOut4 = 0;
  } else if ((mouseX >= 10) && (mouseX <= 510) && (mouseY >=345) && (mouseY <=420)){
     wOut5 = 0;
  } else if ((mouseX >= 560) && (mouseX <= 1070) && (mouseY >=430) && (mouseY <=505)){
     wOut6 = 0;
  } else if ((mouseX >= 10) && (mouseX <= 510) && (mouseY >=515) && (mouseY <=590)){
     wOut7 = 0;
  } else if ((mouseX >= 560) && (mouseX <= 1070) && (mouseY >=600) && (mouseY <=675)){
     wOut8 = 0;
  } else { 
    wOut1 = 255;
    wOut2 = 255;
    wOut3 = 255;
    wOut4 = 255;
    wOut5 = 255;
    wOut6 = 255;
    wOut7 = 255;
    wOut8 = 255;
  }
  
//random color picker
 if (keyPressed == true) {
  background(255,255,255);
  } else if (keyPressed == false) {
  background(0,0,0);
  } else {
    wOut1 = 255;
    wOut2 = 255;
    wOut3 = 255;
    wOut4 = 255;
    wOut5 = 255;
    wOut6 = 255;
    wOut7 = 255;
    wOut8 = 255;
  }

//Cylinder 1
noStroke();
fill(r+255,g+153,b+153,210);
rect(10,10,cyLength,cyWidth);

//Cylinder 2
noStroke();
fill(r+250,g+159,b+120,210);
rect(560,100,cyLength,cyWidth);

//Cylinder 3
noStroke();
fill(r+250,g+ 239,b+ 120,210);
rect(10,190,cyLength,cyWidth);

//Cylinder 4
noStroke();
fill(r+170,g+250,b+ 120,210);
rect(560,280,cyLength,cyWidth);

//Cylinder 5
noStroke();
fill(r+120, b+250,b+ 194,210);
rect(10,370,cyLength,cyWidth);

//Cylinder 6
noStroke();
fill(r+120,g+179,b+250,210);
rect(560,460,cyLength,cyWidth);

//Cylinder 7
noStroke();
fill(r+165,g+120,b+250,210);
rect(10,550,cyLength,cyWidth);

//Cylinder 8
noStroke();
fill(r+244,g+120,b+250,210);
rect(560,640,cyLength,cyWidth);


//tunnel 1
stroke(wOut1,wOut1,wOut1);
fill(255,204,204);
ellipse(10,50,20,79);
ellipse(40,50,20,79);
ellipse(70,50,20,79);
ellipse(100,50,20,79);
ellipse(130,50,20,79);
ellipse(160,50,20,79);
ellipse(190,50,20,79);
ellipse(220,50,20,79);
ellipse(250,50,20,79);
ellipse(280,50,20,79);
ellipse(310,50,20,79);
ellipse(340,50,20,79);
ellipse(370,50,20,79);
ellipse(400,50,20,79);
ellipse(430,50,20,79);
ellipse(460,50,20,79);
ellipse(490,50,20,79);
ellipse(520,50,20,79); 


//tunnel 2
stroke(wOut2,wOut2,wOut2);
fill(252,183,153);
ellipse(560,140,20,79);
ellipse(590,140,20,79);
ellipse(620,140,20,79);
ellipse(650,140,20,79);
ellipse(680,140,20,79);
ellipse(710,140,20,79);
ellipse(740,140,20,79);
ellipse(770,140,20,79);
ellipse(800,140,20,79);
ellipse(830,140,20,79);
ellipse(860,140,20,79);
ellipse(890,140,20,79);
ellipse(920,140,20,79);
ellipse(950,140,20,79);
ellipse(980,140,20,79);
ellipse(1010,140,20,79);
ellipse(1040,140,20,79);
ellipse(1070,140,20,79);

//tunnel 3
stroke(wOut3,wOut3,wOut3);
fill(255, 255, 204);
ellipse(10,230,20,79);
ellipse(40,230,20,79);
ellipse(70,230,20,79);
ellipse(100,230,20,79);
ellipse(130,230,20,79);
ellipse(160,230,20,79);
ellipse(190,230,20,79);
ellipse(220,230,20,79);
ellipse(250,230,20,79);
ellipse(280,230,20,79);
ellipse(310,230,20,79);
ellipse(340,230,20,79);
ellipse(370,230,20,79);
ellipse(400,230,20,79);
ellipse(430,230,20,79);
ellipse(460,230,20,79);
ellipse(490,230,20,79);
ellipse(520,230,20,79); 

//tunnel 4
stroke(wOut4,wOut4,wOut4);
fill(213, 255, 204);
ellipse(560,320,20,79);
ellipse(590,320,20,79);
ellipse(620,320,20,79);
ellipse(650,320,20,79);
ellipse(680,320,20,79);
ellipse(710,320,20,79);
ellipse(740,320,20,79);
ellipse(770,320,20,79);
ellipse(800,320,20,79);
ellipse(830,320,20,79);
ellipse(860,320,20,79);
ellipse(890,320,20,79);
ellipse(920,320,20,79);
ellipse(950,320,20,79);
ellipse(980,320,20,79);
ellipse(1010,320,20,79);
ellipse(1040,320,20,79);
ellipse(1070,320,20,79);

//tunnel 5
stroke(wOut5,wOut5,wOut5);
fill(204, 255, 236);
ellipse(10,410,20,79);
ellipse(40,410,20,79);
ellipse(70,410,20,79);
ellipse(100,410,20,79);
ellipse(130,410,20,79);
ellipse(160,410,20,79);
ellipse(190,410,20,79);
ellipse(220,410,20,79);
ellipse(250,410,20,79);
ellipse(280,410,20,79);
ellipse(310,410,20,79);
ellipse(340,410,20,79);
ellipse(370,410,20,79);
ellipse(400,410,20,79);
ellipse(430,410,20,79);
ellipse(460,410,20,79);
ellipse(490,410,20,79);
ellipse(520,410,20,79); 

//tunnel 6
stroke(wOut6,wOut6,wOut6);
fill(204, 221, 255);
ellipse(560,500,20,79);
ellipse(590,500,20,79);
ellipse(620,500,20,79);
ellipse(650,500,20,79);
ellipse(680,500,20,79);
ellipse(710,500,20,79);
ellipse(740,500,20,79);
ellipse(770,500,20,79);
ellipse(800,500,20,79);
ellipse(830,500,20,79);
ellipse(860,500,20,79);
ellipse(890,500,20,79);
ellipse(920,500,20,79);
ellipse(950,500,20,79);
ellipse(980,500,20,79);
ellipse(1010,500,20,79);
ellipse(1040,500,20,79);
ellipse(1070,500,20,79);

//tunnel 7
stroke(wOut7,wOut7,wOut7);
fill(229, 204, 255);
ellipse(10,590,20,79);
ellipse(40,590,20,79);
ellipse(70,590,20,79);
ellipse(100,590,20,79);
ellipse(130,590,20,79);
ellipse(160,590,20,79);
ellipse(190,590,20,79);
ellipse(220,590,20,79);
ellipse(250,590,20,79);
ellipse(280,590,20,79);
ellipse(310,590,20,79);
ellipse(340,590,20,79);
ellipse(370,590,20,79);
ellipse(400,590,20,79);
ellipse(430,590,20,79);
ellipse(460,590,20,79);
ellipse(490,590,20,79);
ellipse(520,590,20,79); 

//tunnel 8
stroke(wOut8,wOut8,wOut8);
fill(255, 204, 244);
ellipse(560,680,20,79);
ellipse(590,680,20,79);
ellipse(620,680,20,79);
ellipse(650,680,20,79);
ellipse(680,680,20,79);
ellipse(710,680,20,79);
ellipse(740,680,20,79);
ellipse(770,680,20,79);
ellipse(800,680,20,79);
ellipse(830,680,20,79);
ellipse(860,680,20,79);
ellipse(890,680,20,79);
ellipse(920,680,20,79);
ellipse(950,680,20,79);
ellipse(980,680,20,79);
ellipse(1010,680,20,79);
ellipse(1040,680,20,79);
ellipse(1070,680,20,79);

  
}

void mousePressed(){
    r = random(0,255);
    g = random(0,255);
    b = random(0,255);

}
