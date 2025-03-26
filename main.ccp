// C++ code
//

//se declara el valor inicial de la temperatura
int temperatura = 0;

//se definen la posición de los pines de la placa
void setup()
{
  pinMode(A2, INPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
}

//se incia la logica de la medici♀n del sensor y su umbral ara disparar la alerta

//En este caso se usa la formula para poder extrapolar el valor del sensor de temperatura usando el voltaje con la formula
void loop()
{
  temperatura = (-40 + 0.488155 * (analogRead(A2) - 20));
  if (temperatura > 40) {
    for (int i = 0; i < 5; i++) { // Parpadeo de los LEDs
      digitalWrite(4, HIGH);
      digitalWrite(5, HIGH);
      digitalWrite(6, HIGH);
      tone(7, 523, 500); // Sonido intermitente
      delay(500);
      digitalWrite(4, LOW);
      digitalWrite(5, LOW);
      digitalWrite(6, LOW);
      noTone(7);
      delay(500);
    }
  } else {
    digitalWrite(4, LOW);
    digitalWrite(5, LOW);
    digitalWrite(6, LOW);
    noTone(7);
  }
  delay(100); // Pequeña pausa para mejorar la estabilidad
}
