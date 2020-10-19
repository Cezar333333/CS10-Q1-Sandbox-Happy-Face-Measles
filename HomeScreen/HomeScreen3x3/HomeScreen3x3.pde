//Global Variables
color circleBlue =#2CBCCE, white=255, black=0, pink=#FF00E6, brown=#BC6F2F;
color blue=#2CBCCE;
color green=#66ff66;
color yellow=#F2DC33;
color purple=#8863C4;
color red=#cc0000;
color orange=#ff3300;
color grey=#a3a375;
Boolean turnOnBlue=false, turnOnPink=false, turnOnBrown=false , turnOnGreen=false , turnOnYellow= false , turnOnPurple= false , turnOnOrange= false , turnOnGrey= false, turnOnImage= false;
float ptDiameter, rectWidth, rectHeight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y;
float pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
float pt9X, pt9Y, pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y;
float pt13X, pt13Y, pt14X, pt14Y, pt15X, pt15Y, pt16X, pt16Y;
float button1X, button1Y, button1Width, button1Height;
float button2X, button2Y, button2Width, button2Height;
float button3X, button3Y, button3Width, button3Height;
float button4X, button4Y, button4Width, button4Height;
float button5X, button5Y, button5Width, button5Height;
float button6X, button6Y, button6Width, button6Height;
float button7X, button7Y, button7Width, button7Height;
float button8X, button8Y, button8Width, button8Height;
float button9X, button9Y, button9Width, button9Height;
PImage pic;
float imageStartWidth, imageStartHeight, imageWidth, imageHeight;
float imageWidthRatio;
float imageHeightRatio;
String title= "X";
PFont titleFont;

void setup() {
  size(500, 600);
  ptDiameter = width * 1 / 27.77777777;
  rectWidth = width*1/3;
  rectHeight = height*1/3;
  //
  pt1X = pt5X = pt9X = pt13X = width*0;
  pt2X = pt6X = pt10X = pt14X = width*1/3;
  pt3X = pt7X = pt11X = pt15X = width*2/3;
  pt4X = pt8X = pt12X = pt16X = width*3/3;
  //
  pt1Y = pt2Y = pt3Y = pt4Y = height*0;
  pt5Y = pt6Y = pt7Y = pt8Y = height*1/3;
  pt9Y = pt10Y = pt11Y = pt12Y = height*2/3;
  pt13Y = pt14Y = pt15Y = pt16Y= height*3/3;
  //
  //Button to illustrate arithmetic
  button1X = width * 1/3 * 1/3; //Section 1, subsection 1
  button1Y = height * 1/3 * 1/3; //Section 1, subsection 1
  button1Width = width * 2/3 * 1/3;
  button1Height = height * 2/3 * 1/3;
  //
  //Button to illustrate arithmetic
  button2X = width * 2/6; //Section 2, subsection 1: denominator is 3*2, numerator is counted
  button2Y = height * 3/6 ; //Section 2, subsection 0: denominator is 3*2, numerator is counted
  button2Width = width * 2/3 * 1/2;
  button2Height = height * 1/3 * 1/2;
  //
  //Button to illustrate arithmetic
  button3X = width * 13/15; //Section 3, subsection 2: denominator is 3*5, numerator is counted
  button3Y = height * 14/16; //Section 3, subsection 4: denominator is 3*5, numerator is counted
  button3Width = width * 6/3 * 1/5;
  button3Height = height * 2/3 * 1/5;

  //Last Button to Test Concept of Buttons
  button4X = width *5/14;
  button4Y = height*4/15; 
  button4Width = width*4/15;
  button4Height = height*1/15;
  
  button5X = width *9/12;
  button5Y = height *4/12;
  button5Width = width*3/14;
  button5Height = height*4/12;
  
  button6X = width *5/12;
  button6Y = height *9/12;
  button6Width = width*3/14;
  button6Height = height*2/12;
  
  button7X = width *1/12;
  button7Y = height *8/12;
  button7Width = width*3/14;
  button7Height = height*2/12;
  
  button8X = width *0/12;
  button8Y = height *5/12;
  button8Width = width*1/14;
  button8Height = height*2/12;
  
  button9X = width *9/12;
  button9Y = height *1/12;
  button9Width = width*3/14;
  button9Height = height*2/12;
  //
  pic = loadImage("theoreticala.jpg"); //Dimension: 512 Width, 345 Height
  imageWidthRatio = 512.0/512.0; //must be decmals due to flat
  imageHeightRatio = 512/512.0; //must be decmals due to flat
  imageStartWidth = width*1/3;
  imageStartHeight = height*0;
  imageWidth = width*1/3*imageWidthRatio; //Aspect Ratio
  imageHeight = height*1/3*imageHeightRatio; //Aspect Ratio
  
  titleFont = createFont ("BernardMT-Condensed-48", 55);
}

