//Global Variables
int reset;
int faceX, faceY, faceDiameter;
int leftEyeX, leftEyeY, leftEyeDiameter;
int rightEyeX, rightEyeY, rightEyeDiameter;
int noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
color pink = #F07979;
color measlesColor = pink;
color white = 255;
color colorReset = white;
float measlesX, measlesY, measlesDiameter;
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, yellow, purple;
String quit = "X";
PFont titleFont;
color quitButtonPurple = #2C08FF;
color quitButtonColor = quitButtonPurple;
int angle ;
int coverX, coverY, coverDiameter, coverThick ;


void setup() {
  size(640, 360);
  background(102);
  fill(0, 102);
  
  //fullScreen();
  println("Screen Width is", displayWidth, "Screen Height is", displayHeight);
  //String[] fontList = PFont.list(); //To list fonts available on OS
  //println("Start of Console");
  //printArray(fontList);
  //
  population();
  //
  //faceDraw();
  background(250);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
}//End setup

void draw() {
  
  //
  if (mouseX>buttonX && mouseX<width && mouseY>buttonY && mouseY<buttonHeight) { //Button Hoverover
    buttonColour = yellow; //Hoverover
  } else {
    buttonColour = purple;
  }// End IF
  fill(buttonColour); //Purple all the time, Yellow with Hoverover
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(quitButtonColor);
  textAlign(CENTER, CENTER); //Aligns the X&Y
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, width*1/35);
  text(quit, buttonX, buttonY, buttonWidth, buttonHeight);
  fill(255); //Reset
  //
  measlesX = random(width*1/2-height*1/2, width*1/2+height*1/2);
  measlesY = random(height);
  measlesDiameter = random(height*1/70, height*1/40);
  fill(measlesColor);
  //Parameters are randomly set ;)
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  fill(colorReset);
  ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  fill(250);
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset);
  noFill();
  ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
fill(#FF039A);  // Set fill to white
ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);  // Draw white ellipse using RADIUS mode

ellipseMode(CENTER);  // Set ellipseMode to CENTER
fill(#da6af7);  // Set fill to gray
ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);  // Draw gray ellipse using CENTER mode

ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
fill(#F8FC2B);  // Set fill to white
ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);  // Draw white ellipse using RADIUS mode

ellipseMode(CENTER);  // Set ellipseMode to CENTER
fill(#6df76d);  // Set fill to gray
ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);  // Draw gray ellipse using CENTER mode
fill(#8fc7ff);
triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
noFill() ;
 strokeWeight(coverThick) ;
ellipse(coverX, coverY, coverDiameter, coverDiameter) ;
strokeWeight(reset) ;
// Draw only when mouse is pressed
  if (mousePressed == true) {
    angle += 5;
    float val = cos(radians(angle)) * 12.0;
    for (int a = 0; a < 360; a += 75) {
      float xoff = cos(radians(a)) * val;
      float yoff = sin(radians(a)) * val;
      fill(0);
      ellipse(mouseX + xoff, mouseY + yoff, val, val);
    }
    fill(255);
    ellipse(mouseX, mouseY, 2, 2);
  }


}//End draw



void keyPressed() {
  //Quit Keyboard Button
  if (key == 'q' || key == 'Q') { 
    exit();
  }//End IF
}//End keypressed

void mousePressed() {
  if ( mouseX>buttonX && mouseX<width && mouseY>buttonY && mouseY<buttonHeight ) {
    exit();
  }//End IF, using mouseX & mouseY
}//End mousePressed
