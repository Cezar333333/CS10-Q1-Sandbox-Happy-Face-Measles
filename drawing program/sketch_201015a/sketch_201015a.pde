// Global Variables
color ink, black=#000000;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
Boolean draw=false;
float rectX, rectY, rectWidth, rectHeight; 
float rect2X, rect2Y, rect2Width, rect2Height; 
float rect3X, rect3Y, rect3Width, rect3Height; 
float rect4X, rect4Y, rect4Width, rect4Height; 
float rect5X, rect5Y, rect5Width, rect5Height; 
float rect6X, rect6Y, rect6Width, rect6Height; 
float rect7X, rect7Y, rect7Width, rect7Height; 
float rect8X, rect8Y, rect8Width, rect8Height; 
float rect9X, rect9Y, rect9Width, rect9Height; 
float rect10X, rect10Y, rect10Width, rect10Height; 
float rect11X, rect11Y, rect11Width, rect11Height; 
float circleX, circleY, circleWidth, circleHeight;
color red=#FF002F;
color orange=#FF8400;
color yellow=#FFF300;
color green=#2DFF00;
color blue=#001BFF;
color purple=#A900FF;
color black2=#000000;
color white=1;
String title1= "Color";
String title2= "Brush!";
String title3= "Images!";

void setup() {
  size(1000, 900);
  quitButtonSetup();
  drawingSurfaceX = width*9/32;
  drawingSurfaceY = height*5/30;
  drawingSurfaceWidth = width*22/32;
  drawingSurfaceHeight = height*25/32;
  
  
  println("Start of Console");
//String[] fontList = PFont.list(); //To list all fonts available on system
//printArray(fontList); //For listing all possible fonts to choose, then createFont
titleFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  
  
  println("Start of Console");
//String[] fontList = PFont.list(); //To list all fonts available on system
//printArray(fontList); //For listing all possible fonts to choose, then createFont
titleFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  
  
  rectX= width*0;
  rectY= height*0;
  rectWidth= width*1/4;
  rectHeight= height*4/3;
  
  rect2X= width*1/34;
  rect2Y= height*1/9;
  rect2Width= width*1/5;
  rect2Height= height*1/14;
  
  rect3X= width*1/34;
  rect3Y= height*2/9;
  rect3Width= width*1/5;
  rect3Height= height*1/14;
  
  rect4X= width*1/34;
  rect4Y= height*3/9;
  rect4Width= width*1/5;
  rect4Height= height*1/14;
  
  rect5X= width*1/34;
  rect5Y= height*4/9;
  rect5Width= width*1/5;
  rect5Height= height*1/14;
  
  rect6X= width*1/34;
  rect6Y= height*5/9;
  rect6Width= width*1/5;
  rect6Height= height*1/14;
  
  rect7X= width*1/34;
  rect7Y= height*6/9;
  rect7Width= width*1/5;
  rect7Height= height*1/14;
  
  rect8X= width*1/34;
  rect8Y= height*7/9;
  rect8Width= width*1/5;
  rect8Height= height*1/14;
  
  rect9X= width*1/34;
  rect9Y= height*8/9;
  rect9Width= width*1/5;
  rect9Height= height*1/14;
  
  rect10X= width*2/33;
  rect10Y= height*.1/9;
  rect10Width= width*1/7;
  rect10Height= height*1/16;
  
  rect11X= width*10/33;
  rect11Y= height*.9/30;
  rect11Width= width*20/32;
  rect11Height= height*2/16;
  
    
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  rect(rectX, rectY, rectWidth, rectHeight);
  fill (red);
  rect(rect2X, rect2Y, rect2Width, rect2Height);
  fill (orange);
  rect(rect3X, rect3Y, rect3Width, rect3Height);
  fill (yellow);
  rect(rect4X, rect4Y, rect4Width, rect4Height);
  fill (green);
  rect(rect5X, rect5Y, rect5Width, rect5Height);
  fill (blue);
  rect(rect6X, rect6Y, rect6Width, rect6Height);
  fill (purple);
  rect(rect7X, rect7Y, rect7Width, rect7Height);
  fill (black2);
  rect(rect8X, rect8Y, rect8Width, rect8Height);
  noFill();
  rect(rect9X, rect9Y, rect9Width, rect9Height);
  rect(rect10X, rect10Y, rect10Width, rect10Height);
  fill(white);
  rect(rect11X, rect11Y, rect11Width, rect11Height);
  circle(53, 46, 55);
  
}

void draw() {
  quitButtonDraw();

  if (draw == true) {
    fill(ink);
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  }
  rect(width*0, height*0, width*8/32, height*3/32);
fill(purple); //Ink, hexidecimal copied from Color Selector
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(titleFont, 50); //Change the number until it fits, largest font size
text(title1, width*0, height*0, width*8/32, height*3/32);
fill(255); //Reset to white for rest of the program

 rect(width*1, height*0, width*8/32, height*3/32);
fill(purple); //Ink, hexidecimal copied from Color Selector
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(titleFont, 50); //Change the number until it fits, largest font size
text(title2, width*10/32, height*1/46, width*6/32, height*4/30);
fill(255); //Reset to white for rest of the program


}

void mousePressed() {
  quitButtonMouseClicked();
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    println("drawing surface");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
    ink = black; // example to change ink
    drawingDiameter = width*1/100;

  }
}
