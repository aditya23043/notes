// LEFT HALF

#define rx_pin 1
#define tx_pin 0

String foo;

void setup() {

  Serial1.setRX(rx_pin);
  Serial1.setTX(tx_pin);
  Serial1.begin(115200);

  Serial.begin(9600);

  pinMode(LED_BUILTIN, OUTPUT);

}

void loop() {

  if(Serial1.available()){
    foo = Serial1.readStringUntil('\n');
    if(foo == "YES"){
      digitalWrite(LED_BUILTIN, HIGH);
    } else if(foo == "NO"){
      digitalWrite(LED_BUILTIN, LOW);
    }
  }
  delay(100);

}
