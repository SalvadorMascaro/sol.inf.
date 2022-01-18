
Button bGuardar, bSRecientes, bRGrafico, bBElementos, bFecha, bVariables;
TextField textDream;
TextArea areaText;
ImageButton ib;
Calendari c;
SwitchButton b1, b2;
Select s1;
BarsDiagram s;

boolean viewCalendar = false;
PImage img1, img2, img3;

// Dimensions dels botons
float buttoniW = 50;
float buttoniH = 50;


// Botons del Menú Principal

// Creació dels elements de la GUI
void setGUI() {
  initButtons();
  initTextField();
  initTextArea();
  initCalendari();
  initSelect();
  initBarsDiagram();
}

// Creació dels botons de la GUI
void initButtons() {
  // Dimensions dels botons
int buttonH = 60, buttonW = 100;
int buttonH1= 60, buttonW1 =320;
int buttonH2= 30, buttonW2=200;

  bGuardar    = new Button("Guardar", marginH, marginV+ logoHeight+20, buttonW, buttonH);
  bSRecientes   = new Button("SUEÑOS RECIENTES", 2*marginH + logoWidth, marginV, buttonW1, buttonH1);
  bRGrafico= new Button("REGISTRO GRAFICO", 2*marginH + logoWidth+ banner1Width +margeseparacio, marginV, buttonW1, buttonH1);
  bBElementos= new Button("BÚSQUEDA POR ELEMENTOS", 2*marginH + logoWidth+ 2*banner1Width +2*margeseparacio, marginV, buttonW1, buttonH1);
  bFecha= new Button("Fecha", 1200, height/8, buttonW2, buttonH2);
  b1 = new SwitchButton(1200, 200, buttonW3, buttonH3);
  bVariables= new Button ("Variables", 275, 20, 100, 40);


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
void initTextArea() {
  areaText = new TextArea(250, 50, 900, 800, 70, 13);// col. fil
}
void initCalendari() {
  c = new Calendari(1155, 230, 250, 250);
}

void initSelect() {
  String[] selectValues = {"RED", "GREEN", "BLUE"};
  String[] selectValues2 = {"1", "2", "3"};
  float selectW = 200;
  float selectH = 30;

  s1 = new Select(selectValues, 1200, 275, selectW, selectH);
}

void initBarsDiagram() {
  String[] textos = {"WATER", "AIR", "FIRE", "EARTH"};
  float[] values = {400, 600, 100, 300};
  color[] colors = {color(0, 0, 255), color(50, 50, 200), 
    color(255, 0, 0), color(0, 255, 0)};

  s = new BarsDiagram(50, 50, width/1.2, height/1.2);
   s.setTexts(textos);
  s.setValues(values);
  s.setColors(colors);
}
