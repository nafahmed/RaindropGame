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
    vel.add(a);
    loc.add(vel);
  }

  boolean isInContactWith(Bucket thing) {
    if (loc.dist(thing.loc)<diam/2+thing.sz/2) {
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