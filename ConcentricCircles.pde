//Listing 2.1 Organizing code into setup() and draw() function blocks

int diam = 400;
boolean direction = false;
float centX, centY;
void setup() {
 size(500, 500);
 frameRate(24);
 smooth();
 background(180);
 centX = width/2;
 centY = height/2;
 stroke(0);
 strokeWeight(5);
 fill(255, 50);
}
void draw() {
 if (diam >= 10) {
 //background(180);
 stroke(int(random(0,255)), int(random(0,255)),int(random(0,255)));
 ellipse(centX, centY, diam, diam);
 if(direction){
 diam += 10;
 } else {
 diam -= 10;
 }
 }
 
}

void mouseClicked(){
 redraw(); 
}

void keyPressed(){
  if(key =='a'){
    direction = !direction;
    diam = 400;
  }
  if(key =='d'){
    direction = !direction;
    diam = 10;
  }
}
