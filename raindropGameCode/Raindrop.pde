

class Raindrop {
  PVector loc, vel, a;
  float diam = 30;


  Raindrop(float x, float y) {
    y = 0;
    x = random(width);
    a = new PVector(0, 0.01);
    loc = new PVector(x, y);  
    vel = new PVector(0, random(1, 5));
  }


  void display() {
    ellipse(loc.x, loc.y, diam, diam);
    fill(255);
    noStroke();
  }

  void fall() {
    vel.mult(1.1);
    loc.add(vel);
  }

  boolean isInContactWith(Bucket b) {
    if (loc.dist(b.loc)<diam/2+b.sz/2) {
      return true;
    } else {
      return false;
    }
  }




  void reset() {
    loc.x = random(width);
    loc.y = 0;
    vel = new PVector(0, random(1, 5));
  }
}