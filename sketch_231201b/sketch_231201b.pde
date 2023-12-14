import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
int appWidth, appHeight;
float xRect1, yRect1;
float xRect2, yRect2;
float xRect3, yRect3;
float xRect4, yRect4;
float xRect5, yRect5;
float xRect6, yRect6;
float xRect7, yRect7;
float xRect8, yRect8;
float rectWidth, rectHeight;
Minim minim;
int numberOfSongs = 8; 
int numberOfSounds = 1; 
AudioPlayer[] song = new AudioPlayer [numberOfSongs];
AudioPlayer[] soundEffect = new AudioPlayer [numberOfSounds];
AudioMetaData[] songMetaData = new AudioMetaData [numberOfSongs]; 
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
 String cycles = "Cycles.mp3";
 String ghost = "Ghost_Walk.mp3";
 String newsroom = "Newsroom.mp3";
 String competition = "Competition.mp3";
 String engine = "Engines.mp3";
 String extension = ".mp3";
 String pathway = "MusicDownload/Groove_files/"; //Relative Path
 String path = sketchPath( pathway + groove ); //Absolute Path
 String path2 = sketchPath( pathway + eureka );
 String path3 = sketchPath( pathway + simplest );
 String path4 = sketchPath( pathway + cycles );
 String path5 = sketchPath( pathway + ghost );
 String path6 = sketchPath( pathway + newsroom );
 String path7 = sketchPath( pathway + competition);
 String path8 = sketchPath( pathway + engine);
