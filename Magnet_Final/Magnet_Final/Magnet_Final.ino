// DEMO FOR SENDING SERIAL DATA FROM ARDUINO TO PROCESSING
//READS ANALOG SENSOR AND WRITES VALUE TO SERIAL PORT 



const int irSensor = 8;
const int magSensor = 7;
const int tiltSensor = 12;
int tiltVal = 0;
int magVal = 0;
int irVal = 0;
int sensorVal = 0;

void setup() {
  pinMode(irSensor,INPUT);
  pinMode(tiltSensor,INPUT);
  pinMode(magSensor,INPUT_PULLUP);
  Serial.begin(9600);
}

void loop() {
  irVal = digitalRead(irSensor);
  magVal = digitalRead(magSensor);
  tiltVal = digitalRead(tiltSensor);
  delay(100);

  if ((magVal == HIGH) && (irVal == HIGH)){
    sensorVal = 0;
    Serial.write(sensorVal);
  } else if((magVal == LOW) && (irVal == HIGH)){
    sensorVal = 1;
    Serial.write(sensorVal);
  } else if ((magVal == LOW) && (irVal == LOW)){
    sensorVal = 2;
    Serial.write(sensorVal);
  } else if ((magVal == HIGH) && (irVal == LOW)){
    sensorVal = 3;
    Serial.write(sensorVal);
  }


 
}