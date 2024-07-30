#include <Wire.h>

// I2C VALUES
const int sda_pin = 0;
const int scl_pin = 1;
const int i2c_addr = 0x08;

char i2c_data_rec;
char i2c_data_send = 'a';

const int num_data = 7;
bool i2c_data[num_data];

void setup(){

  // I2C INIT
  Wire.setSCL(scl_pin);
  Wire.setSDA(sda_pin);
  Wire.begin();

  // DEBUGGING
  Serial.begin();

  // I2C DATA INIT
  for(int i = 0; i < num_data; i++){
    i2c_data[i] = false;
  }

  pinMode(14, INPUT_PULLUP);
}

void loop(){

  // I2C : WRITE
  Wire.beginTransmission(i2c_addr);
  for(int i = 0; i < num_data; i++){
    Wire.write(i2c_data[i]);
  }
  Wire.endTransmission();

  // I2C : READ
  Wire.requestFrom(i2c_addr, 1);
  i2c_data_rec = Wire.read();
  Serial.println(i2c_data_rec);

  // DATA UPDATE
  if(digitalRead(14) == LOW){
    i2c_data[0] = true;
  } else {
    i2c_data[0] = false;
  }

  delay(1000);

}