//global variables
int appWidth, appHeight, smallerDimension;
float faceX, faceY, faceDiameter;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float xRect, yRect, widthRect, heightRect;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen, mouthReset;
float measleX, measleY, measleDiameter;
float button1X, button1Y, button2X, button2Y, button3X, button3Y, buttonSide;
color Red =(#AD1A1A), White =(#FFFFFF), Black =(#000000), Quit =(#FF4400), Red2=(#A70202), Blue=(#0224A7), hoverOverColour=White;
String start="Start", stop="STOP", quit="X";
PFont buttonFont;
Boolean measlesOn=false;
//
void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  smallerDimension = (appWidth>= appHeight) ? appHeight: appWidth;
  println("Smaller Dimension is", smallerDimension);
  //
  //population
  faceX = appWidth*1/2;
  faceY = appHeight*1/2;
  faceDiameter =smallerDimension;
  backgroundX = faceX - faceDiameter*1/2;
  backgroundY = faceY - faceDiameter*1/2;
  backgroundWidth = faceDiameter;
  backgroundHeight = faceDiameter;
  leftEyeX = backgroundX + (smallerDimension*1/3);
  leftEyeY = backgroundY + (smallerDimension*1/3);
  eyeDiameter = smallerDimension*1/7;
  rightEyeX = backgroundX + (smallerDimension*2/3);
  rightEyeY = backgroundY + (smallerDimension*1/3);
  noseX1 = faceX ;
  noseY1 = leftEyeY;
  noseX2 = leftEyeX;
  noseY2 = faceY*4/3;
  noseX3 = rightEyeX;
  noseY3 = faceY*4/3;
  mouthX1 = noseX2;
  mouthY1 = backgroundY+smallerDimension*4/5;
  mouthX2 = noseX3;
  mouthY2 = mouthY1;
  mouthOpen = smallerDimension*1/20;
  mouthReset = smallerDimension/smallerDimension;
  xRect = backgroundX;
  yRect = backgroundY*1/5;
  widthRect = backgroundWidth*1/7;
  heightRect= backgroundHeight*1/7;
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter );
  button1X = backgroundX;
  button1Y = backgroundY;
  buttonSide = smallerDimension/2-sqrt(sq(smallerDimension/2)/2);
  button2X = backgroundX+faceDiameter-buttonSide;
  button2Y = button1Y;
  button3X = button2X;
  button3Y = backgroundY+faceDiameter-buttonSide;
  rect( button1X, button1Y, buttonSide, buttonSide );
  rect( button2X, button2Y, buttonSide, buttonSide );
  rect( button3X, button3Y, buttonSide, buttonSide );  
  buttonFont = createFont("ArialMT", 55);
  //
  //DIVs
} //End setup
//
void draw() { 
 println(button1X, mouseX, button1X+buttonSide, hoverOverColour);
  if ( mouseX>button1X && mouseX<button1X+buttonSide && mouseY>button1Y && mouseY<button1Y+buttonSide ) { //Buton 1
    println("here");
    hoverOverColour = Red2;
    fill( hoverOverColour );
    rect( button1X, button1Y, buttonSide, buttonSide );
    fill( White );
  } else if ( mouseX>button2X && mouseX<button2X+buttonSide && mouseY>button2Y && mouseY<button2Y+buttonSide ) { //Button 2
    hoverOverColour = Quit;
    fill( hoverOverColour );
    rect( button2X, button2Y, buttonSide, buttonSide );
  } else if ( mouseX>button3X && mouseX<button3X+buttonSide && mouseY>button3Y && mouseY<button3Y+buttonSide ) { //button 3
    hoverOverColour = Blue;
    fill( hoverOverColour );
    rect( button3X, button3Y, buttonSide, buttonSide );
  } else { //No Buttons
    hoverOverColour = White;
    fill( hoverOverColour );
    rect( button1X, button1Y, buttonSide, buttonSide );
    rect( button2X, button2Y, buttonSide, buttonSide );
    rect( button3X, button3Y, buttonSide, buttonSide );
  } 
  //
  fill(Black); //ink
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 45;
  textFont(buttonFont, size);
  text( start, button1X, button1Y, buttonSide, buttonSide);
  text(stop, button2X, button2Y, buttonSide, buttonSide);
  text(quit, button3X, button3Y, buttonSide, buttonSide);
  fill(Red);
   measleDiameter = random( smallerDimension*1/100, smallerDimension*1/30 );
  measleX = random( backgroundX+(measleDiameter/2), (backgroundX+backgroundWidth)-(measleDiameter/2) );
  measleY = random( backgroundY+(measleDiameter/2), (backgroundY+backgroundHeight)-(measleDiameter/2) );
  //IF runs once, but computer can randomly choose a measlesX that is error
  //WHILE will repeat until the randomly chosen variable fits
  while ( measleX <= button1X+buttonSide+(measleDiameter/2) && measleY <= button1Y+buttonSide+(measleDiameter/2)) {
    measleX = random( button1X+buttonSide+(measleDiameter/2), (backgroundX+backgroundWidth)-(measleDiameter/2) );
  }
  noStroke();
    if ( ((measleX-faceX)*(measleX-faceX))+((measleY-faceY)*(measleY-faceY)) < sq( ((faceDiameter/2)-(measleDiameter/2)) ) ); { 
  if (measlesOn==true) ellipse(measleX, measleY, measleDiameter, measleDiameter);
  }
  stroke(1);
  fill(White);
  //
  fill(Black);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  fill(White);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight(mouthOpen);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(mouthReset);
  fill(Quit);
} //End draw
//
void keyPressed() {
  if (key==' ') println("start");
  if (key==CODED&& keyCode==BACKSPACE) println("stop");
  if (key==CODED&& keyCode==ESC) println("quit");
}
//
void mousePressed() {
  
  if (mouseX> button1X && mouseX<button1X+buttonSide && mouseY>button1Y && mouseY<button1Y+buttonSide) measlesOn= true;
  if (mouseX> button2X && mouseX<button2X+buttonSide && mouseY>button2Y && mouseY<button2Y+buttonSide)   measlesOn=false;
  if (mouseX> button3X && mouseX<button3X+buttonSide && mouseY>button3Y && mouseY<button3Y+buttonSide)  exit();
  
}
//End MAIN Program
