#include <Wire.h>

const int pin = 21;
const int sda_pin = 0;
const int scl_pin = 1;
const int i2c_addr = 0x08;

void setup(){
  Wire.setSCL(scl_pin);
  Wire.setSDA(sda_pin);
  Wire.begin();
  pinMode(pin, INPUT_PULLUP);
}

void loop(){
  Wire.beginTransmission(i2c_addr);

  if(digitalRead(pin) == LOW){
    Wire.write('a');
  }

  Wire.endTransmission();
}