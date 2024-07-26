// LEFT HALF
#include <Keyboard.h>

#define rx_pin 1
#define tx_pin 0

char layout_alpha_2_key = 'ÿ';
char layout_symbol_key = 'þ';
char layout_num_key = 'ý';
char layout_system_key = 'ü';

int pins[] = {
  18, 19, 20, 21,
  13, 12, 11, 10,
          14, 15
};
const int num_pins = sizeof(pins)/sizeof(pins[0]);

char key_down[num_pins];

char alpha_1[] = {
  layout_num_key, 'l', 'g', 'd',
             'i', 's', 'r', 't',
             layout_alpha_2_key, KEY_BACKSPACE
};


String foo;

void setup() {

  Serial1.setRX(rx_pin);
  Serial1.setTX(tx_pin);
  Serial1.begin(115200);
  Keyboard.begin();

  for(int i = 0; i < num_pins; i++){
    pinMode(pins[i], INPUT_PULLUP);
    key_down[i] = false;
  }

  pinMode(LED_BUILTIN, OUTPUT);

}

void loop() {

  for(int i = 0; i < num_pins; i++){
    if(digitalRead(pins[i]) == LOW){
      if(!key_down[i]){
        Keyboard.write(alpha_1[i]);
      }
      key_down[i] = true;
    } else {
      key_down[i] = false;
    }
  }

  delay(10);

}

