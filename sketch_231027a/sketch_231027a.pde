//global variables
int appWidth, appHeight;
float faceX, faceY, faceDiameter;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float xRect, yRect, widthRect, heightRect;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen, mouthReset;
//
void setup() {
fullScreen();
appWidth = displayWidth;
appHeight = displayHeight;
int smallerDimension = (appWidth>= appHeight) ? appHeight: appWidth;
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
mouthOpen = smallerDimension*1/10;
mouthReset = smallerDimension/smallerDimension;
xRect = backgroundX; 
yRect = backgroundY*1/5;
widthRect = backgroundWidth*1/7;
heightRect= backgroundHeight*1/7;
//
//DIVs
} //End setup
//
void draw() {
rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
rect(xRect, yRect, widthRect, heightRect);
ellipse(faceX, faceY, faceDiameter, faceDiameter );
ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
strokeWeight(mouthOpen);
line(mouthX1, mouthY1, mouthX2, mouthY2);
strokeWeight(mouthReset);
} //End draw
//
void keyPressed() {}
//
void mousePressed() {}
//
//End MAIN Program
