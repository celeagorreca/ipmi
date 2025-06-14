//Comisión 5, Celeste Geraldine Agorreca

PImage img;
color fondo;
boolean click = false;
float escalaX;
float escalaY;
float angulo = 0;
float offsetX;

void setup(){
  size(800, 400);
  background(15, 42, 145);
  img = loadImage("D_17.jpg");
  noFill();
  noStroke();
  fondo = color(15, 42, 145);
  rectMode(CENTER);
}

void draw(){
  background(fondo);
  image(img, 0, 0);
  translate(528, 200);
  
// Funciones
  pushMatrix();
  boolean voltearX = false;
  boolean voltearY = false;

  if (click) {
    voltearX = (mouseX < 600);
    voltearY = (mouseY < height / 2);
  }

  if (voltearX) {
    escalaX = -1;
  } else {
    escalaX = 1;
  }

  if (voltearY) {
    escalaY = -1;
  } else {
    escalaY = 1;
  }

  scale(escalaX, escalaY);

  if (voltearX) {
    offsetX = -72;
  } else {
    offsetX = 72;
  }


// Dibujo
  int numRects = 9;
  float maxSize = 400;
  float rotationStep = PI / 56;

  for (int i = 0; i < numRects; i++) {
    pushMatrix();
    rotate(i * rotationStep + angulo); 
    float size = maxSize * (1 - (float)i / numRects);
    noStroke();
    fill(24, 25, 27);
    rect(offsetX, 0, 8 - size, 1 + size);
    fill(214, 205, 198);
    rect(offsetX, 8, 30 - size, 20 - size);
    popMatrix();
  }

  popMatrix();
}

void mousePressed() {
  if (mouseButton == LEFT) {
    click = true;
    fondo = color(random(255), random(255), random(255));
  }
}

void keyPressed() {
  click = false;
  fondo = color(15, 42, 145);
}
