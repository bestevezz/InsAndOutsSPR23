// DEMO FOR SENDING SERIAL DATA FROM ARDUINO TO PROCESSING
//READS ANALOG SENSOR AND WRITES VALUE TO SERIAL PORT 



const int irSensor = 8;
const int magSensor = 7;
const int tiltSensor = 12;
int tiltState = 0;
int magState = 0;
int irSensorState = 0;

void setup() {
  pinMode(irSensor,INPUT);
  pinMode(tiltSensor,INPUT);
  pinMode(magSensor,INPUT_PULLUP);
  Serial.begin(9600);
}

void loop() {
  irSensorState = digitalRead(irSensor);
  magState = digitalRead(magSensor);
  tiltState = digitalRead(tiltSensor);
  delay(10);

  if(tiltState == HIGH){
    Serial.println(1);
  }
  else if(tiltState == LOW){
    Serial.println(0);
  }
 
}