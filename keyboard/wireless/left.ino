// LEFT HALF

#include <KeyboardBLE.h>

char layout_alpha_2_key = 'ÿ';
char layout_symbol_key = 'þ';
char layout_num_key = 'ý';
char layout_symbol_2_key = 'ü';

int long_delay = 25;
int short_delay = 5;

int pins[] = {
  10, 11, 12, 13,
  21, 20, 19, 18,
  16, 17
};

const int num_pins = sizeof(pins)/sizeof(pins[0]);

char alpha_1[] = {
  ' ', 'l', 'g', 'd',
  'i', 's', 'r', 't',
  layout_alpha_2_key, KEY_BACKSPACE
};

char alpha_2[] = {
  KEY_ESC, 'v', 'w', 'm',
  'q', 'f', 'p', 'b',
  KEY_CAPS_LOCK, ' '
};

char key_down[num_pins];

void setup() {

  KeyboardBLE.begin("Split_KB_Left", "Split_KB_Left");

  for(int i = 0; i < num_pins; i++){
    pinMode(pins[i], INPUT_PULLUP);
    key_down[i] = false;
  }

}

void loop() {

  for(int i = 0; i < num_pins; i++){

    if(digitalRead(pins[i]) == LOW){

      if(digitalRead(17) == LOW){
        if(!key_down[i] && alpha_1[i] != layout_alpha_2_key){
          KeyboardBLE.write(alpha_2[i]);
          key_down[i] = true;
        }
      } else { 
        if(!key_down[i]){
          KeyboardBLE.write(alpha_1[i]);
          key_down[i] = true;
        }
      }

    } else {
      key_down[i] = false;
    }

  }
  delay(10);
}
