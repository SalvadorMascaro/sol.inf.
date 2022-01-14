
enum Pantalla {INICI, SOMNI, CREDITS };
Pantalla pantalla = Pantalla.INICI;

void setup() {
  fullScreen();            // Pantalla completa
  //size(1920, 1080);      // Pantalla HD
  noStroke();              // Sense bordes
  textAlign(CENTER);       // Alineació del text
  textSize(18);        
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
  
  
  updateCursor();
  
  pushStyle();
  fill(0);
  textSize(36);
  textAlign(RIGHT);
  text("PANTALLA ", width-50, 60);
  text("X: "+mouseX+", Y:"+mouseY, width-50, 100);
  popStyle();
}


void mousePressed() {
  
  if(pantalla==Pantalla.INICI && ib.mouseOverButton() && ib.enabled){
    pantalla = Pantalla.SOMNI;
  }
  
   textDream.isPressed();
   if(pantalla==pantalla.SOMNI){
     areaText.isPressed();
     c.checkButtons();
   }
   if(pantalla==Pantalla.SOMNI && bFecha.mouseOverButton() && ib.enabled){
    viewCalendar = !viewCalendar;
  }
  
  if(b1.mouseOverButton()){
    b1.toggle();
    if(b1.enabled){
      bgColor = color(255);
    }
    else {
      bgColor = color(0);
    }
  }
 
}


void keyPressed() {
   textDream.keyPressed(key, (int)keyCode);
   
   if(key=='1'){
     pantalla = Pantalla.INICI;
   }
   else if(key=='2'){
     pantalla = Pantalla.SOMNI;
   }
   else if (key=='3'){
     pantalla = Pantalla.CREDITS;
   }
    if(pantalla==pantalla.SOMNI){
    areaText.keyPressed(key, (int)keyCode);
    if(keyCode==LEFT){
    c.prevMonth();
    println("PREV MONTH");
  }
  // Anar un mes endavant
  else if(keyCode==RIGHT){
    c.nextMonth();
    println("PREV MONTH");
  }
   }
}

// Modifica el cursor
void updateCursor(){
  
  if((pantalla==Pantalla.INICI && ib.mouseOverButton() && ib.enabled)){
      cursor(HAND);
  }
  else {
     cursor(ARROW);
  }
  
if(b1.mouseOverButton()){
      cursor(HAND);
  }
  else {
     cursor(ARROW);
  }
}
