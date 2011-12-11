class redp {

  redp() {
  }
  void draw() {
if (c.available() > 0) {
    input = c.readString();
    println(input.substring(input.length()-2, input.length()));
    if(input.length() > 3 && input.substring(input.length()-2, input.length()) == "\n") {
    input = input.substring(0, input.indexOf("\n")); // Only up to the newline
    data = int(split(input, ' ')); // Split values into an array
    // Draw line using received coords
if(data.length > 2){
  
    x1 = mouseX;
    y1 = mouseY;
          xcol=data[0];
      xx=data[1];
      xy=data[2];/

      button(xx, xy, xcol);
    background(255);
    table();
    
    stroke(0, 0, 255);
    strokeWeight(1);
    fill(0, 0, 255);
    ellipse(bx, by, 50, 50);
    stroke(255, 0, 0);
    strokeWeight(1);
    fill(255, 0, 0);
    ellipse(rx, ry, 50, 50);
    stroke(0);
    fill(0);
    ellipse(bx, by, 25, 25);
    ellipse(rx, ry, 25, 25);
    strokeWeight(5);
    fill(0);
    text( bs, 50, 50 );
    text( rs, width-100, 50 );

   
    stroke(0);
    strokeWeight(1);
    fill(175);
    ellipse(x, y, 25, 25);
}
  }
}
  c.write(0 + " " + x1 + " " + y1 + "\n");
  }
  void button(int zx, int zy, int col) {
  if( x1 > (width/2)+25 && x1 < width && y1 > 0 && y1 < height ){
    stroke(255, 0, 0);
  strokeWeight(5);
  point(x1, y1);
  
  rx = mouseX;
  ry = mouseY;
  }
if( col == -1 ) {
  x = zx;
  y = zy;
}

    // Display circle at x location

    println(rx + " " + ry);
  }

  void table() {
    background(255);
    /*
 for(int o=0; o<700; o+=15) {
     for(int i=0; i<700; i+=15) {
     strokeWeight(2);
     stroke(125,125,125);
     point(i, o);
     }
     }
     
     strokeWeight(5);
     stroke(173, 173, 173, 125);
     line(width/2, 0, width/2, height);
     noFill();
     stroke(0, 0, 255);
     strokeWeight(5);
     ellipse(width/2, height/2, 100, 100);
     strokeWeight(2);
     rect(width-25, height/2-50, 100, 100);
     stroke(255, 0, 0);
     strokeWeight(2);
     rect(-75, height/2-50, 100, 100);
     ellipse(width/2, height/2, 50, 50);
     */

    image(table, 0, 0, width, height);
  }

  void mousePressed() {
    if ( y>=ry-50 && y<=(ry+50) && x>=(rx-50) && x<=rx+50 && xspeed>0) {
      yspeed = random(-25) - 50;
      xspeed = (xspeed + 50) * -1;
      r = 64;
    }
    if ( y>=by-50 && y<=(by+50) && x>=(bx-50) && x<=bx+50 && x<=rx+50 && xspeed>0) {
      yspeed = random(25) + 50;
      xspeed = (xspeed + 50) * 1;
      r = 64;
    }
    if ( y>=by-50 && y<=(by+50) && x>=(bx-50) && x<=bx+50 && x<=rx+50 && xspeed<0) {
      yspeed =random(-25) - 50;
      xspeed = (xspeed + 50) * -1;
      r = 64;
    }
    if ( y>=ry-50 && y<=(ry+50) && x>=(rx-50) && x<=rx+50 && xspeed<0 && yspeed<0) {
      yspeed = random(25);
      xspeed = (xspeed + 50) * 1;

      r = 64;
    }
  }
  void mouseDragged() {
    if ( y>=ry-50 && y<=(ry+50) && x>=(rx-50) && x<=rx+50 && xspeed>0) {
      yspeed = random(-25) - 50;
      xspeed = (xspeed + 50) * -1;
      r = 64;
    }
    if ( y>=by-50 && y<=(by+50) && x>=(bx-50) && x<=bx+50 && x<=rx+50 && xspeed>0) {
      yspeed = random(25) + 50;
      xspeed = (xspeed + 50) * 1;
      r = 64;
    }
    if ( y>=by-50 && y<=(by+50) && x>=(bx-50) && x<=bx+50 && x<=rx+50 && xspeed<0) {
      yspeed =random(-25) - 50;
      xspeed = (xspeed + 50) * -1;
      r = 64;
    }
    if ( y>=ry-50 && y<=(ry+50) && x>=(rx-50) && x<=rx+50 && xspeed<0 && yspeed<0) {
      yspeed = random(25);
      xspeed = (xspeed + 50) * 1;

      r = 64;
    }
  }
  void keyPressed() {
    if (key == 'c') {
      x = width/2;
      y = width/2;
      xspeed = 10;
      yspeed = 10;
    }
  }
}

