Mover m;

void setup() {
  size(640, 480);
  m = new Mover();
}

void draw() {
  background(255);
  
  PVector gravity = new PVector(0, 0.3);
  m.applyForce(gravity);
  
  //PVector wind = new PVector(0.2, 0);
  //m.applyForce(wind);
  
  if (mousePressed) {
    // Friction
    PVector drag = m.velocity.get();
    drag.normalize();
    float c = -0.1;
    float speed = m.velocity.mag();
    
    drag.mult(c * speed * speed);
    m.applyForce(drag);
  }
  
  m.update();
  m.edges();
  m.display();
}