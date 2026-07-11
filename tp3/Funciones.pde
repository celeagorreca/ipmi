void dibujarEspiral(int i){ 
  float tamActual = tamMax - i * (tamMax/cant);
  
  pushMatrix();
    rotate(radians(5*i));
    
    if(i % 2 == 0){
      fill(colorBlanco);
    } else {
      fill(colorNegro);
    }
    
    rect(0, 0, tamActual, tamActual); 
  popMatrix();
}

boolean cambiarColorNegro() {
  return cambioColor && (mouseX != pmouseX) && (mouseX >= 0 && mouseX > 600);
}

boolean cambiarColorBlanco() {
  return cambioColor && (mouseX != pmouseX) && (mouseX < 600 && mouseX < 600);
}

void reiniciarPrograma() {
  colorNegro = color(0);
  colorBlanco = color(255);
  cambioColor = false;
}
