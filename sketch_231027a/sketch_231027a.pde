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
Boolean measlesOn=false, splashScreen=false;
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
  //
   rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter );
  //
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
void draw () {
 
  if(splashScreen==false) background(-5);
  if (splashScreen==true) measlesProgram();
}
void keyPressed() {
  if (key==' ') measlesOn=true;
  if (key==CODED&& keyCode==SHIFT) measlesOn=false;
  if (key==CODED&& keyCode==ESC) println("quit");
}
//
void mousePressed() {
  splashScreen=true;
  //
  if (mouseX> button1X && mouseX<button1X+buttonSide && mouseY>button1Y && mouseY<button1Y+buttonSide) measlesOn= true;
  if (mouseX> button2X && mouseX<button2X+buttonSide && mouseY>button2Y && mouseY<button2Y+buttonSide)   measlesOn=false;
  if (mouseX> button3X && mouseX<button3X+buttonSide && mouseY>button3Y && mouseY<button3Y+buttonSide)  exit();
  
}
//End MAIN Program
