// RIGHT HALF

#include <KeyboardBLE.h>

bool modifier_down = false;
bool modifier_should_close = false;

char layout_alpha_2_key = 'ÿ';
char layout_symbol_key = 'þ';
char layout_num_key = 'ý';
char layout_system_key = 'ü';

int long_delay = 25;
int short_delay = 5;

int pins[] = {
  10, 11, 12, 13,
  21, 20, 19, 18,
  16, 17
};

const int num_pins = sizeof(pins)/sizeof(pins[0]);

char alpha_1[] = {
  'h', 'u', 'o', layout_system_key,
  'n', 'e', 'a', 'c',
  ' ', layout_alpha_2_key
};

char alpha_2[] = {
  'k', '\'', 'z', '"',
  'j', ',', 'x', 'y',
  KEY_CAPS_LOCK, KEY_TAB
};

char sys[] = {
  KEY_LEFT_SHIFT, KEY_LEFT_ALT , ' ', ' ',
  KEY_LEFT_CTRL , KEY_CAPS_LOCK, ' ', ' ',
  KEY_RETURN    , KEY_LEFT_GUI
};

char key_down[num_pins];

void setup() {

  KeyboardBLE.begin("Split_KB_Right", "Split_KB_Right");

  for(int i = 0; i < num_pins; i++){
    pinMode(pins[i], INPUT_PULLUP);
    key_down[i] = false;
  }

  pinMode(LED_BUILTIN, OUTPUT);

}

void loop() {

  if(modifier_down){
    digitalWrite(LED_BUILTIN, HIGH);
  } else {
    digitalWrite(LED_BUILTIN, LOW);
  }
  if(modifier_should_close){
    KeyboardBLE.releaseAll();
    modifier_should_close = false;
    modifier_down = false;
  }

  for(int i = 0; i < num_pins; i++){

    if(digitalRead(pins[i]) == LOW){

      if(digitalRead(13) == LOW){
        if(!key_down[i] && alpha_1[i] != layout_system_key){
          if(sys[i] == KEY_LEFT_SHIFT || sys[i] == KEY_LEFT_CTRL || sys[i] == KEY_LEFT_ALT || sys[i] == KEY_LEFT_GUI){
            KeyboardBLE.press(sys[i]);
            modifier_down = true;
            key_down[i] = true;
          } else {
            KeyboardBLE.write(sys[i]);
            if(modifier_down){
              modifier_should_close = true;
            }
            key_down[i] = true;
          }
        }
      } else if(digitalRead(17) == LOW){
        if(!key_down[i] && alpha_1[i] != layout_alpha_2_key){
          KeyboardBLE.write(alpha_2[i]);
          if(modifier_down){
            modifier_should_close = true;
          }
          key_down[i] = true;
        }
      } else { 
        if(!key_down[i]){
          KeyboardBLE.write(alpha_1[i]);
          if(modifier_down){
            modifier_should_close = true;
          }
          key_down[i] = true;
        }
      }

    } else {
      key_down[i] = false;
    }

  }
  delay(10);
}

