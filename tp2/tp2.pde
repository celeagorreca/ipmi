// Celeste Geraldine Agorreca, Comisión 5

int temporizador = 900;
int pantalla;
float tamFont = 1;
int posY = 0;
int incPosY = 1;
int posX = 0;
int incPosX = 1;
PImage imagenuno, imagendos, imagentres, imagencuatro, imagencinco;
PFont fuenteuno, fuentedos;

void setup(){
  size(640, 480);
  textSize(30);
  fuenteuno = loadFont("BellMTBold-24.vlw");
  fuentedos = loadFont("AgencyFB-Bold-28.vlw");
  
  imagenuno = loadImage("imagenuno.jpg");
  imagendos = loadImage("imagendos.jpg");
  imagentres = loadImage("imagentres.jpg");
  imagencuatro = loadImage("imagencuatro.jpeg");
  imagencinco = loadImage("imagencinco.jpg");

}

void draw(){
  background(255);
  textFont(fuenteuno);
  fill(255);
  
  if (frameCount < 470) {
    temporizador--;
    image(imagenuno, 0, 0);
    textSize(tamFont);
    text("1984 de George Orwell es una novela distópica que \nse ambienta en un futuro donde el mundo está dividido \nen tres superestados totalitarios en constante guerra.", 20, 150, 600, 450);
    tamFont = tamFont + 0.05;
  
  } else if(frameCount < 900) {
    temporizador--;
    image(imagendos, 0, 0);
    posY = posY + incPosY;
    text("En Oceanía, uno de estos estados, el Partido controla \nabsolutamente la vida de los ciudadanos, quienes son \nvigilados constantemente por el Gran Hermano.", 20, posY);
  
  } else if(frameCount < 1300) {
    temporizador--;
    image(imagentres, 0, 0);
    posX = posX - incPosX;
    text("La novela explora los peligros de la vigilancia,\nel control mental, la manipulación de la información\ny la pérdida de la libertad individual.", 250 + posX, 200);
  
  } else if(frameCount < 1700) {
    temporizador--;
    image(imagencuatro, 0, 0);
    posY = posY - incPosY;
    text("El protagonista de la novela es Winston Smith,\nun miembro del Partido Exterior que trabaja para el\nMinisterio de la Verdad, reescribiendo artículos para que\ncumplan con la ideología y la imagen que venden.\nPerturbado por su trabajo, Winston comienza a escribir\nun diario en el que expresa su frustración\ny sueña dar con una organización secreta de\nrebeldes conocida como la Hermandad.", 20, posY);
  
  } else if(frameCount < 2100) {
    temporizador--;
    image(imagencinco, 0, 0);
    textFont(fuentedos);
    textSize(40);
    int opacidad = int(map(frameCount, 1700, 2100, 0, 255)); 
    fill(255, opacidad);
    text("La guerra es la paz,\nla libertad es la esclavitud,\nla ignorancia es la fuerza", 180,200);
  
  }  else if (pantalla == 0){   
    image(imagencinco, 0, 0);
    noStroke();
        fill(0);
        rect(540, 420, 80, 50);
        fill(255);
        textSize(15);
        text("Reiniciar", 550, 450);
     }
 
}

void mousePressed() {                             

      if (mouseX > 540 & mouseX < 540+80 & mouseY > 420 & mouseY < 470) {
       frameCount = 0;
       tamFont = 1;
       posX = 0;
       posY = 0;
  }

}
