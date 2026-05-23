int temporizador = 900;
int pantalla = 0;
float tamFont = 1;
int posY = 0;
int incPosY = 1;
int posX = 0;
int incPosX = 1;
PImage imagenUno, imagenDos, imagenTres, imagenCuatro, imagenCinco;
PFont fuenteUno;

void setup(){
  size(640, 480);
  textSize(30);
  fuenteUno = loadFont("CambriaMath-24.vlw");
  
  imagenUno = loadImage("imagenuno.jpg");
  imagenDos = loadImage("imagendos.jpg");
  imagenTres = loadImage("imagentres.jpg");
  imagenCuatro = loadImage("imagencuatro.jpg");
  imagenCinco = loadImage("imagencinco.jpg");
}

void draw(){
  background(255);
  textFont(fuenteUno);
  
  if (pantalla == 0) {
    image(imagenUno, 0, 0);
    botónInicio();
    textAlign(LEFT, BASELINE);

  } else if (pantalla == 1) {
    fill(255);
    
    if (frameCount < 590) {
      temporizador--;
      image(imagenUno, 0, 0);
      textSize(tamFont);
      text("Life Is Strange es un juego episódico de cinco partes\nque se dispone a revolucionar las elecciones\ny consecuencias del juego basados en la historia.", 20, 150, 600, 450);
      tamFont = tamFont + 0.04;
    
    } else if(frameCount < 1140) {
      temporizador--;
      image(imagenDos, 0, 0);
      posY = posY + incPosY;
      text("La protagonista del juego es Maxine Caulfield.\nElla es una estudiante de fotografía \nla cual descubre que puede retroceder en el tiempo para\ncambiar el curso de los acontecimientos.\nElla consigue premoniciones inquietantes del futuro.", 20, posY);
   
    } else if(frameCount < 1660) {
      temporizador--;
      image(imagenTres, 0, 0);
      posX = posX - incPosX;
      
      if (250 + posX < 20) {
        posX = -230; 
      }
      text("Es una aventura gráfica jugada a partir de una\nperspectiva en tercera persona. La mecánica del\ntiempo de rebobinado permite al jugador\nrehacer cualquier acción que se haya tomado.", 250 + posX, 200);
    
    } else if(frameCount < 2180) {
      temporizador--;
      image(imagenCuatro, 0, 0);
      posY = posY - incPosY;
      text("Max se reúne con su vieja amiga de la infancia\nChloe Price, y juntas buscan descubrir la verdad detrás\nde una estudiante desaparecida llamada Rachel Amber.", 20, posY);
    
    } else if(frameCount < 2700) {
      temporizador--;
      image(imagenCinco, 0, 0);
      textSize(24);
      int opacidad = int(map(frameCount, 2180, 2600, 0, 255)); 
      fill(255, opacidad);
      text("Ambas deberán asistir a la escuela secundaria en Arcadia,\nOregon y tener que lidiar con los problemas de la vida\ncotidiana creadas por sus propias familias\ny compañeros de la escuela", 20, 200);
    
    } else {   
      image(imagenCinco, 0, 0);
      noStroke();
      fill(0);
      rect(540, 420, 80, 50, 10);
      fill(255);
      textSize(15);
      text("Reiniciar", 550, 450);
    }
  }
}

void botónInicio() {
  noStroke();
  fill(0);
  rect(240, 200, 160, 60, 10);
  
  fill(255);
  textSize(22);
  textAlign(CENTER, CENTER);
  text("INICIAR", 320, 230);
}

void mouseClicked() {
  if (pantalla == 0 && mouseX > 240 && mouseX < 400 && mouseY > 200 && mouseY < 260) {
    pantalla = 1;
    frameCount = 0;
 }
}
void mousePressed() {
  
  if (pantalla == 1 && frameCount >= 2700 && mouseX > 540 && mouseX < 620 && mouseY > 420 && mouseY < 470) {
    pantalla = 0;
    tamFont = 1;
    posX = 0;
    posY = 0;
  }
}
