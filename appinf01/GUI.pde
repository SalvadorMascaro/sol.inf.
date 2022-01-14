// Configuració dels Elements de la GUI
// Botons, Desplegables, 

TextField textDream;
TextArea areaText;
ImageButton ib;
Calendari c;
SwitchButton b1, b2;
boolean viewCalendar = false;
PImage img1, img2, img3;

// Dimensions dels botons
float buttoniW = 50;
float buttoniH = 50;


// Botons del Menú Principal
Button bGuardar, bSRecientes, bRGrafico, bBElementos, bFecha;
// Dimensions dels botons
int buttonH = 60, buttonW = 100;
int buttonH1= 60, buttonW1 =320;
int buttonH2= 30, buttonW2=200;
// Creació dels elements de la GUI
void setGUI() {
  initButtons();
  initTextField();
  initTextArea();
  initCalendari();
  
}

// Creació dels botons de la GUI
void initButtons() {
  bGuardar    = new Button("Guardar", marginH, marginV+ logoHeight+20, buttonW, buttonH);
  bSRecientes   = new Button("SUEÑOS RECIENTES", 2*marginH + logoWidth, marginV, buttonW1, buttonH1);
  bRGrafico= new Button("REGISTRO GRAFICO", 2*marginH + logoWidth+ banner1Width +margeseparacio, marginV, buttonW1, buttonH1);
  bBElementos= new Button("BÚSQUEDA POR ELEMENTOS", 2*marginH + logoWidth+ 2*banner1Width +2*margeseparacio, marginV, buttonW1, buttonH1);
  bFecha= new Button("Fecha", 1200, height/8 , buttonW2, buttonH2);
  b1 = new SwitchButton(1200, 200, buttonW3, buttonH3);
  

  img1 = loadImage("../data/imgs/Afegir.png");
  img2 = loadImage("../data/imgs/Afegir.png");
  img3 = loadImage("../data/imgs/Afegir.png");
  PImage[] buttonImages = {img1, img2, img3};

  // Creació dels botons
  ib = new ImageButton(buttonImages, W/2-15, H-190, buttoniW, buttoniH);
}


// Activar els botons del menú
void enableButtons() {
  bGuardar.setEnabled(true);
}

void initTextField() {
  textDream= new TextField(200, 200, 200, 30);
}
void initTextArea(){
  areaText = new TextArea(250, 50, 900, 800, 70, 13);// col. fil
}
void initCalendari(){
  c = new Calendari(1155, 230 ,250, 250);
}
