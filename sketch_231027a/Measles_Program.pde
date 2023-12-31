void measlesProgram() {
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
  //
  fill(White);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  fill(Red2);
  ellipse(leftEyeX, leftEyeY, eyeDiameter2, eyeDiameter2);
  ellipse(rightEyeX, rightEyeY, eyeDiameter2, eyeDiameter2);
  fill(Black);
  ellipse(leftEyeX, leftEyeY, eyeDiameter3, eyeDiameter2);
  ellipse(rightEyeX, rightEyeY, eyeDiameter3, eyeDiameter2);
  fill(White);
  ellipse(leftEyeShineX, leftEyeShineY, eyeDiameter4, eyeDiameter4);
  ellipse(rightEyeShineX, rightEyeShineY, eyeDiameter4, eyeDiameter4);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight(mouthOpen);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(mouthReset);
  fill(Quit);
  //
  color measleColour = color( random(195, 255), random(0, 58), random(0, 76) );
  fill(measleColour);
   measleDiameter = random( smallerDimension*1/100, smallerDimension*1/25 );
  measleX = random( backgroundX+(measleDiameter/2), (backgroundX+backgroundWidth)-(measleDiameter/2) );
  measleY = random( backgroundY+(measleDiameter/2), (backgroundY+backgroundHeight)-(measleDiameter/2) );
  //IF runs once, but computer can randomly choose a measlesX that is error
  //WHILE will repeat until the randomly chosen variable fits
  while ( measleX <= button1X+buttonSide+(measleDiameter/2) && measleY <= button1Y+buttonSide+(measleDiameter/2)) {
    measleX = random( button1X+buttonSide+(measleDiameter/2), (backgroundX+backgroundWidth)-(measleDiameter/2) );
  }
  noStroke();
  if ( ((measleX-faceX)*(measleX-faceX))+((measleY-faceY)*(measleY-faceY)) < sq( ((faceDiameter/2)-(measleDiameter/2)) ) ) { //Measle on Circle
    if ( measlesOn==true ) ellipse( measleX, measleY, measleDiameter, measleDiameter );
  }
  stroke(0);
  noFill();
//
  
} //End draw
//
