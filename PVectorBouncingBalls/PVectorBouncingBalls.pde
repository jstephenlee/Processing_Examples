//adaption of https://processing.org/examples/circlecollision.html


Ball [] balls = new Ball [40];


void setup() {
  size (540, 960);
  pixelDensity(2);
  blendMode(MULTIPLY);
  for (int i=0; i<balls.length; i++) {

    balls[i]= new Ball (width/2, map(i, 0, balls.length, height/4, height/4*3), map(i, 0, balls.length,10, 1), map(i, 0, balls.length, 10, 1), map(i, 0, balls.length, 10, 100),color(random(255), random(255), random(255)));
  }
}


void draw () {
  background (255);
  for (int i=0; i<balls.length; i++) {
    balls[i].update();
    balls[i].checkBoundaryCollision();
    balls[i].display();
  }
}
