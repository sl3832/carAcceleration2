Car [] cars = new Car [1000];
float tx=0;
float ty=0;

void setup() {
  size(1000, 400);
  
  
  
  for (int i=0; i<cars.length; i++) {
   tx=random(width);
   ty=random(height); 
   
   cars[i] = new Car(new PVector(tx, ty));
  }
}

void draw() {
  background(255);
 // frameRate(20);
  //fill(0);
  //rect(width-20,height/2,20,50);
  
  PVector gravity = new PVector(0,0.01);
  
  PVector wind = new PVector(0.01,0);

for(int i=0; i<cars.length; i++){
  cars[i].update();
  cars[i].checkEdges();
  cars[i].display();
  cars[i].applyForce(gravity);
  cars[i].applyForce(wind);
 
}
for(int i=0; i<cars.length; i++){
  
 if(mousePressed){
  PVector storm = new PVector(0,15);
  cars[i].applyForce(storm);
  cars[i].update();
 }

}
}
