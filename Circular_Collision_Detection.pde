float x1=150; //x-coordinate of the smaller ellipse
float y1=200; //y-coordinate of the smaller ellipse
float r1=10; //radius of the smaller ellipse
float x2=250; //x-coordinate of the larger ellipse
float y2=250; //y-coordinate of the larger ellipse
float r2=50; //radius of the larger ellipse
color c1=(#FF1803); //red colour
color c2=(#16FF03); //green colour
color c3; //colour variable to change the colour of the larger ellipse

void setup () {
  size(500,500); //size of the run window
}

void draw() {
  background(255); //white background colour
  fill(c3); //variable to change the colour of the larger ellipse
  ellipse(x2,y2,r2*2,r2*2); //draws the larger ellipse
  if(dist(x1,y1,x2,y2)<r1+r2) { //if the distance between the two shapes is less than the radiuses of the two ellipses combined
    fill(c2); //green fill colour for the square
    rect(x1-10,y1-10,r1*2,r1*2); //draws a square to replace the smaller ellipse
    c3=c1; //changes larger ellipse fill colour to red
  }
  else {
    fill(c1); //red fill colour for the smaller ellipse
    ellipse(x1,y1,r1*2,r1*2); //draws the smaller ellipse to replace the square
    c3=c2; //changes larger ellipse fill colour to green
  }
}

void keyPressed() {
  if(key==CODED) { //enables detection of special keys
    if(keyCode==UP) {y1=y1-1;} //if pressing the up arrow key, the smaller ellipse moves up at a rate of one pixel
    else if(keyCode==DOWN) {y1=y1+1;} //if pressing the down arrow key, the smaller ellipse moves down at a rate of one pixel
    else if(keyCode==LEFT) {x1=x1-1;} //if pressing the left arrow key, the smaller ellipse moves left at a rate of one pixel
    else if(keyCode==RIGHT) {x1=x1+1;}//if pressing the right arrow key, the smaller ellipse moves right at a rate of one pixel
  }
}
