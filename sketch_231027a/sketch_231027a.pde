//global variables
int appWidth, appHeight, smallerDimension;
float faceX, faceY, faceDiameter;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float xRect, yRect, widthRect, heightRect;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen, mouthReset;
float measleX, measleY, measleDiameter;
color Red =(#AD1A1A), White =(#FFFFFF), Black =(#000000);
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
rect(xRect, yRect, widthRect, heightRect);
ellipse(faceX, faceY, faceDiameter, faceDiameter );
//
//DIVs
} //End setup
//
void draw() {
frameRate(15);
fill(Red);
measleX = random(backgroundX+measleDiameter*1/3, backgroundX+backgroundWidth-measleDiameter*1/3);
measleY = random(backgroundY, faceDiameter); 
measleDiameter = random(smallerDimension*1/100, smallerDimension*1/30);
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
//
} //End draw
//
void keyPressed() {}
//
void mousePressed() {}
//
//End MAIN Program
