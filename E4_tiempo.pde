//Gabriela Angel Tunjano 
//E4:tiempo
//202410096
int w = 600; // Ancho de la ventana
int h = 600; // Alto de la ventana

void setup() {
  size(500,500);
  noFill();
  stroke(700,600,700);
}

void draw() {
  background(0);
  
  // Calcular el tiempo actual
  int hour = hour();
  int minute = minute();
  int second = second();
  
  float hourAngle = map(hour % 12, 0, 12, 0, TWO_PI) - HALF_PI;  // Ángulo de la hora
  float minuteAngle = map(minute(), 0, 60, 0, TWO_PI) - HALF_PI;  // Ángulo del minuto
  float secondAngle = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;  // Ángulo del segundo

  // Dibuja un círculo central
  ellipse(w/2, h/2, 100, 100);

  // Dibuja una línea para las horas, minutos y segundos
  float hourX = w / 2 + cos(hourAngle) * 80;
  float hourY = h / 2 + sin(hourAngle) * 80;
  line(w / 2, h / 2, hourX, hourY);  // Línea para la hora

  float minuteX = w / 2 + cos(minuteAngle) * 120;
  float minuteY = h / 2 + sin(minuteAngle) * 120;
  line(w / 2, h / 2, minuteX, minuteY);  // Línea para el minuto

  float secondX = w / 2 + cos(secondAngle) * 150;
  float secondY = h / 2 + sin(secondAngle) * 150;
  stroke(255, 0, 0);  // Color rojo para los segundos
  line(w / 2, h / 2, secondX, secondY);  // Línea para el segundo
}
