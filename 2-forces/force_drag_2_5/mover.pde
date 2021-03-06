class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Mover() {
    location = new PVector(width / 2, 0);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }
    
  void applyForce(PVector force) {
    acceleration.add(force);
  }
  
  void update() { 
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void edges() {
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    } else if (location.y > height) {
      location.y = height;
      velocity.y *= -1;
    } else if (location.y < 0) {
      location.y = 0;
      velocity.y *= -1;
    }
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x, location.y, 48, 48);
  }
}