class Car{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  
  
  Car(PVector loc){
   
    location = loc;
    velocity = new PVector(0,0);
    acceleration = new PVector(random(2),random(-2,2));

    topspeed = 5;
  }
  
  void applyForce(PVector force){
    acceleration.add(force);
  }
  
  void update(){
    
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity); 
    acceleration.random2D();
    acceleration.mult(0);
  }
  
  void display(){
    noStroke();
    fill(255,0,0);
    rect(location.x,location.y,48,12);
  }
  
   void checkEdges() {

    if (location.x > width) {
      location.x = 0;
    } 
    else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } 
    else if (location.y < 0) {
      location.y = height;
    }
  }
}
