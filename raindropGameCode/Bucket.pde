
class Bucket{
 PVector loc; 
 float sz, b;
  
  Bucket(float x, float y){
   x = mouseX;
   y = mouseY;
   sz = 100;
   loc = new PVector(mouseX, mouseY);
  }
  
  void catcher(float x, float y){
   fill(0);
   ellipse(loc.x,loc.y,sz,sz);
   noStroke();
  }
  boolean inInContactWith(Bucket b){
   if(loc.dist(b.loc)<sz/2 + b.sz/2){
    return true; 
   }
   else{
    return false; 
   }
  }
  void update(){
    loc.set(mouseX,mouseY);
  }
  void reset(){
   loc.x = random(width);
   loc.y = 0;
  }
}