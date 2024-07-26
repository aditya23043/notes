// RIGHT HALF

#define rx_pin 1
#define tx_pin 0

void setup() {

  Serial1.setRX(rx_pin);
  Serial1.setTX(tx_pin);
  Serial1.begin(115200);

}

void loop() {

  if(Serial1.availableForWrite()){
    Serial1.write("YES\n");
    delay(1000);
    Serial1.write("NO\n");
    delay(1000);
  }

}