void draw() {
  //fill(white);
  rect(pt1X, pt1Y, rectWidth, rectHeight);
  //Bug: must press reset, Btn#4, each time to reset colour
  if (turnOnBlue == true ) {
    fill(blue);
  }
  if (turnOnPink == true) {
    fill(pink);
  }
  if (turnOnBrown == true) {
    fill(brown);
  }
  if (turnOnGreen == true) {
    fill(green);
  }
  if (turnOnYellow == true) {
    fill(yellow);
  }
  if (turnOnPurple == true) {
    fill(purple);
  }
  if (turnOnOrange == true) {
    fill(orange);
  }
  if (turnOnGrey == true) {
    fill(grey);
  }
  
  rect(pt2X, pt2Y, rectWidth, rectHeight);
  fill(white);
  rect(pt3X, pt3Y, rectWidth, rectHeight);
  //
  rect(pt5X, pt5Y, rectWidth, rectHeight);
  rect(pt6X, pt6Y, rectWidth, rectHeight);
  rect(pt7X, pt7Y, rectWidth, rectHeight);
  //
  rect(pt9X, pt9Y, rectWidth, rectHeight);
  rect(pt10X, pt10Y, rectWidth, rectHeight);
  rect(pt11X, pt11Y, rectWidth, rectHeight);
  //
  if (turnOnImage == true)
    image(pic, imageStartWidth, imageStartHeight, imageWidth, imageHeight);
  //
  //Button Rectangles
  if ( mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
    fill(blue);
    rect(button1X, button1Y, button1Width, button1Height);
  } else {
    fill(black);
    rect(button1X, button1Y, button1Width, button1Height);
  }
  if ( mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
    fill(pink);
    rect(button2X, button2Y, button2Width, button2Height);
  } else {
    fill(black);
    rect(button2X, button2Y, button2Width, button2Height);
  }
  if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
    fill(brown);
    rect(button3X, button3Y, button3Width, button3Height);
  } else {
    fill(black);
    rect(button3X, button3Y, button3Width, button3Height);
  }
  if ( mouseX>=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) {
    fill(red);
    rect(button4X, button4Y, button4Width, button4Height);
  } else {
    fill(black);
    rect(button4X, button4Y, button4Width, button4Height);
  }
  if ( mouseX>=button5X && mouseX<=button5X+button5Width && mouseY>=button5Y && mouseY<=button5Y+button5Height) {
    fill(green);
    rect(button5X, button5Y, button5Width, button5Height);
  } else {
    fill(black);
    rect(button5X, button5Y, button5Width, button5Height);
  }
  
  if ( mouseX>=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<=button6Y+button6Height) {
    fill(yellow);
    rect(button6X, button6Y, button6Width, button6Height);
  } else {
    fill(black);
    rect(button6X, button6Y, button6Width, button6Height);
  }
  if ( mouseX>=button7X && mouseX<=button7X+button7Width && mouseY>=button7Y && mouseY<=button7Y+button7Height) {
    fill(purple);
    rect(button7X, button7Y, button7Width, button7Height);
  } else {
    fill(black);
    rect(button7X, button7Y, button7Width, button7Height);
  }
   if ( mouseX>=button8X && mouseX<=button8X+button8Width && mouseY>=button8Y && mouseY<=button8Y+button8Height) {
    fill(orange);
    rect(button8X, button8Y, button8Width, button8Height);
  } else {
    fill(black);
    rect(button8X, button8Y, button8Width, button8Height);
  }
  if ( mouseX>=button9X && mouseX<=button9X+button9Width && mouseY>=button9Y && mouseY<=button9Y+button9Height) {
    fill(grey);
    rect(button9X, button9Y, button9Width, button9Height);
  } else {
    fill(black);
    rect(button9X, button9Y, button9Width, button9Height);
  }
  //Text in Quit Button
  fill(#2C08FF); //Purple Ink, copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  textFont(titleFont, 29); //Change the number until it fits, largest font size
  text(title, width*0/16, height*7.4/16, width*1/16, height*1/16);
  fill(255); //Reset to white for rest of the program
  
  fill(black); //Reset all IF-ELSE
  //
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt6X, pt6Y, ptDiameter, ptDiameter);
  ellipse(pt7X, pt7Y, ptDiameter, ptDiameter);
  ellipse(pt9X, pt9Y, ptDiameter, ptDiameter);
  ellipse(pt10X, pt10Y, ptDiameter, ptDiameter);
  ellipse(pt11X, pt11Y, ptDiameter, ptDiameter);
  //
  fill(circleBlue);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  ellipse(pt8X, pt8Y, ptDiameter, ptDiameter);
  ellipse(pt12X, pt12Y, ptDiameter, ptDiameter);
  ellipse(pt13X, pt13Y, ptDiameter, ptDiameter);
  ellipse(pt14X, pt14Y, ptDiameter, ptDiameter);
  ellipse(pt15X, pt15Y, ptDiameter, ptDiameter);
  ellipse(pt16X, pt16Y, ptDiameter, ptDiameter);
  fill(white);
}

