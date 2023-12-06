import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer song1;
//
void setup() {
fullScreen();
//Display algorithm
minim = new Minim(this);
 String groove = "groove.mp3";
  String extension = ".mp3";
  String pathway = "MusicDownload/Groove_files/"; //Relative Path
  String path = sketchPath( pathway + groove ); //Absolute Path
println(path);
song1 = minim.loadFile( path );
//song1.loop(0);
}
//
void draw() {
if ( song1.isLooping() && song1.loopCount()!=-1 ) println("There are", song1.loopCount(), "loops left.");
if ( song1.isLooping() && song1.loopCount()==-1) println("Looping Infinitely");
if ( song1.isPlaying() && !song1.isLooping()) println("Play Once");
//
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
}
//
void mousePressed() {}
