#include <Wire.h>
#include <Keyboard.h>

char layout_alpha_2_key = 'ÿ';
char layout_alpha_1_key = 'þ';
char layout_num_key = 'ý';
char layout_sys_key = 'ü';

const int sda_pin = 0;
const int scl_pin = 1;
const int i2c_addr = 0x08;

char rec;

int pins[] = {
  10, 11, 12, 13,
  21, 20, 19, 18,
  16, 17
};

const int num_pins = sizeof(pins)/sizeof(pins[0]);

char current_layout[num_pins];
char key_down[num_pins];

char alpha_1[] = {
  'h', 'u', 'o', ' ',
  'n', 'e', 'a', 'c',
  ' ', ' '
};

char alpha_2[] = {
  'k', '\'', 'z', '"',
  'j', ',', 'x', 'y',
  KEY_CAPS_LOCK, KEY_TAB
};

char num[] = {
  '1', '2', '3', '4',
  '5', '6', '7', '8',
  '9', '0'
};

char sys[] = {
  KEY_LEFT_SHIFT, KEY_LEFT_ALT , ' ', ' ',
  KEY_LEFT_CTRL , KEY_CAPS_LOCK, ' ', ' ',
  KEY_RETURN    , KEY_LEFT_GUI
};

void setup(){

  // I2C
  Wire.setSCL(scl_pin);
  Wire.setSDA(sda_pin);
  Wire.begin(i2c_addr);

  // LED
  pinMode(LED_BUILTIN, OUTPUT);

  // KEYBOARD
  for(int i = 0; i < num_pins; i++){
    pinMode(pins[i], INPUT_PULLUP);
    key_down[i] = false;
  }

}

void loop(){

  Wire.requestFrom(i2c_addr, 1);
  rec = Wire.read();
  
  if(rec == layout_alpha_1_key){
    for(int i = 0; i < num_pins; i++){
      current_layout[i] = alpha_1[i];
    }
  } else if(rec == layout_alpha_2_key) {
    for(int i = 0; i < num_pins; i++){
      current_layout[i] = alpha_2[i];
    }
  } else if(rec == layout_num_key) {
    for(int i = 0; i < num_pins; i++){
      current_layout[i] = num[i];
    }
  }

  for(int i = 0; i < num_pins; i++){
    if(digitalRead(pins[i]) == LOW){
      if(!key_down[i]){
        Keyboard.write(current_layout[i]);
      }
      key_down[i] = true;
    } else {
      key_down[i] = false;
    }
  }
  
}