void mousePressed() {
  if ( mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
    println("Btn 1 activated");
    turnOnBlue = true;
    turnOnPink = false;
    turnOnBrown = false;
    turnOnGreen = false;
    turnOnYellow= false;
    turnOnPurple= false;
    turnOnOrange= false;
    turnOnGrey= false;
    turnOnImage= false;
  }
  if ( mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
    println("Btn 2 activated");
    turnOnPink = true;
    turnOnBlue = false;
    turnOnBrown = false;
    turnOnGreen = false;
    turnOnYellow= false;
    turnOnPurple= false;
    turnOnOrange= false;
    turnOnGrey= false;
    turnOnImage= false;
  }
  if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
    println("Btn 3 activated");
    turnOnBrown = true;
    turnOnBlue = false;
    turnOnPink = false;
    turnOnGreen = false;
    turnOnYellow= false;
    turnOnPurple= false;
    turnOnOrange= false;
    turnOnGrey= false;
    turnOnImage= false;
  }
  if ( mouseX>=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) {
    println("Btn 4 activated");
    turnOnBlue = false;
    turnOnPink = false;
    turnOnBrown = false;
    turnOnGreen = false;
    turnOnYellow= false;
    turnOnPurple= false;
    turnOnOrange= false;
    turnOnGrey= false;
    turnOnImage= false;
  }
  if ( mouseX>=button5X && mouseX<=button5X+button5Width && mouseY>=button5Y && mouseY<=button5Y+button5Height) {
    println("Btn 5 activated");
    turnOnGreen = true;
    turnOnBlue = false;
    turnOnPink = false;
    turnOnBrown = false;
    turnOnPurple= false;
    turnOnOrange= false;
    turnOnGrey= false;
    turnOnImage= false;
  }
  if ( mouseX>=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<=button6Y+button6Height) {
    println("Btn 6 activated");
    turnOnYellow = true;
    turnOnBlue = false;
    turnOnPink = false;
    turnOnBrown = false;
    turnOnGreen = false;
    turnOnPurple= false;
    turnOnOrange= false;
    turnOnGrey= false;
    turnOnImage= false;
}
if ( mouseX>=button7X && mouseX<=button6X+button7Width && mouseY>=button7Y && mouseY<=button7Y+button7Height) {
    println("Btn 7 activated");
    turnOnPurple= true;
    turnOnBlue = false;
    turnOnPink = false;
    turnOnBrown = false;
    turnOnGreen = false;
    turnOnYellow= false;
    turnOnOrange= false;
    turnOnGrey= false;
    turnOnImage= false;
}
if ( mouseX>=button8X && mouseX<=button8X+button8Width && mouseY>=button8Y && mouseY<=button8Y+button8Height) {
    println("Btn 8 activated");
  exit();
}
if ( mouseX>=button9X && mouseX<=button9X+button9Width && mouseY>=button9Y && mouseY<=button9Y+button9Height) {
    println("Btn 9 activated");
    turnOnImage= true;
    turnOnBlue = false;
    turnOnPink = false;
    turnOnBrown = false;
    turnOnGreen = false;
    turnOnYellow= false;
    turnOnPurple= false;
    turnOnOrange= false;
    turnOnGrey= false;
}
}
