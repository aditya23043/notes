#include <Wire.h>
#include <Keyboard.h>

char layout_alpha_2_key = 'ÿ';
char layout_alpha_1_key = 'þ';
char layout_num_key = 'ý';
char layout_sys_key = 'ü';

const int pin_alpha_2 = 14;
const int pin_num = 18;

const int sda_pin = 0;
const int scl_pin = 1;
const int i2c_addr = 0x08;

char rec;

int pins[] = {
  18, 19, 20, 21,
  13, 12, 11, 10,
          14, 15
};

const int num_pins = sizeof(pins)/sizeof(pins[0]);

char current_layout[num_pins];
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

void setup(){

  // I2C
  Wire.setSCL(scl_pin);
  Wire.setSDA(sda_pin);
  Wire.begin();

  // LED
  pinMode(LED_BUILTIN, OUTPUT);

  // KEYBOARD
  for(int i = 0; i < num_pins; i++){
    pinMode(pins[i], INPUT_PULLUP);
    key_down[i] = false;
  }

}

void loop(){

  // i2c
  Wire.beginTransmission(i2c_addr);

  if(digitalRead(pin_alpha_2) == LOW){
    Wire.write(layout_alpha_2_key);
    for(int i = 0; i < num_pins; i++){
      current_layout[i] = alpha_2[i];
    }
  } else if(digitalRead(pin_num) == LOW){
    Wire.write(layout_num_key);
    for(int i = 0; i < num_pins; i++){
      current_layout[i] = num[i];
    }
  } else {
    Wire.write(layout_alpha_1_key);
    for(int i = 0; i < num_pins; i++){
      current_layout[i] = alpha_1[i];
    }
  }

  Wire.endTransmission();

  // keyboard
  for(int i = 0; i < num_pins; i++){
    if(digitalRead(pins[i]) == LOW){
      if(!key_down[i] && alpha_1[i] != layout_alpha_2_key && alpha_1[i] != layout_num_key){
        Keyboard.write(current_layout[i]);
      }
      key_down[i] = true;
    } else {
      key_down[i] = false;
    }
  }

}

