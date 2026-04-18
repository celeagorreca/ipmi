PImage img;
void setup(){
  size(800,400);
  background(255);
  img = loadImage("planetario.jpg");
}
void draw(){
  background(87, 142, 196);
  

  
  //piso
  noStroke();
  fill(213, 211, 198);
  rect(400, 335, 400, 70);
  
  //planetario
  fill(150, 150, 150);
  ellipse(600, 190, 200, 200);
  fill(173, 173, 173);
  ellipse(590, 190, 180, 200);
  
  fill(87, 142, 196);
  rect(520, 250, 50, 50);
  
  fill(201, 201, 201);
  rect(439, 200, 322, 50);
  ellipse(600, 220, 350, 100);
  
  fill(103, 165, 183);
  ellipse(600, 230, 350, 90);
  fill(201, 201, 201);
  ellipse(600, 246, 330, 55);
  
  fill(87, 142, 196);
  rect(400, 195, 39, 60);
  rect(761, 195, 39, 60);
  fill(173, 173, 173);
  ellipse(600, 254, 322, 45);
  fill(150, 150, 150);
  ellipse(600, 260, 250, 35);
  
  fill(173, 173, 173);
  ellipse(600, 331, 460, 150);
  fill(150, 150, 150);
  ellipse(600, 360, 450, 191);
  fill(87, 142, 196);
  ellipse(600, 365, 450, 191);
  
  
  fill(201, 201, 201);
  quad(505, 241, 571, 292, 634, 292, 698, 241);
 
  fill(72, 131, 82);
  rect(400, 321, 400, 40);
 
  //ventanas del planetario
  fill(103, 165, 183);
  quad(518, 241, 573, 281, 632, 281, 686, 241);
  
  fill(173, 173, 173);
  quad(553, 292, 540, 326, 664, 326, 651, 292);
  fill(120, 120, 120);
  quad(570, 296, 560, 326, 643, 326, 632, 296);
  fill(213, 211, 198);
  quad(560, 320, 536, 335, 666, 335, 640, 320);
  
  fill(213, 211, 198);
  rect(400, 335, 400, 70);
  
  fill(173, 173, 173);
  circle(441, 323, 38);
  
  image(img, 0, 0);
  
  fill(0);
  textSize(20);
  text(mouseX + " - " + mouseY, mouseX, mouseY);
  println(mouseX + " - " + mouseY);
}
