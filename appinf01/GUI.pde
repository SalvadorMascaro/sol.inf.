PImage img;


boolean colorselected= false;
boolean comprovaLogin;
boolean logged = false;
float cardsW = 1300, cardsH = 700;
Result rs = null;
int numCardsPage = 4;
PagedResults pc;

String titol="fitxer.txt";
String ruta = "C:\\Users\\tonim\\Documents\\CODE\\P5LAB\\GUI\\textfileSave_001\\data\\";
String title = "Confirma!";
String message = "Vols canviar el color de fons?";


Button bGuardar, bSRecientes, bRGrafico, bBElementos, bFecha, bVariables, bCerca, bEnter, bEliminar;
Button br1, br2;
boolean bVariablesShow = false;
TextField textDream, cercaText, tittleDream;
TextArea areaText;
ImageButton ib, bLogo, bDelete;
Calendari c;
SwitchButton b1, b2;
Select s1, s2, s3, s4;
BarsDiagram s;
SwitchFilterArray sfa, sfc;
TextField userText, passText;
Confirm cf;



int sfW = 800;
int sfH = 40;
String[] info = {"tema1", "tema2", "tema3", "tema4", "tema5", "tema6", "tema7"};
String[][] inforesults = {
  {"1", "Títol 1", "10/03/2022", "Descripció 1", "S", "pesadilla", "paco@gmail.com", "Label1,Label2,Label3,Label4"}, 
  {"2", "Títol 2", "10/03/2022", "Descripció 2", "S", "pesadilla", "paco@gmail.com", "Label1,Label2,Label3"}, 
  {"3", "Títol 3", "10/03/2022", "Descripció 3", "N", "pesadilla", "paco@gmail.com", "Label1,Label3"}, 
  {"4", "Títol 4", "10/03/2022", "Descripció 4", "S", "pesadilla", "paco@gmail.com", "Label2,Label3"}, 
  {"5", "Títol 5", "10/03/2022", "Descripció 5", "N", "pesadilla", "paco@gmail.com", "Label1,Label2,Label3,Label4"}, 
  {"6", "Títol 6", "10/03/2022", "Descripció 6", "S", "pesadilla", "paco@gmail.com", "Label1,Label3"}, 
  {"7", "Títol 7", "10/03/2022", "Descripció 7", "N", "pesadilla", "paco@gmail.com", "Label1,Label2,Label3"}, 
};
String title2 = "Confirma!";
String message2 = "Vols canviar el color de fons?";




boolean viewCalendar = false;
PImage img1, img2, img3, img4, img5, img6;

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
  initFilter();
  initTextFieldlogin();
  pagedResults();
  initConfirm();
}

// Creació dels botons de la GUI
void initButtons() {
  // Dimensions dels botons
  int buttonH = 60, buttonW = 100;
  int buttonH1= 60, buttonW1 =320;
  int buttonH2= 30, buttonW2=200;

  bGuardar    = new Button("Guardar", width/2+textAreaWidth/2+30, height/10*7, buttonW2, buttonH2);
  bSRecientes   = new Button("SUEÑOS RECIENTES", 2*marginH + logoWidth, marginV, buttonW1, buttonH1);
  bRGrafico= new Button("GRAFICOS", 2*marginH + logoWidth+ banner1Width +margeseparacio, marginV, buttonW1, buttonH1);
  bBElementos= new Button("BÚSQUEDA POR ELEMENTOS", 2*marginH + logoWidth+ 2*banner1Width +2*margeseparacio, marginV, buttonW1, buttonH1);
  bFecha= new Button("Fecha", width/2+textAreaWidth/2+30, height/8, buttonW2, buttonH2);
  b1 = new SwitchButton(1200, 200, buttonW3, buttonH3);
  bCerca    = new Button("Buscar", width/5*3.48, height/5*2, buttonW, buttonH);
  bEliminar = new Button("Eliminiar", width/2+textAreaWidth/2+30, height/10*8, buttonW2, buttonH2);


  bVariables= new Button ("Grafico", logoWidth+pageWidth/11, pageHeight/15, 100, 40);
  bEnter = new Button("Entrar", width/2-buttonW/2, height/2+100, buttonW, buttonH);

  img1 = loadImage("../data/imgs/Afegir.png");
  img2 = loadImage("../data/imgs/Afegir.png");
  img3 = loadImage("../data/imgs/Afegir.png");
  PImage[] buttonImages = {img1, img2, img3};
  ib = new ImageButton(buttonImages, W/2-15, H-190, buttoniW, buttoniH);

  img4 = loadImage("../data/imgs/Logo.PNG");
  PImage[] buttonLogo = {img4, img4, img4};
  bLogo = new ImageButton (buttonLogo, marginH, marginV, logoWidth, logoHeight);
}


// Activar els botons del menú
void enableButtons() {
  bGuardar.setEnabled(true);
}

void initTextField() {
  tittleDream=new TextField(250, height/30*2, width/6*2, 50);
  textDream= new TextField(200, 200, 200, 30);
  cercaText= new TextField(width/5, height/10, 400, 50);
}
void initTextArea() {
  areaText = new TextArea(250, height/30*5, textAreaWidth, height-height/5-50, 70, 13);// col. fil
}
void initCalendari() {
  c = new Calendari(1155, 230, 250, 250);
}

void initSelect() {
  String[] selectValues = {"RED", "GREEN", "BLUE", "WHITE", "BLACK", "ORANGE", "YELLOW", "PURPLE"};
  String[] selectValues2 = {"1", "2"};
  String[] selectValues3 = {"paco", "usuari 1", "usuari2"};

  float selectW = 200;
  float selectH = 30;
  float selectW2 = 200;
  float selectH2= 30;

  s1 = new Select(selectValues, 1200, 275, selectW, selectH);
  s2= new Select(selectValues2, logoWidth+pageWidth/11, pageHeight/10+20, selectW2, selectH2);
  s3= new Select(selectValues3, width/5, height/5*1.5, selectW2, selectH2);
  s4= new Select(selectValues, width/5*2, height/5*1.5, selectW2, selectH2);
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
void initFilter() {
  sfa = new SwitchFilterArray(width/5, height-50, sfW, sfH);
  // Establim les etiquetes (noms) dels filtres
  sfa.setData(info);

  sfc = new SwitchFilterArray(width/5, height/5, sfW, sfH);
  // Establim les etiquetes (noms) dels filtres
  sfc.setData(info);
}

void initTextFieldlogin() {
  userText = new TextField(width/2-100, height/2, 200, 35);
  passText = new TextField(width/2-100, height/2+50, 200, 35);
}

void pagedResults() {

  pc = new PagedResults(numCardsPage);
  pc.setData(inforesults);
  pc.setCards();

  // Creació dels botons
  float buttonW = 65;
  float buttonH = 35;

  br1 = new Button("NEXT", width/2-buttonW-3,height-buttonH-10, buttonW, buttonH);
  br2 = new Button("PREV", width/2+3,height-buttonH-10, buttonW, buttonH);
}

void initConfirm(){
cf = new Confirm(title2, message2, 100, 100, compW, compH);
}
