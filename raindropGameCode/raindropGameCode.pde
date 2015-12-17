PVector circle;   //declare a PVector called mouseRaindrop r;      //declare a new Raindrop called r
Raindrop r;
Bucket b;
 //On your own, create an array of Raindrop objects instead of just one
//Use the array instead of the single object
 //You can start out by just using the single Raindrop as you test


ArrayList<Raindrop> r = new ArrayList<Raindrop>();

void setup() {
  size(1200, 800);
 circle = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
 r = new Raindrop(random(width), 0);   //Initialize r. The parameters used are the initial x and y positions
b = new Bucket(mouseX, mouseY);
r.add(new Raindrop(mouseX, mouseY));
}

void draw() {
  println(r.size());
  r.add(new Raindrop(mouseX, mouseY));
  
  for(int i = r.size()-1; i>=0; i--){
    Raindrop a = r.get(i);
b.update();
  circle.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
 background(0, 200, 255);
  r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
  r.display();      //display the raindrop
 b.catcher(mouseX, mouseY);
  if (r.isInContactWith(b)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
    r.reset();                         //if it is, reset the raindrop
  }
  if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
    r.reset();                           //if it does, reset the raindrop
  }
}
}