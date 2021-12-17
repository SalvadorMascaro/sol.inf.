void dibuixaGrafic() {
  pushStyle();
  fill(100);
  rectMode(CENTER);
  rect(W/2+margeGraficW, H/2-margeGraficH, graficWidth, graficHeight);
  fill(0);
  text("grafic",W/2+margeGraficW, H/2-margeGraficH); 
  popStyle();
}  
