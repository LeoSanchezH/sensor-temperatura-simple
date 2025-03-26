# sensor-temperatura-simple
Este es un ejemplo de la aplicación basica de IoT en cuanto a la interconexión de dispoitivos y el desarrollo de soluciones implmentadas en lenguajes como C++ lo puedes encontrar en este link de tinkercad
https://www.tinkercad.com/things/gJuhZnviUU7-ejemplo-de-sensor-de-temperatura-con-alerta-por-leds-c?sharecode=Gz8_ZRXL020taR6jUubrNU8R1hknTBPbBserzD1IJ4U

# Monitor de Temperatura con Alerta Visual y Sonora
![image](https://github.com/user-attachments/assets/fb5125e5-b5b9-4b36-ba85-64ce027602f2)

## Descripción
Este proyecto utiliza un sensor de temperatura TMP36 conectado a un Arduino Uno para monitorear la temperatura ambiente. Cuando la temperatura supera los 40°C, se activan tres LEDs parpadeantes y un zumbador para generar una alerta. Al bajar de este umbral, las alertas se desactivan. Este código es compatible con la simulación en Tinkercad.

## Componentes Utilizados
- **Arduino Uno**
- **Sensor de temperatura TMP36** (conversión de voltaje a temperatura)
- **Tres LEDs** (indicadores de alerta visual)
- **Bocina/Buzzer** (emisión de alerta sonora)
- **Resistencias y cables de conexión**

## Funcionamiento
1. **Lectura del Sensor TMP36:** Se mide el voltaje en el pin analógico A2 y se convierte a temperatura con la fórmula:

   ![image](https://github.com/user-attachments/assets/a623eee3-a6b7-46bc-be7a-a700794f8eab)
   
   ```cpp
   temperatura = (-40 + 0.488155 * (analogRead(A2) - 20));
   ```
   
3. **Condición de Alerta:** Si la temperatura supera los 40°C:
   - Se encienden los LEDs en un parpadeo intermitente.
   - Se activa el buzzer con una frecuencia de 523 Hz por 500 ms.
   
4. **Restablecimiento:** Si la temperatura baja de 40°C, los LEDs y el zumbador se apagan.

## Instalación y Configuración
1. **Montaje en Tinkercad:**
   - Arrastra un Arduino Uno al espacio de trabajo.
   - Conecta el sensor TMP36 al pin A2.
   - Conecta los LEDs a los pines 4, 5 y 6 con resistencias.
   - Conecta el zumbador al pin 7.

2. **Carga del Código:**
   - Copia y pega el código en el IDE de Arduino o en el simulador de Tinkercad.
   - Compila y sube el programa al Arduino Uno.

## Expansión del Proyecto (IoT)
El Internet de las Cosas (IoT) permite interconectar sensores y dispositivos para el monitoreo remoto. Este sistema se puede mejorar con:
- **Módulo GSM 900:** Enviar SMS cuando la temperatura supere un umbral.
- **Módulo WiFi ESP8266:** Enviar los datos a una aplicación web para monitoreo en tiempo real.
- **Plataformas IoT:** Usar servicios como Blynk o ThingSpeak para almacenar y visualizar datos.

## Contribuciones
Si deseas mejorar este proyecto, puedes agregar nuevas funciones como:
- Registro de datos en una tarjeta SD.
- Implementación de una interfaz de usuario con pantalla LCD.
- Integración con asistentes de voz para alertas.

---
Este proyecto sienta las bases para la creación de sistemas IoT aplicados a la detección de temperatura y seguridad en entornos industriales y domésticos.
























