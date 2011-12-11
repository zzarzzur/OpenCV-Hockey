import processing.net.*;
Servers server;
redp pred;
  Client c;
  String input;
  int data[];
String mode="choose";

 int xx=0, xy=0, xcol=0;

int x1;
int y1;
int rx = width/2-50;
int ry = height/2;
int bx = width/2+50;
int by = height/2;
int i = 0;
int o = 3;
float x = 0;
float y = 0;
float xspeed = 10;
float yspeed = 10;
float r = 32;
PFont font;
int rs = 0;
int bs = 0;
int g1x = width-25;
int g1y = height/2-50;
int g2x = -75;
int g3y = height/2-50;
String rds = "SCORE --->";
String bds = "<--- SCORE";
boolean Blue = false;
int BlueC;
PImage table;

void setup() {
  size(640, 480);
  smooth();
  font = loadFont( "Score.vlw" );
  textFont( font );
  table = loadImage("table.svg.tif");
}
void draw() {
  background(255); 
  if (mode == "choose") {
    text("1 for server mode", 5, 5);
  }
  if (mode == "server") server.draw();
  if (mode == "red") pred.draw();
}
void keyPressed() {
  if (mode == "choose") {
    if (key == '1') {
      mode = "server";
      server = new Servers();
      server.s = new Server(this, 12345); // Start a simple server on a port
    }
        if (key == '2') {
      mode = "red";
      pred = new redp();
       c = new Client(this, "127.0.0.1", 12345); // Replace with your server's IP and port
    }
  }

 // if (mode == "server") server.keyPressed(key, keyCode);
}




