import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
int appWidth, appHeight;
float xRect, yRect, rectWidth, rectHeight;
Minim minim;
AudioPlayer song1;
//
void setup() {
fullScreen();
appWidth = displayWidth;
appHeight = displayHeight;
//Display algorithm
minim = new Minim(this);
 String groove = "groove.mp3";
  String extension = ".mp3";
  String pathway = "MusicDownload/Groove_files/"; //Relative Path
  String path = sketchPath( pathway + groove ); //Absolute Path
println(path);
song1 = minim.loadFile( path );
//song1.loop(0);
xRect = appWidth*1/10;
yRect = appHeight*1/3;
rectWidth = appWidth*1/6;
rectHeight = appHeight*1/6;
}
//
void draw() {
if ( song1.isLooping() && song1.loopCount()!=-1 ) println("There are", song1.loopCount(), "loops left.");
if ( song1.isLooping() && song1.loopCount()==-1) println("Looping Infinitely");
if ( song1.isPlaying() && !song1.isLooping()) println("Play Once");
//
rect( xRect, yRect, rectWidth, rectHeight );
println( "Song Position", song1.position(), "Song Length", song1.length() );
}
//
void keyPressed() {
  if (key=='P' || key=='p') song1.play(); //Parameter is milliseconds
  println(key);
  if (key>='1' || key<='9' ) {
    String keystr = String.valueOf(key);
    println(keystr);
  int loopNum = int(keystr);
  song1.loop(loopNum);
  }
  if ( key=='L' || key=='l') song1.loop();
  if (key =='M' || key=='m') { //Mute only stops the speakers, not the file
  if (song1.isMuted() ) {
    song1.unmute();
  } else {
  song1.mute();
  }
  }

  if(key=='F' || key=='f') song1.skip(0);
  if(key=='R' || key=='r') song1.skip(-1000);
  //Stop button, ask is .playing(), & .pause() & .rewind(), or .rewind() 
  if (key=='S' || key=='s' ) {
   if ( song1.isPlaying()) {
   song1.pause(); //auto, rewind()
   } else {
     song1.rewind(); 
  }
  }
  if  (key=='Y' || key=='y') {
    if ( song1.isPlaying()==true ) {
   song1.pause(); 
   } else { 
     song1.play(); //ERROR, doesn't play
   }
  }
}//End keyPressed
//
void mousePressed() {
if  (mouseX> xRect && mouseX<xRect+rectWidth && mouseY>yRect && mouseY<yRect+rectHeight) song1.loop();
}
