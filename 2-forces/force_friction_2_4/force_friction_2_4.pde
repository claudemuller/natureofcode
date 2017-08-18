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
    PVector friction = m.velocity.get();
    friction.normalize();
    //friction.mult(-1);
    //float c = 0.01;
    float c = -0.1;
    friction.mult(c);
    m.applyForce(friction);
  }
  
  m.update();
  m.edges();
  m.display();
}