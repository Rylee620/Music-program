void grooveText() {
rect( xRect, yRect, rectWidth, rectHeight );
fill(Black);
textAlign (CENTER, CENTER);
int size = 45;
textFont(generalFont, size);
text(songMetaData1.title(), xRect, yRect, rectWidth, rectHeight );
fill(255);
}
void eurekaText(){
rect( xRect2, yRect2, rectWidth, rectHeight );
fill(Black);
textAlign (CENTER, CENTER);
int size = 45;
textFont(generalFont, size);
text(songMetaData2.title(), xRect2, yRect2, rectWidth, rectHeight );
fill(255);
}
void simplestText(){
rect( xRect3, yRect3, rectWidth, rectHeight );
fill(Black);
textAlign(CENTER, CENTER);
int size = 45;
textFont(generalFont, size);
text( songMetaData3.title(), xRect3, yRect3, rectWidth, rectHeight );
fill(255);
}
