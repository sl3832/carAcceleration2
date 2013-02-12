Car [] cars = new Car [200];
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
  
  PVector f = new PVector(0.01,0.01);
  

for(int i=0; i<cars.length; i++){
  cars[i].update();
  cars[i].checkEdges();
  cars[i].display();
  cars[i].applyForce(f);
}
}
