#include <Wire.h>
#include <Keyboard.h>

const int sda_pin = 0;
const int scl_pin = 1;
const int i2c_addr = 0x08;

char rec;

bool key_down = false;

void setup(){
  Wire.setSCL(scl_pin);
  Wire.setSDA(sda_pin);
  Wire.begin(i2c_addr);
  pinMode(LED_BUILTIN, OUTPUT);
}

void loop(){
  Wire.requestFrom(i2c_addr, 1);
  rec = Wire.read();
  if(rec == 'a'){
    digitalWrite(LED_BUILTIN, HIGH);
    if(!key_down){
      Keyboard.write('a');
    }
    key_down = true;
  } else {
    key_down = false;
    digitalWrite(LED_BUILTIN, LOW);
  }
  
}