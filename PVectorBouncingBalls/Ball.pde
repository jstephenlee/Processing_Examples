class Ball {
  //variables
  PVector position;
  PVector velocity;
  float radius;
  color c;

  //constructor
  Ball (float x, float y, float vx, float vy, float tempRadius, color tempC) {
    position = new PVector (x, y);
    velocity = new PVector (vx, vy);
    radius= tempRadius;
    c=tempC;
  }


  //functions
  void update() {
    position.add(velocity);
  }


  void checkBoundaryCollision() {
    if (position.x > width-radius) {
      position.x = width-radius;
      velocity.x *= -1;
    } else if (position.x < radius) {
      position.x = radius;
      velocity.x *= -1;
    } else if (position.y > height-radius) {
      position.y = height-radius;
      velocity.y *= -1;
    } else if (position.y < radius) {
      position.y = radius;
      velocity.y *= -1;
    }
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(position.x, position.y, radius*2, radius*2);
  }
}
