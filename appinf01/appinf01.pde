
enum Pantalla {
  USUARI, INICI, SOMNI, GRAFICS, CERCA, RESULTATS
};
Pantalla pantalla = Pantalla.USUARI;

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
  switch(pantalla) {

  case USUARI: 
    dibuixaPantalla00(); 
    break;
  case INICI: 
    dibuixaPantalla01(); 
    break;
  case SOMNI: 
    dibuixaPantalla02(); 
    break;
  case GRAFICS: 
    dibuixaPantalla03(); 
    break;
  case CERCA: 
    dibuixaPantalla04(); 
    break;
  case RESULTATS: 
    dibuixaPantalla05(); 
    break;
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

  if (bLogo.mouseOverButton() && bLogo.enabled) {
    pantalla = Pantalla.INICI;
  }

  // ESDEVENIMENTS DE MOUSE A PANTLLA INICI
  if (pantalla==Pantalla.INICI) {

    if (ib.mouseOverButton() && ib.enabled) {
      pantalla = Pantalla.SOMNI;
    }

    if (bSRecientes.mouseOverButton() &&  bSRecientes.enabled) {
      pantalla = Pantalla.SOMNI;
    }
    if (bRGrafico.mouseOverButton() &&  bRGrafico.enabled) {
      pantalla = Pantalla.GRAFICS;
    }
  }

  // ESDEVENIMENTS DE MOUSE A PANTALLA SOMNI
  if (pantalla==pantalla.SOMNI) {

    areaText.isPressed();
    c.checkButtons();
    sfa.updateFilters();

    if (bFecha.mouseOverButton() && ib.enabled) {
      viewCalendar = !viewCalendar;
    }

    if (s1.mouseOverSelect() && s1.enabled) {
      if (!s1.collapsed) {
        s1.update();      // Actualitzar valor
        updateColor();    // Fer acció amb valor
      }
      s1.toggle();        // Plegar o desplegar
    }
    if (b1.mouseOverButton()) {
      b1.toggle();
      if (b1.enabled) {
        bgColor = color(255);
      } else {
        bgColor = color(0);
      }
    }
  }

  // CLICKS EN PANTALLA DE GRAFICOS
  if (pantalla==pantalla.GRAFICS) {
    if (bVariables.mouseOverButton() && bVariables.enabled) {
      bVariablesShow  = !bVariablesShow;
    }

    if (s2.mouseOverSelect() && s2.enabled) {
      if (!s2.collapsed) {
        s2.update();      // Actualitzar valor
        updateColor();    // Fer acció amb valor
      }
      s2.toggle();        // Plegar o desplegar
    }
  }
  
  // CLICKS EN PANTALLA DE RESLTADOS
  if (pantalla==pantalla.RESULTATS) {
    
    if(br1.mouseOverButton() && br1.enabled){
      pc.nextPage();
    }
    else if(br2.mouseOverButton() && br2.enabled){
      pc.prevPage();
    }
    
  }
  
  if (pantalla==pantalla.CERCA) {
    cercaText.isPressed();
    sfc.updateFilters();
    if(bCerca.mouseOverButton()&& bCerca.enabled){
    pantalla=pantalla.RESULTATS;
    }
    
 
  }
}

void keyPressed() {
  textDream.keyPressed(key, (int)keyCode);

  if (key=='0') {
    pantalla = Pantalla.USUARI;
  } else if (key=='1') {
    pantalla = Pantalla.INICI;
  } else if (key=='2') {
    pantalla = Pantalla.SOMNI;
  } else if (key=='3') {
    pantalla = Pantalla.GRAFICS;
  } else if (key=='4') {
    pantalla = Pantalla.CERCA;
  } else if (key=='5') {
    pantalla = Pantalla.RESULTATS;
  }
  
  if (pantalla==pantalla.CERCA) {
    cercaText.keyPressed(key,(int)keyCode);
  }

  if (pantalla==pantalla.SOMNI) {
    areaText.keyPressed(key, (int)keyCode);
    if (keyCode==LEFT) {
      c.prevMonth();
      println("PREV MONTH");
    }
    // Anar un mes endavant
    else if (keyCode==RIGHT) {
      c.nextMonth();
      println("PREV MONTH");
    }
  }



  if (key=='0') {
    pantalla = Pantalla.USUARI;
  } else if (key=='1') {
    pantalla = Pantalla.INICI;
  } else if (key=='2') {
    pantalla = Pantalla.SOMNI;
  } else if (key=='3') {
    pantalla = Pantalla.GRAFICS;
  }
  if (pantalla==pantalla.SOMNI) {
    areaText.keyPressed(key, (int)keyCode);
    if (keyCode==LEFT) {
      c.prevMonth();
      println("PREV MONTH");
    }
    // Anar un mes endavant
    else if (keyCode==RIGHT) {
      c.nextMonth();
      println("PREV MONTH");
    }
  }
}

// Modifica el cursor
void updateCursor() {

  if ((pantalla==Pantalla.INICI && ib.mouseOverButton() && ib.enabled)) {
    cursor(HAND);
  } else if (b1.mouseOverButton()) {
    cursor(HAND);
  } else if ((s1.mouseOverSelect() && s1.enabled)) {
    cursor(HAND);
  } else if (sfa.updateCursor()) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}

void updateColor() {
  if (s1.selectedValue=="RED") {
    bgColor = color(255, 0, 0);
  } else if (s1.selectedValue=="GREEN") {
    bgColor = color(0, 255, 0);
  } else if (s1.selectedValue=="BLUE") {
    bgColor = color(0, 0, 255);
  }
}






/*void keyPressed() {
 textDream.keyPressed(key, (int)keyCode);
 
 if (key=='0') {
 pantalla = Pantalla.USUARI;
 } else if (key=='1') {
 pantalla = Pantalla.INICI;
 } else if (key=='2') {
 pantalla = Pantalla.SOMNI;
 } else if (key=='3') {
 pantalla = Pantalla.GRAFICS;
 }
 if (pantalla==pantalla.SOMNI) {
 areaText.keyPressed(key, (int)keyCode);
 if (keyCode==LEFT) {
 c.prevMonth();
 println("PREV MONTH");
 }
 // Anar un mes endavant
 else if (keyCode==RIGHT) {
 c.nextMonth();
 println("PREV MONTH");
 }
 }
 }
 */
