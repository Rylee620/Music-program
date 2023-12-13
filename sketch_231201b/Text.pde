color Green = #48FF7A, Orange =#EA7B02;
void grooveText() {
fill(Green);
rect( xRect, yRect, rectWidth, rectHeight );
fill(White);
//
fill(Black);
textAlign (CENTER, CENTER);
int size = 45;
textFont(generalFont, size);
text(songMetaData[0].title(), xRect, yRect, rectWidth, rectHeight );
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
rect( xRect3, yRect3, rectWidth, rectHeight );
fill(Black);
textAlign(CENTER, CENTER);
int size = 45;
textFont(generalFont, size);
text( songMetaData[2].title(), xRect3, yRect3, rectWidth, rectHeight );
fill(255);
}
void cyclesText(){
 rect( xRect4, yRect4, rectWidth, rectHeight);
 fill(Black);
 textAlign(CENTER, CENTER);
 int size = 45;
 textFont (generalFont, size);
 text( songMetaData[3].title(), xRect4, yRect4, rectWidth, rectHeight);
 fill(255);
}
void ghostText(){
rect( xRect5, yRect5, rectWidth, rectHeight);
fill(Black);
textAlign(CENTER, CENTER);
int size = 45; 
textFont (generalFont, size);
text(songMetaData[4].title(), xRect5, yRect5, rectWidth, rectHeight);
fill(255);
}
void newsText(){
rect( xRect6, yRect6, rectWidth, rectHeight );
fill(Black);
textAlign(CENTER, CENTER);
int size = 45;
textFont (generalFont, size);
text(songMetaData[5].title(), xRect6, yRect6, rectWidth, rectHeight );
fill(255);
}
