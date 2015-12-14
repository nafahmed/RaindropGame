class Raindrop {
  PVector loc, vel;
  float diam = 30;


  Raindrop(float x, float y) {
    y = 0;
    x = random(width);
    loc = new PVector(x, y);  
    vel = PVector.random2D();
    vel.mult(2);
  }


  void display() {
    ellipse(loc.x, loc.y, diam, diam);
    fill(255);
    noStroke();
  }

  void fall() {
    loc.sub(vel);
  }

  boolean isInContactWith(PVector mouse) {
    if (dist(mouse.x, mouse.y, loc.x, loc.y)<diam/2) {
      return true;
    } else {
      return false;
    }
  }




  void reset() {
   loc.x = random(width);
   loc.y = 0;
  }

}