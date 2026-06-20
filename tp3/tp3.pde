PImage imagen;
int cant = 13;
float tamMax = 400;
color colorNegro = color(0);
color colorBlanco = color(255);
boolean cambioColor = false;

void setup(){
  size(800, 400);
  rectMode(CENTER);
  imagen = loadImage("34.jpg"); 
  noStroke();
}

void draw(){
  background(255);
  image(imagen, 0, 0);

  if (cambiarColorNegro()) {
    colorNegro = color(random(255), random(255), random(255));
  }
  
  if (cambiarColorBlanco()) {
    colorBlanco = color(random(255), random(255), random(255));
  }

  translate(600, height/2); 

  for(int i=0; i<cant; i++){
    for(int j=0; j<cant; j++){
    dibujarEspiral(tamMax, i);
    }
  }
}

void mousePressed(){
  cambioColor = !cambioColor;
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    reiniciarPrograma();
  }
}
