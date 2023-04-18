const int buttPin = 2;
const int rLed = 13;
const int gLed = 12;
const int bLed = 11;

int buttState = 0;

void setup() {
  pinMode(rLed, OUTPUT);
  pinMode(gLed, OUTPUT);
  pinMode(bLed, OUTPUT);
  pinMode(buttPin, INPUT);

}

void loop() {
  buttState = digitalRead(buttPin);
  
  delay(10);

  if (buttState == HIGH){
    digitalWrite(rLed, HIGH);
    digitalWrite(gLed, HIGH);
    delay(550);
    digitalWrite(gLed, LOW);
    digitalWrite(bLed, HIGH);
    delay(330);
    digitalWrite(bLed, LOW);
    digitalWrite(gLed, HIGH);
    digitalWrite(rLed, HIGH);
    delay(330);
    digitalWrite(rLed, LOW);
    digitalWrite(bLed, HIGH);
    delay(750);
    digitalWrite(gLed, LOW);
    digitalWrite(rLed, HIGH);
    delay(750);
    digitalWrite(rLed, LOW);
    digitalWrite(gLed, HIGH);
    delay(200);
    digitalWrite(rLed, LOW);
    digitalWrite(gLed, LOW);
    digitalWrite(bLed, LOW);
    delay(100);
    digitalWrite(rLed, HIGH);
    delay(100);
    digitalWrite(gLed, HIGH);
    delay(100);
    digitalWrite(bLed, HIGH);
    delay(100);
    digitalWrite(rLed, LOW);
    delay(100);
    digitalWrite(gLed, LOW);
    delay(100);
    digitalWrite(bLed, LOW);


  } else {
    digitalWrite(rLed, LOW);
    digitalWrite(gLed, LOW);
    digitalWrite(bLed, LOW);
  }

}
