color Green = #48FF7A, Orange =#EA7B02, Cyan = #03B9FF, Magenta = #FF035F;
void grooveText() {
fill(Green);
rect( xRect1, yRect1, rectWidth, rectHeight );
fill(White);
//
fill(Black);
textAlign (CENTER, CENTER);
int size = 45;
textFont(generalFont, size);
text(songMetaData[0].title(), xRect1, yRect1, rectWidth, rectHeight );
fill(255);
}
void eurekaText(){
fill(Orange);
rect( xRect2, yRect2, rectWidth, rectHeight );
fill(White);
//
fill(Black);
textAlign (CENTER, CENTER);
int size = 45;
textFont(generalFont, size);
text(songMetaData[1].title(), xRect2, yRect2, rectWidth, rectHeight );
fill(255);
}
void simplestText(){
fill(Cyan);
rect( xRect3, yRect3, rectWidth, rectHeight );
fill(White);
///
fill(Black);
textAlign(CENTER, CENTER);
int size = 45;
textFont(generalFont, size);
text( songMetaData[2].title(), xRect3, yRect3, rectWidth, rectHeight );
fill(255);
}
void cyclesText(){
fill(Magenta);
rect( xRect4, yRect4, rectWidth, rectHeight);
fill(White);
fill(Black);
textAlign(CENTER, CENTER);
int size = 45; textFont (generalFont, size); 
text( songMetaData[3].title(), xRect4, yRect4, rectWidth, rectHeight);
fill(255);
}
void ghostText(){
fill(Green);
rect( xRect5, yRect5, rectWidth, rectHeight);
fill(White);
//
fill(Black);
textAlign(CENTER, CENTER);
int size = 45; 
textFont (generalFont, size);
text(songMetaData[4].title(), xRect5, yRect5, rectWidth, rectHeight);
fill(255);
}
void newsText(){
fill(Orange);
rect( xRect6, yRect6, rectWidth, rectHeight );
fill(White);
//
fill(Black);
textAlign(CENTER, CENTER);
int size = 45;
textFont (generalFont, size);
text(songMetaData[5].title(), xRect6, yRect6, rectWidth, rectHeight );
fill(255);
}
void competitionText(){
fill(Cyan);
rect( xRect7, yRect7, rectWidth, rectHeight);
fill(White);
//
fill(Black);
textAlign(CENTER, CENTER);
int size = 45;
textFont (generalFont, size);
text( songMetaData[6].title(), xRect7, yRect7, rectWidth, rectHeight);
fill(255);
}
void engineText(){
fill(Magenta);
rect( xRect8, yRect8, rectWidth, rectHeight);
fill(White);
//
fill(Black);
textAlign(CENTER, CENTER);
int size = 45;
textFont (generalFont, size);
text( songMetaData[7].title(), xRect8, yRect8, rectWidth, rectHeight);
fill(255);
}
void currentSongText(){
rect(xRectA, yRectA, rectWidth2, rectHeight2); 
  fill(Black); //Ink
  textAlign (CENTER, CENTER); 
  int size = 55; 
  textFont(generalFont, size); 
  text(songMetaData[currentSong].title(), xRectA, yRectA, rectWidth2, rectHeight2);
  fill(255);
}
void carDoorText(){
rect(xRectB, yRectB, rectWidth3, rectHeight3);
fill(Black);
textAlign (CENTER, CENTER);
int size = 20;
textFont(generalFont, size);
text(soundMetaData[0].title(), xRectB, yRectB, rectWidth3, rectHeight3);
fill(255);
}
void springAtticDoorText(){
rect(xRectC, yRectC, rectWidth3, rectHeight3);
fill(Black);
textAlign (CENTER, CENTER);
int size = 20;
textFont(generalFont, size);
text(soundMetaData[1].title(), xRectC, yRectC, rectWidth3, rectHeight3);
fill(255);
}
void stingText(){
rect(xRectD, yRectD, rectWidth3, rectHeight3);
fill(Black);
textAlign (CENTER, CENTER);
int size = 20;
textFont(generalFont, size);
text(soundMetaData[2].title(), xRectD, yRectD, rectWidth3, rectHeight3);
fill(255);
}
void woodText(){
rect(xRectE, yRectE, rectWidth3, rectHeight3);
fill(Black);
textAlign (CENTER, CENTER);
int size = 20;
textFont(generalFont, size);
text(soundMetaData[3].title(), xRectE, yRectE, rectWidth3, rectHeight3);
fill(255);
}
