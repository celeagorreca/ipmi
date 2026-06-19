PImage imagen;
int cant = 12;
float tamMax = 365;

void setup(){
  size(800, 400);
  background(255);
  rectMode(CENTER);
  imagen = loadImage("34.jpg");
  noStroke();
  noLoop();
}

void draw(){
  image(imagen, 0, 0);
  
  translate(600, height/2);
    
  for(int i=0; i<cant; i++){
  float tamActual = tamMax - i * (tamMax/cant);

  pushMatrix();
  for(int j=0; j<=i; j++){
    rotate(radians(5));
  }

  if(i % 2 == 0){
    fill(0);
  }else{
    fill(255);
  }

  rect(0,0,tamActual,tamActual);
  popMatrix();
  }
}
