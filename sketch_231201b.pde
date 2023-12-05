import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
Minim minim;
AudioPlayer song1;
//
void setup() {
fullScreen();
//Display algorithm
minim = new Minim(this);
 String groove = "groove.mp3";
  String extension = ".mp3";
  String pathway = "Music/MusicDownload/"; //Relative Path
  String path = sketchPath( pathway + groove ); //Absolute Path
println(path);
song1 = minim.loadFile( path );
song1.loop(0);
}
//
void draw() {}
//
void keyPressed() {
  if (key=='P' || key=='p') song1.play(); //Parameter is milliseconds
  println(key);
  if (key=='1' || key=='9' ) {
    String keystr = String.valueOf(key);
    println(keystr);
  int loopNum = key;
  song1.loop(loopNum-1);
  }
}
//
void mousePressed() {}
