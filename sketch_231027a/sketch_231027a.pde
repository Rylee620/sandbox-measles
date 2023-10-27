//global variables
int appWidth, appHeight;
float faceX, faceY, faceDiameter;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float xRect, yRect, widthRect, heightRect;
float leftEyeX, leftEyeY, leftEyeWidth, leftEyeHeight;
float rightEyeX, rightEyeY, rightEyeWidth, rightEyeHeight;
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
ellipse(leftEyeX, leftEyeY, leftEyeWidth, leftEyeHeight);
ellipse(rightEyeX, rightEyeY, rightEyeWidth, rightEyeHeight);
} //End draw
//
void keyPressed() {}
//
void mousePressed() {}
//
//End MAIN Program
