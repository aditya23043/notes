#include <Wire.h>
#include <Keyboard.h>

// I2C VALUES
const int sda_pin = 0;
const int scl_pin = 1;
const int i2c_addr = 0x08;

const int num_data = 4;
// alpha_2_key_down
// num_key_down
// modifier_on
// modifier_should_close

bool i2c_data_to_send[num_data];
bool i2c_data_received[num_data];

// KEYBOARD VALUES
int pins[] = {
  18, 19, 20, 21,
  13, 12, 11, 10,
          14, 15
};

const int pin_alpha_2 = 14;
const int pin_num = 18;

char layout_alpha_1_key = 'ÿ';
char layout_alpha_2_key = 'þ';
char layout_num_key = 'ý';
char layout_sys_key = 'ü';

const int num_pins = sizeof(pins)/sizeof(pins[0]);

char current_layout[num_pins];
String current_layout_name;
char key_down[num_pins];

char alpha_1[] = {
  layout_num_key, 'l', 'g', 'd',
  'i', 's', 'r', 't',
  layout_alpha_2_key, KEY_BACKSPACE
};

char alpha_2[] = {
  KEY_ESC, 'v', 'w', 'm',
  'q', 'f', 'p', 'b',
  KEY_CAPS_LOCK, ' '
};

char num[] = {
  ' ', ' ', '+', '-',
  ' ', ' ', '/', '*',
            '=', '.'
};

//----------------------------SETUP---------------------------

void setup(){

  // I2C INIT
  Wire.setSCL(scl_pin);
  Wire.setSDA(sda_pin);
  Wire.begin();

  // DEBUGGING
  Serial.begin();

  // I2C DATA INIT
  for(int i = 0; i < num_data; i++){
    i2c_data_to_send[i] = false;
  }

  // PINS INIT
  for(int i = 0; i < num_pins; i++){
    pinMode(pins[i], INPUT_PULLUP);
    key_down[i] = false;
  }
}

//-----------------------LOOP--------------------------------

void loop(){

  // I2C : WRITE
  Wire.beginTransmission(i2c_addr);
  for(int i = 0; i < num_data; i++){
    Wire.write(i2c_data_to_send[i]);
  }
  Wire.endTransmission();

  // I2C : READ
  Wire.requestFrom(i2c_addr, num_data);
  for(int i = 0; i < num_data; i++){
    i2c_data_received[i] = Wire.read();
    Serial.println(i2c_data_received[i]);
  }
  Serial.println();

  // DATA UPDATE
  if(digitalRead(pin_alpha_2) == LOW){
    i2c_data_to_send[0] = true;
  } else {
    i2c_data_to_send[0] = false;
  }
  if(digitalRead(pin_num) == LOW){
    i2c_data_to_send[1] = true;
  } else {
    i2c_data_to_send[1] = false;
  }

  // default
  for(int i = 0; i < num_pins; i++){
    current_layout[i] = alpha_1[i];
  }
  current_layout_name = "alpha_1";
  // alpha 2
  if(i2c_data_to_send[0] == true){
    for(int i = 0; i < num_pins; i++){
      current_layout[i] = alpha_2[i];
    }
    current_layout_name = "alpha_2";
  // num
  } else if(i2c_data_to_send[1] == true){
    for(int i = 0; i < num_pins; i++){
      current_layout[i] = num[i];
    }
    current_layout_name = "num";
  }

  // KEYBOARD LOGIC
  for(int i = 0; i < num_pins; i++){
    if(digitalRead(pins[i]) == LOW){
      if(!key_down[i]){
        if((current_layout_name == "alpha_2" && alpha_1[i] != layout_alpha_2_key) || (current_layout_name == "num" && alpha_1[i] != layout_num_key) || (current_layout_name == "alpha_1")){
          Keyboard.write(current_layout[i]);
        }
      }
      key_down[i] = true;
    } else {
      key_down[i] = false;
    }
  }

  delay(10);

}
