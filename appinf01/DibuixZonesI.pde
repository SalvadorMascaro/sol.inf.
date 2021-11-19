// FUNCIONS DE DIBUIX DE LES ZONES

void dibuixaZonaLogo(){
  fill(100);
  rect(marginH, marginV, logoWidth, logoHeight);
  fill(0);
  text("LOGO", marginH + logoWidth/2, marginV + logoHeight/2);
}

void dibuixaSideBar(){
  fill(50,200,100);
  rect(marginH, 2*marginV + logoHeight, sidebarWidth, sidebarHeight);
  fill(0);
  text("SIDEBAR", marginH + sidebarWidth/2, marginV + logoHeight + sidebarHeight/2);  
}

void dibuixaBanner1(){
  fill(100);
  rect(2*marginH + logoWidth, marginV, banner1Width, banner1Height);
  fill(0);
  text("SUEÑOS RECIENTES", marginH + logoWidth + banner1Width/2, marginV + banner1Height/2);
}
void dibuixaBanner2(){
  fill(100);
  rect(2*marginH + logoWidth+ banner1Width +margeseparacio, marginV, banner1Width, banner1Height);
  fill(0);
  text("REGISTRO GRÁFICO", marginH + logoWidth + banner1Width/2 +banner1Width+margeseparacio, marginV + banner1Height/2);
}
void dibuixaBanner3(){
  fill(100);
  rect(2*marginH + logoWidth+ 2*banner1Width +2*margeseparacio, marginV, banner1Width, banner1Height);
  fill(0);
  text("BÚSQUEDA POR ELEMENTOS", marginH + logoWidth + banner1Width/2 +2*banner1Width+2*margeseparacio, marginV + banner1Height/2);
}
void dibuixaCreu(){
pushStyle();
 stroke(0);
strokeWeight(7);
line(W/2-15,H-175,W/2+15,H-175);
line(W/2,H-190,W/2,H-160);
fill(100);
text("añadir sueño",W/2,H-130);
popStyle();
}
