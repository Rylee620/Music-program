import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
int appWidth, appHeight;
float xRect, yRect, xRect2, yRect2, xRect3, yRect3, rectWidth, rectHeight;
Minim minim;
AudioPlayer song1, song2, song3;
AudioMetaData songMetaData1, songMetaData2, songMetaData3; 
PFont generalFont;
//
void setup() {
fullScreen();
appWidth = displayWidth;
appHeight = displayHeight;
//Display algorithm
Splash_Screen();
SplashScreenText();
minim = new Minim(this);
 String groove = "groove.mp3";
 String eureka = "Eureka.mp3";
 String simplest = "The_Simplest.mp3";
  String extension = ".mp3";
  String pathway = "MusicDownload/Groove_files/"; //Relative Path
  String path = sketchPath( pathway + groove ); //Absolute Path
  String path2 = sketchPath( pathway + eureka );
  String path3 = sketchPath( pathway + simplest );
println(path);
song1 = minim.loadFile( path );
songMetaData1 = song1.getMetaData();
generalFont = createFont("Candara", 45);
//println("?", songMetaData1,?() );
println("File Name", songMetaData1.fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData1.length() );
println("Song Length (in seconds", songMetaData1.length()/1000 );
 println("Song Length (in minutes & seconds)", songMetaData1.length()/1000/60, "minutes", ( songMetaData1.length()/1000 - ( songMetaData1.length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData1.title() );
println("Author", songMetaData1.author() );
println("Composer", songMetaData1.composer() );
println("Orchestra", songMetaData1.orchestra() );
println("Album", songMetaData1.album() );
println("Disc", songMetaData1.disc() );
println("Publisher", songMetaData1.publisher() );
println("Date Released", songMetaData1.date() );
println("Copyright", songMetaData1.copyright() );
println("Comments", songMetaData1.comment() );
println("Lyrics", songMetaData1.lyrics() );
println("Track", songMetaData1.track() );
println("Genre", songMetaData1.genre() );
println("Encoded", songMetaData1.encoded() );
//
println(path);
song2 = minim.loadFile( path2 );
songMetaData2 =song2.getMetaData();
println("File Name", songMetaData2.fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData2.length() );
println("Song Length (in seconds", songMetaData2.length()/1000 );
 println("Song Length (in minutes & seconds)", songMetaData2.length()/1000/60, "minutes", ( songMetaData2.length()/1000 - ( songMetaData2.length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData2.title() );
println("Author", songMetaData2.author() );
println("Composer", songMetaData2.composer() );
println("Orchestra", songMetaData2.orchestra() );
println("Album", songMetaData2.album() );
println("Disc", songMetaData2.disc() );
println("Publisher", songMetaData2.publisher() );
println("Date Released", songMetaData2.date() );
println("Copyright", songMetaData2.copyright() );
println("Comments", songMetaData2.comment() );
println("Lyrics", songMetaData2.lyrics() );
println("Track", songMetaData2.track() );
println("Genre", songMetaData2.genre() );
println("Encoded", songMetaData2.encoded() );
//
println(path);
song3 = minim.loadFile( path3 );
songMetaData3 =song3.getMetaData();
println("File Name", songMetaData3.fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData3.length() );
println("Song Length (in seconds", songMetaData3.length()/1000 );
 println("Song Length (in minutes & seconds)", songMetaData3.length()/1000/60, "minutes", ( songMetaData3.length()/1000 - ( songMetaData3.length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData3.title() );
println("Author", songMetaData3.author() );
println("Composer", songMetaData3.composer() );
println("Orchestra", songMetaData3.orchestra() );
println("Album", songMetaData3.album() );
println("Disc", songMetaData3.disc() );
println("Publisher", songMetaData3.publisher() );
println("Date Released", songMetaData3.date() );
println("Copyright", songMetaData3.copyright() );
println("Comments", songMetaData3.comment() );
println("Lyrics", songMetaData3.lyrics() );
println("Track", songMetaData3.track() );
println("Genre", songMetaData3.genre() );
println("Encoded", songMetaData3.encoded() );
//song1.loop(0);
xRect = appWidth*1/10;
yRect = appHeight*1/3;
rectWidth = appWidth*1/6;
rectHeight = appHeight*1/6;
xRect2 = xRect;
yRect2 = yRect*1/3;
xRect3 = xRect;
yRect3 = yRect*5/3;
}
//
void draw() {
if ( song1.isLooping() && song1.loopCount()!=-1 ) println("There are", song1.loopCount(), "loops left.");
if ( song1.isLooping() && song1.loopCount()==-1) println("Looping Infinitely");
if ( song1.isPlaying() && !song1.isLooping()) println("Play Once");
if ( song2.isLooping() && song2.loopCount()!=-1 ) println("There are", song2.loopCount(), "loops left.");
if ( song2.isLooping() && song2.loopCount()==-1) println("Looping Infinitely");
if ( song2.isPlaying() && !song2.isLooping()) println("Play Once");
if ( song3.isLooping() && song3.loopCount()!=-1 ) println("There are", song3.loopCount(), "loops left.");
if ( song3.isLooping() && song3.loopCount()==-1) println("Looping Infinitely");
if ( song3.isPlaying() && !song3.isLooping()) println("Play Once");
//
//songMetaData1.title()

//println( "Song Position", song1.position(), "Song Length", song1.length() );
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
if  (mouseX> xRect1 && mouseX<xRect1+rectWidth1 && mouseY>yRect1 && mouseY<yRect1+rectHeight1) homeScreen();
if  (mouseX> xRect2 && mouseX<xRect2+rectWidth && mouseY>yRect2 && mouseY<yRect2+rectHeight) song2.loop();
if  (mouseX> xRect3 && mouseX<xRect3+rectWidth && mouseY>yRect3 && mouseY<yRect3+rectHeight) song3.loop();
}
