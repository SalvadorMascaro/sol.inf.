

void setup() {
  fullScreen();            // Pantalla completa
  //size(1920, 1080);      // Pantalla HD
  noStroke();              // Sense bordes
  textAlign(CENTER);       // Alineació del text
  textSize(18);            // Mida del text.
  setGUI();
  loadMedia();
}

void draw() {

  background(255);         
  dibuixaPantalla01();
}
