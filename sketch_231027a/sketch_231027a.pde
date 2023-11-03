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
float button1X, button1Y, buttonSide;
color Red =(#AD1A1A), White =(#FFFFFF), Black =(#000000), Quit =(#FF4400);
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
xRectQuit = backgroundX*16/5 ;
yRectQuit = yRect;
widthRectQuit = widthRect;
heightRectQuit = heightRect;
rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
ellipse(faceX, faceY, faceDiameter, faceDiameter );
button1X = backgroundX;
  button1Y = backgroundY;
  buttonSide = smallerDimension/2-sqrt(sq(smallerDimension/2)/2);
  rect( button1X, button1Y, buttonSide, buttonSide );
  println(backgroundX, smallerDimension, smallerDimension/2, sq( smallerDimension/2 ), sq( smallerDimension/2 ) /2, sqrt( sq( smallerDimension/2 ) /2 ), smallerDimension/2-sqrt(sq(smallerDimension/2)/2) );
//
//DIVs
} //End setup
//
void draw() {
fill(Red);
measleDiameter = random(smallerDimension*1/100, smallerDimension*1/30);
measleX = random(backgroundX+(measleDiameter/2), backgroundX+backgroundWidth)-(measleDiameter/2);
while ( measleX < button1X+buttonSide ) measleX = random( backgroundX+(measleDiameter/2), (backgroundX+backgroundWidth)-(measleDiameter/2) );
measleY = random(backgroundY+(measleDiameter/2), backgroundY+backgroundHeight)-(measleDiameter/2); 
 while ( measleY < button1Y+buttonSide  ) measleY = random( backgroundY+(measleDiameter/2), (backgroundY+backgroundHeight)-(measleDiameter/2) );
  //button1X, button1Y, buttonSide,
noStroke();
ellipse(measleX, measleY, measleDiameter, measleDiameter);
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
rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
//
} //End draw
//
void keyPressed() {}
//
void mousePressed() {
if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) exit();
}
//End MAIN Program
