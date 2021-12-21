
enum Pantalla {INICI, SOMNI, CREDITS };
Pantalla pantalla = Pantalla.INICI;

void setup() {
  fullScreen();            // Pantalla completa
  //size(1920, 1080);      // Pantalla HD
  noStroke();              // Sense bordes
  textAlign(CENTER);       // Alineació del text
  textSize(18);            // Mida del text....
  setGUI();
  loadMedia();
}

void draw() {

  background(255);      
  switch(pantalla){
    case INICI: dibuixaPantalla01(); break;
    case SOMNI: dibuixaPantalla02(); break;
    case CREDITS: dibuixaPantalla03(); break;
  }
}


void mousePressed() {
   textDream.isPressed();
}

void keyPressed() {
   textDream.keyPressed(key, (int)keyCode);
   
   if(key=='1'){
     pantalla = Pantalla.INICI;
   }
   else if(key=='2'){
     pantalla = Pantalla.SOMNI;
   }
   else {
     pantalla = Pantalla.CREDITS;
   }
}
