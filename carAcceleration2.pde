Car [] cars = new Car [100];
float tx=0;
float ty=0;

void setup() {
  size(1000, 400);
  tx=width/8;
  ty=height/8; 
  for (int i=0; i<cars.length; i++) {
    cars[i] = new Car(new PVector(tx*i/2, ty*i/2));
  }
}

void draw() {
  background(255);
  frameRate(20);
  PVector gravity = new PVector(0,0.01);
  
  PVector wind = new PVector(0.1,0);

for(int i=0; i<cars.length; i++){
  cars[i].update();
  cars[i].checkEdges();
  cars[i].display();
  cars[i].applyForce(gravity);
  cars[i].applyForce(wind);
 
}
for(int i=0; i<cars.length; i++){
 if(keyPressed){
  PVector storm = new PVector(6,6);
  cars[i].applyForce(storm);
}
}
}
