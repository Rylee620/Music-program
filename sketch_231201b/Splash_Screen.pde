float xRect1, yRect1, rectWidth1, rectHeight1;
color Yellow =(#FAFF05), White = (#FFFFFF), Black = (#000000);
PFont Candara;
String playlist = ("Playlist");
int size = 45;
void Splash_Screen() {
background(255);
xRect1 = appWidth*1/3;
yRect1 = appHeight*1/4;
rectWidth1 = appWidth*2/5;
rectHeight1 = appHeight*3/5;
fill(Yellow);
rect( xRect1, yRect1, rectWidth1, rectHeight1);
fill(White);
}
void SplashScreenText() {
  Candara = createFont( "Candara", 45);
textAlign(CENTER, CENTER);
size = 45;
textFont(Candara, size);
fill(Black);
text( playlist, xRect1, yRect1, rectWidth1, rectHeight1);
fill(White);

}