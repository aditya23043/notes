#include <Wire.h>

// I2C VALUES
const int sda_pin = 0;
const int scl_pin = 1;
const int i2c_addr = 0x08;

char i2c_data_rec;
char i2c_data_send = 'b';

const int num_data = 7;
bool i2c_data[num_data];

void setup(){

  // I2C INIT
  Wire.setSCL(scl_pin);
  Wire.setSDA(sda_pin);
  Wire.begin(i2c_addr);

  // DEBUGGING
  Serial.begin();

  // I2C METHODS SET
  Wire.onReceive(recvd);
  Wire.onRequest(req);

  // I2C DATA INIT
  for(int i = 0; i < num_data; i++){
    Wire.write(i2c_data[i]);
  }
}

void loop(){

  delay(1000);
}

// ON DATA RECEIVE
void recvd(int bruh){
  for(int i = 0; i < num_data; i++){
    i2c_data[i] = Wire.read();
    Serial.println(i2c_data[i]);
  }
  Serial.println();
}

// ON DATA REQUEST
void req(){
  Wire.write(i2c_data_send);
}