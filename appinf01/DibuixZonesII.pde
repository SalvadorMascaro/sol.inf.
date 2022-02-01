
void dibuixaPagina() {
  pushStyle();
  fill(100);
  rectMode(CENTER);
  rect(W/2, H/2, pageWidth, pageHeight);
  fill(0);
  text("somni escrit", W/2, H/2); 
  popStyle();bGuardar.display();
}
void dibuixaInserirDream(){
   fill(0); textSize(48); textAlign(LEFT);
   text("Text Area", 100, 60);
   
   // Dibuixa l'àrea de text
   areaText.display();
}
void dibuixabGuardar(){
bGuardar.display();
}
void dibuixaCalendari(){
 bFecha.display();
 if(viewCalendar){
   c.display();
 }
}

void dibuixaSwitch(){
  b1.display();
}
void dibuixaSelect(){
s1.display();
}

void dibuixaFiltres(){
sfa.display();
}
