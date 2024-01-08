float xRect, yRect, rectWidth1, rectHeight1;
color Yellow =(#FAFF05), White = (#FFFFFF), Black = (#000000);
PFont Candara;
String playlist = ("Playlist");
int size = 45;
void Splash_Screen() {
background(Black);
xRect = appWidth*2/3;
yRect = appHeight*1/4;
rectWidth1 = appWidth*1/5;
rectHeight1 = appHeight*2/5;
fill(Yellow);
rect( xRect, yRect, rectWidth1, rectHeight1);
fill(White);
}
void SplashScreenText() {
  Candara = createFont( "Candara", 45);
textAlign(CENTER, CENTER);
size = 45;
textFont(Candara, size);
fill(Black);
text( playlist, xRect, yRect, rectWidth1, rectHeight1);
fill(White);
}
