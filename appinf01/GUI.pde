// Configuració dels Elements de la GUI
// Botons, Desplegables, 

TextField textDream;

// Botons del Menú Principal
Button bGuardar, bSRecientes, bRGrafico, bBElementos;
// Dimensions dels botons
int buttonH = 60, buttonW = 100;
int buttonH1= 60, buttonW1 =320;
// Creació dels elements de la GUI
void setGUI() {
  initButtons();
  initTextField();
}

// Creació dels botons de la GUI
void initButtons() {
  bGuardar    = new Button("Guardar", marginH, marginV+ logoHeight+20, buttonW, buttonH);
  bSRecientes   = new Button("SUEÑOS RECIENTES", 2*marginH + logoWidth, marginV, buttonW1, buttonH1);
  bRGrafico= new Button("REGISTRO GRAFICO", 2*marginH + logoWidth+ banner1Width +margeseparacio, marginV, buttonW1, buttonH1);
  bBElementos= new Button("BÚSQUEDA POR ELEMENTOS", 2*marginH + logoWidth+ 2*banner1Width +2*margeseparacio, marginV, buttonW1, buttonH1);
}

// Activar els botons del menú
void enableButtons() {
  bGuardar.setEnabled(true);
}

void initTextField(){
textDream= new TextField(200, 200, 200, 30);
}
