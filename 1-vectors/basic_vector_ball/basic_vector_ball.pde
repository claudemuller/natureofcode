Ball ball;

void setup() {
  size(640, 480);
  ball = new Ball();
}

void draw() {
  background(255);
  ball.move();
  ball.bounce();
  ball.render();
}