println(path);
song[0] = minim.loadFile( path );
songMetaData[0] = song[0].getMetaData();
generalFont = createFont("Candara", 45);
//println("?", songMetaData1,?() );
println("File Name", songMetaData[0].fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData[0].length() );
println("Song Length (in seconds", songMetaData[0].length()/1000 ); println("Song Length (in minutes & seconds)", songMetaData[0].length()/1000/60, "minutes", ( songMetaData[0].length()/1000 - ( songMetaData[0].length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData[0].title() );
println("Author", songMetaData[0].author() );
println("Composer", songMetaData[0].composer() );
println("Orchestra", songMetaData[0].orchestra() );
println("Album", songMetaData[0].album() );
println("Disc", songMetaData[0].disc() );
println("Publisher", songMetaData[0].publisher() );
println("Date Released", songMetaData[0].date() );
println("Copyright", songMetaData[0].copyright() );
println("Comments", songMetaData[0].comment() );
println("Lyrics", songMetaData[0].lyrics() );
println("Track", songMetaData[0].track() );
println("Genre", songMetaData[0].genre() );
println("Encoded", songMetaData[0].encoded() );
//
println(path);
song[1] = minim.loadFile( path2 );
songMetaData[1] =song[1].getMetaData();
println("File Name", songMetaData[1].fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData[1].length() );
println("Song Length (in seconds", songMetaData[1].length()/1000 );
println("Song Length (in minutes & seconds)", songMetaData[1].length()/1000/60, "minutes", ( songMetaData[1].length()/1000 - ( songMetaData[1].length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData[1].title() );
println("Author", songMetaData[1].author() );
println("Composer", songMetaData[1].composer() );
println("Orchestra", songMetaData[1].orchestra() );
println("Album", songMetaData[1].album() );
println("Disc", songMetaData[1].disc() );
println("Publisher", songMetaData[1].publisher() );
println("Date Released", songMetaData[1].date() );
println("Copyright", songMetaData[1].copyright() );
println("Comments", songMetaData[1].comment() );
println("Lyrics", songMetaData[1].lyrics() );
println("Track", songMetaData[1].track() );
println("Genre", songMetaData[1].genre() );
println("Encoded", songMetaData[1].encoded() );
//
println(path);
song[2] = minim.loadFile( path3 );
songMetaData[2] =song[2].getMetaData();
println("File Name", songMetaData[2].fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData[2].length() );
println("Song Length (in seconds", songMetaData[2].length()/1000 );
println("Song Length (in minutes & seconds)", songMetaData[2].length()/1000/60, "minutes", ( songMetaData[2].length()/1000 - ( songMetaData[2].length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData[2].title() );
println("Author", songMetaData[2].author() );
println("Composer", songMetaData[2].composer() );
println("Orchestra", songMetaData[2].orchestra() );
println("Album", songMetaData[2].album() );
println("Disc", songMetaData[2].disc() );
println("Publisher", songMetaData[2].publisher() );
println("Date Released", songMetaData[2].date() );
println("Copyright", songMetaData[2].copyright() );
println("Comments", songMetaData[2].comment() );
println("Lyrics", songMetaData[2].lyrics() );
println("Track", songMetaData[2].track() );
println("Genre", songMetaData[2].genre() );
println("Encoded", songMetaData[2].encoded() );
//
println(path);
song[3] = minim.loadFile( path4 );
songMetaData[3] = song[3].getMetaData();
println("File Name", songMetaData[3].fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData[3].length() );
println("Song Length (in seconds", songMetaData[3].length()/1000 );
println("Song Length (in minutes & seconds)", songMetaData[3].length()/1000/60, "minutes", ( songMetaData[3].length()/1000 - ( songMetaData[3].length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData[3].title() );
println("Author", songMetaData[3].author() );
println("Composer", songMetaData[3].composer() );
println("Orchestra", songMetaData[3].orchestra() );
println("Album", songMetaData[3].album() );
println("Disc", songMetaData[3].disc() );
println("Publisher", songMetaData[3].publisher() );
println("Date Released", songMetaData[3].date() );
println("Copyright", songMetaData[3].copyright() );
println("Comments", songMetaData[3].comment() );
println("Lyrics", songMetaData[3].lyrics() );
println("Track", songMetaData[3].track() );
println("Genre", songMetaData[3].genre() );
println("Encoded", songMetaData[3].encoded() );
//
println(path);
song[4] = minim.loadFile( path5 );
songMetaData[4] = song[4].getMetaData();
println("File Name", songMetaData[4].fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData[4].length() );
println("Song Length (in seconds", songMetaData[4].length()/1000 );
println("Song Length (in minutes & seconds)", songMetaData[4].length()/1000/60, "minutes", ( songMetaData[4].length()/1000 - ( songMetaData[4].length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData[4].title() );
println("Author", songMetaData[4].author() );
println("Composer", songMetaData[4].composer() );
println("Orchestra", songMetaData[4].orchestra() );
println("Album", songMetaData[4].album() );
println("Disc", songMetaData[4].disc() );
println("Publisher", songMetaData[4].publisher() );
println("Date Released", songMetaData[4].date() );
println("Copyright", songMetaData[4].copyright() );
println("Comments", songMetaData[4].comment() );
println("Lyrics", songMetaData[4].lyrics() );
println("Track", songMetaData[4].track() );
println("Genre", songMetaData[4].genre() );
println("Encoded", songMetaData[4].encoded() );
//
println(path);
song[5] = minim.loadFile( path6 );
songMetaData[5] = song[5].getMetaData();
println("File Name", songMetaData[5].fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData[5].length() );
println("Song Length (in seconds", songMetaData[5].length()/1000 );
println("Song Length (in minutes & seconds)", songMetaData[5].length()/1000/60, "minutes", ( songMetaData[5].length()/1000 - ( songMetaData[5].length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData[5].title() );
println("Author", songMetaData[5].author() );
println("Composer", songMetaData[5].composer() );
println("Orchestra", songMetaData[5].orchestra() );
println("Album", songMetaData[5].album() );
println("Disc", songMetaData[5].disc() );
println("Publisher", songMetaData[5].publisher() );
println("Date Released", songMetaData[5].date() );
println("Copyright", songMetaData[5].copyright() );
println("Comments", songMetaData[5].comment() );
println("Lyrics", songMetaData[5].lyrics() );
println("Track", songMetaData[5].track() );
println("Genre", songMetaData[5].genre() );
println("Encoded", songMetaData[5].encoded() );
//
println(path);
song[6] = minim.loadFile( path7 );
songMetaData[6] = song[6].getMetaData();
println("File Name", songMetaData[6].fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData[6].length() );
println("Song Length (in seconds", songMetaData[6].length()/1000 );
println("Song Length (in minutes & seconds)", songMetaData[6].length()/1000/60, "minutes", ( songMetaData[6].length()/1000 - ( songMetaData[6].length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData[6].title() );
println("Author", songMetaData[6].author() );
println("Composer", songMetaData[6].composer() );
println("Orchestra", songMetaData[6].orchestra() );
println("Album", songMetaData[6].album() );
println("Disc", songMetaData[6].disc() );
println("Publisher", songMetaData[6].publisher() );
println("Date Released", songMetaData[6].date() );
println("Copyright", songMetaData[6].copyright() );
println("Comments", songMetaData[6].comment() );
println("Lyrics", songMetaData[6].lyrics() );
println("Track", songMetaData[6].track() );
println("Genre", songMetaData[6].genre() );
println("Encoded", songMetaData[6].encoded() );
//
println(path);
song[7] = minim.loadFile( path8 );
songMetaData[7] = song[7].getMetaData();
println("File Name", songMetaData[7].fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData[7].length() );
println("Song Length (in seconds", songMetaData[7].length()/1000 );
println("Song Length (in minutes & seconds)", songMetaData[7].length()/1000/60, "minutes", ( songMetaData[7].length()/1000 - ( songMetaData[7].length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData[7].title() );
println("Author", songMetaData[7].author() );
println("Composer", songMetaData[7].composer() );
println("Orchestra", songMetaData[7].orchestra() );
println("Album", songMetaData[7].album() );
println("Disc", songMetaData[7].disc() );
println("Publisher", songMetaData[7].publisher() );
println("Date Released", songMetaData[7].date() );
println("Copyright", songMetaData[7].copyright() );
println("Comments", songMetaData[7].comment() );
println("Lyrics", songMetaData[7].lyrics() );
println("Track", songMetaData[7].track() );
println("Genre", songMetaData[7].genre() );
println("Encoded", songMetaData[7].encoded() );
//song1.loop(0);
xRect1 = appWidth*1/10;
yRect1 = appHeight*1/3;
rectWidth = appWidth*1/6;
rectHeight = appHeight*1/6;
xRect2 = xRect1;
yRect2 = yRect1*1/3;
xRect3 = xRect1;
yRect3 = yRect1*5/3;
xRect4 = xRect1;
yRect4 = yRect1*7/3;
xRect5 = xRect1*12/3;
yRect5 = yRect1;
xRect6 = xRect5;
yRect6 = yRect2;
xRect7 = xRect5;
yRect7 = yRect3;
xRect8 = xRect5;
yRect8 = yRect4;
}
//
void draw() {
if ( song[0].isLooping() && song[0].loopCount()!=-1 ) println("There are", song[0].loopCount(), "loops left.");
if ( song[0].isLooping() && song[0].loopCount()==-1) println("Looping Infinitely");
if ( song[0].isPlaying() && !song[0].isLooping()) println("Play Once");
if ( song[1].isLooping() && song[1].loopCount()!=-1 ) println("There are", song[1].loopCount(), "loops left.");
if ( song[1].isLooping() && song[1].loopCount()==-1) println("Looping Infinitely");
if ( song[1].isPlaying() && !song[1].isLooping()) println("Play Once");
if ( song[2].isLooping() && song[2].loopCount()!=-1 ) println("There are", song[2].loopCount(), "loops left.");
if ( song[2].isLooping() && song[2].loopCount()==-1) println("Looping Infinitely");
if ( song[2].isPlaying() && !song[2].isLooping()) println("Play Once");
if ( song[3].isLooping() && song[3].loopCount()!=-1 ) println("There are", song[3].loopCount(), "loops left.");
if ( song[3].isLooping() && song[3].loopCount()==-1) println("Looping Infinitely");
if ( song[3].isPlaying() && !song[3].isLooping()) println("Play Once");
if ( song[4].isLooping() && song[4].loopCount()!=-1 ) println("There are", song[4].loopCount(), "loops left.");
if ( song[4].isLooping() && song[4].loopCount()==-1) println("Looping Infinitely");
if ( song[4].isPlaying() && !song[4].isLooping()) println("Play Once");
if ( song[5].isLooping() && song[5].loopCount()!=-1 ) println("There are", song[5].loopCount(), "loops left.");
if ( song[5].isLooping() && song[5].loopCount()==-1) println("Looping Infinitely");
if ( song[5].isPlaying() && !song[5].isLooping()) println("Play Once");
if ( song[6].isLooping() && song[6].loopCount()!=-1 ) println("There are", song[6].loopCount(), "loops left.");
if ( song[6].isLooping() && song[6].loopCount()==-1) println("Looping Infinitely");
if ( song[6].isPlaying() && !song[6].isLooping()) println("Play Once");
if ( song[7].isLooping() && song[7].loopCount()!=-1 ) println("There are", song[7].loopCount(), "loops left.");
if ( song[7].isLooping() && song[7].loopCount()==-1) println("Looping Infinitely");
if ( song[7].isPlaying() && !song[7].isLooping()) println("Play Once");
//
//songMetaData1.title()

//println( "Song Position", song1.position(), "Song Length", song1.length() );
}
//
void keyPressed() {
  if (key=='P' || key=='p') song[0].play(); //Parameter is milliseconds
  println(key);
  if (key>='1' || key<='9' ) {
    String keystr = String.valueOf(key);
    println(keystr);
  int loopNum = int(keystr);
  song[0].loop(loopNum);
  }
  if ( key=='L' || key=='l') song[0].loop();
  if (key =='M' || key=='m') { //Mute only stops the speakers, not the file
  if (song[0].isMuted() ) {
    song[0].unmute();
  } else {
  song[0].mute();
  }
  }

  if(key=='F' || key=='f') song[0].skip(0);
  if(key=='R' || key=='r') song[0].skip(-1000);
  //Stop button, ask is .playing(), & .pause() & .rewind(), or .rewind() 
  if (key=='S' || key=='s' ) {
   if ( song[0].isPlaying()) {
   song[0].pause(); //auto, rewind()
   } else {
     song[0].rewind(); 
  }
  }
  if  (key=='Y' || key=='y') {
    if ( song[0].isPlaying()==true ) {
   song[0].pause(); 
   } else { 
     song[0].play(); //ERROR, doesn't play
   }
  }
}//End keyPressed
//
void mousePressed() {
if  (mouseX> xRect1 && mouseX<xRect1+rectWidth && mouseY>yRect && mouseY<yRect1+rectHeight) song[0].loop();
if  (mouseX> xRect && mouseX<xRect+rectWidth1 && mouseY>yRect && mouseY<yRect+rectHeight1) homeScreen();
if  (mouseX> xRect2 && mouseX<xRect2+rectWidth && mouseY>yRect2 && mouseY<yRect2+rectHeight) song[1].loop();
if  (mouseX> xRect3 && mouseX<xRect3+rectWidth && mouseY>yRect3 && mouseY<yRect3+rectHeight) song[2].loop();
if  (mouseX> xRect4 && mouseX<xRect4+rectWidth && mouseY>yRect4 && mouseY<yRect4+rectHeight) song[3].loop();
if  (mouseX> xRect5 && mouseX<xRect5+rectWidth && mouseY>yRect5 && mouseY<yRect5+rectHeight) song[4].loop();
if  (mouseX> xRect6 && mouseX<xRect6+rectWidth && mouseY>yRect6 && mouseY<yRect6+rectHeight) song[5].loop();
if  (mouseX> xRect7 && mouseX<xRect7+rectWidth && mouseY>yRect7 && mouseY<yRect7+rectHeight) song[6].loop();
if  (mouseX> xRect8 && mouseX<xRect8+rectWidth && mouseY>yRect8 && mouseY<yRect8+rectHeight) song[7].loop();
}
