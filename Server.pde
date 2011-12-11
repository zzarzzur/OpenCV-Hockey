class Servers {

  Server s;
  String input;
  int data[];
  int xx=0, xy=0, xcol=0;
  Servers() {
  }
  void draw() {
    table();
    c = s.available();
    if (c != null) {
      input = c.readString();
      if (input.length() > 3 && input.substring(input.length()-2, input.length()) == "\n") {
        input = input.substring(0, input.indexOf("\n")); // Only up to the newline
        data = int(split(input, ' ')); // Split values into an array
        if(data.length > 2){
        // Draw line using received coords
        ;


        xcol=data[0];
        xx=data[1];
        xy=data[2];
        x1 = xx;
        y1 = xy;
        button(xx, xy, xcol);
        }
      }
    
  }
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

  x = x + xspeed;
  y= y + yspeed;

  // Remember, || means "or."
  if ((x > width) || (x < 0)) {
    // If the object reaches either edge, multiply speed by -1 to turn it around.
    xspeed = xspeed * -1;
  }

  // Remember, || means "or."
  if ((y > height) || (y < 0)) {
    // If the object reaches either edge, multiply speed by -1 to turn it around.
    yspeed = yspeed * -1;
  }
  if ( y>=ry-50 && y<=(ry+50) && x>=(rx-50) && x<=rx+50 && xspeed>0) {
    yspeed = random(-25);
    xspeed = random(25) * -1;
  }
  if ( y>=by-50 && y<=(by+50) && x>=(bx-50) && x<=bx+50 && x<=rx+50 && xspeed>0) {
    yspeed = random(25);
    xspeed = random(25) * 1;
  }
  if ( y>=by-50 && y<=(by+50) && x>=(bx-50) && x<=bx+50 && x<=rx+50 && xspeed<0) {
    yspeed = random(-25);
    xspeed = random(25) * -1;
  }
  if ( y>=ry-50 && y<=(ry+50) && x>=(rx-50) && x<=rx+50 && xspeed<0 && yspeed<0) {
    yspeed = random(25);
    xspeed = random(25) * 1;
  }
  if (x<0 && y<0) {
    x = width/2;
    y = height/2;
  }
  if (x>width && y<0) {
    x = width/2;
    y = height/2;
  }
  if (x>width && y>height) {
    x = width/2;
    y = height/2;
  }
  if (x>width && y<0) {
    x = width/2;
    y = height/2;
  }
  if (x>width-25 && y>(height/2)-50 && y<(height/2)+50) {
    bs++;
    x = width/2;
    y = height/2;
    text( rds, width/2-100, 50 );
  }
  if (x<25 && y>(height/2)-50 && y<(height/2)+50) {
    rs++;
    x = width/2;
    y = height/2;
    text( bds, width/2-100, 50 );
  }

  stroke(0);
  strokeWeight(1);
  fill(175);
  ellipse(x, y, 25, 25);


  s.write(-1 + " " + x + " " + y + "\n");
}
void button(int zx, int zy, int col) {
  if ( col == 0) {
    stroke(0, 0, 255);
    strokeWeight(5);
    point(x1, y1);
    bx = zx;
    by = zy;
  }
  if ( col == 1 ) {
    stroke(255, 0, 0);
    strokeWeight(5);
    point(x1, y1);

    rx = zx;
    ry = zy;
  }
  if ( col == 2 ) {
    rs++;
    text( bds, width/2-100, 50 );
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
}
