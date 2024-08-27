#include <Keyboard.h>
#include <Mouse.h>

/*
 * PIN SETUP
 *   2 3 4 5  10 11 12 13
 *   6 7 8 9  21 20 19 18
 *     14 15  16 17
 */

const char layout_alpha_2 = '└';
const char layout_num = '┴';
const char layout_symbols = '┬';
const char layout_symbols_2 = '├';
const char layout_sys = '─';
const char layout_sys_hold = '┼';

int pins[] = {2, 3, 4,  5,  10, 11, 12, 13, 6,  7,
              8, 9, 21, 20, 19, 18, 14, 15, 16, 17};

const int num_pins = sizeof(pins) / sizeof(pins[0]);

bool key_down[num_pins];

// LAYOUT
char alpha_1[] = {

    layout_num, 'l', 'g', 'd',           'h', 'u', 'o', layout_sys, 
    'i',        's', 'r', 't',           'n', 'e', 'a', 'c', 
layout_alpha_2, KEY_BACKSPACE,           ' ', layout_symbols

};

char alpha_2[] = {

    KEY_ESC, 'v', 'w', 'm',           'k', '\'', 'z', '"', 
    'q',        'f', 'p', 'b',           'j',  ',', 'x', 'y', 
       KEY_TAB, ' ',                      KEY_CAPS_LOCK,  KEY_TAB

};

char num[] = {

    KEY_RETURN, ' ', '+', '-',           '1', '2', '3', '4', 
    ' ',        ' ', '/', '*',           '5',  '6', '7', '8', 
       '=', '.',           '9',  '0'

};

char symbols[] = {

    '/', '?', '#', ':',        '(', ')', '[', ']', 
    '~', '_', '!', ';',        '{',  '}', '<', '>', 
  layout_symbols_2, '%',        ' ',  '0'

};

char symbols_2[] = {

    '`', '@', '#', '$',        ';', '\'', ',', '-', 
    '%', '^', '\\', '|',        ':', '"', '.', '+', 
              '*', '&',        ' ',  '0'

};

char sys[] = {

    KEY_MENU,       KEY_UP_ARROW,   ' ',             KEY_LEFT_SHIFT,         KEY_RETURN, KEY_TAB, layout_sys_hold, ' ', 
    KEY_LEFT_ARROW, KEY_DOWN_ARROW, KEY_RIGHT_ARROW, KEY_LEFT_CTRL,          KEY_CAPS_LOCK, ' ', ' ', ' ', 
                                       KEY_LEFT_GUI, KEY_LEFT_ALT,          KEY_RIGHT_ALT, KEY_RIGHT_GUI

};

char sys_hold[] = {

    ' ',       KEY_UP_ARROW,   ' ',             KEY_LEFT_SHIFT,         KEY_RETURN, ' ', ' ', ' ', 
    KEY_LEFT_ARROW, KEY_DOWN_ARROW, KEY_RIGHT_ARROW, KEY_LEFT_CTRL,          KEY_BACKSPACE, ' ', ' ', ' ', 
                                       KEY_LEFT_GUI, KEY_LEFT_ALT,          KEY_RIGHT_ALT, KEY_RIGHT_GUI

};

void setup() {
  for (int i = 0; i < num_pins; i++) {
    key_down[i] = false;
    pinMode(pins[i], INPUT_PULLUP);
  }
  pinMode(LED_BUILTIN, OUTPUT);
}

bool modifier_key_on = false;
bool modifier_hold = false;

void loop() {

  if(modifier_key_on || modifier_hold){
    digitalWrite(LED_BUILTIN, HIGH);
  } else {
    digitalWrite(LED_BUILTIN, LOW);
  }

  for (int i = 0; i < num_pins; i++) {

    if (digitalRead(pins[i]) == LOW) {
      // alpha 2
      if (alpha_1[i] == layout_alpha_2) {
        while (digitalRead(pins[i]) == LOW) {
          for (int i = 0; i < num_pins; i++) {
            if (digitalRead(pins[i]) == LOW) {
              if (!key_down[i] && alpha_1[i] != layout_alpha_2) {
                if (alpha_2[i] == KEY_ESC){
                  modifier_hold = false;
                  Keyboard.releaseAll();
                }
                Keyboard.write(alpha_2[i]);
                if(modifier_key_on){
                  Keyboard.releaseAll();
                  modifier_key_on = false;
                }
              }
              key_down[i] = true;
            } else {
              key_down[i] = false;
            }
          }
          delay(10);
        }
      } else if (alpha_1[i] == layout_symbols) {  // symbol 1 layer
        while (digitalRead(pins[i]) == LOW) {
          for (int i = 0; i < num_pins; i++) {
            if (digitalRead(pins[i]) == LOW) {
              if (!key_down[i] && alpha_1[i] != layout_symbols && digitalRead(14) == LOW && symbols[i] != layout_symbols_2) {
                Keyboard.write(symbols_2[i]);
                if(modifier_key_on){
                  Keyboard.releaseAll();
                  modifier_key_on = false;
                }
              } else if (!key_down[i] && alpha_1[i] != layout_symbols && symbols[i] != layout_symbols_2) {
                Keyboard.write(symbols[i]);
                if(modifier_key_on){
                  Keyboard.releaseAll();
                  modifier_key_on = false;
                }
              }
              key_down[i] = true;
            } else {
              key_down[i] = false;
            }
          }
          delay(10);
        }
      } else if (alpha_1[i] == layout_num) { // num layer
        while (digitalRead(pins[i]) == LOW) {
          for (int i = 0; i < num_pins; i++) {
            if (digitalRead(pins[i]) == LOW) {
              if (!key_down[i] && alpha_1[i] != layout_num) {
                Keyboard.write(num[i]);
                if(modifier_key_on){
                  Keyboard.releaseAll();
                  modifier_key_on = false;
                }
              }
              key_down[i] = true;
            } else {
              key_down[i] = false;
            }
          }
          delay(10);
        }
      } else if (alpha_1[i] == layout_sys) { // sys layer
        while (digitalRead(pins[i]) == LOW) {
          for (int i = 0; i < num_pins; i++) {
            if (digitalRead(pins[i]) == LOW) {
              if (!key_down[i] && sys_hold[i] != ' ' && alpha_1[i] != layout_sys && sys[i] != layout_sys_hold && digitalRead(12) == LOW){
                Keyboard.press(sys[i]);
                modifier_hold = true;
              } else if (!key_down[i] && alpha_1[i] != layout_sys && sys[i] != ' ') {
                if(sys[i] == KEY_LEFT_SHIFT || sys[i] == KEY_LEFT_CTRL || sys[i] == KEY_LEFT_GUI || sys[i] == KEY_RIGHT_SHIFT || sys[i] == KEY_RIGHT_CTRL || sys[i] == KEY_RIGHT_GUI || sys[i] == KEY_RIGHT_ALT){
                  Keyboard.press(sys[i]);
                  modifier_key_on = true;
                } else {
                  Keyboard.write(sys[i]);
                  if(modifier_key_on){
                    Keyboard.releaseAll();
                    modifier_key_on = false;
                  }
                }
              }
              key_down[i] = true;
            } else {
              key_down[i] = false;
            }
          }
          delay(10);
        }
      } else { // alpha 1
        if (!key_down[i]) {
          Keyboard.write(alpha_1[i]);
          if(modifier_key_on){
            Keyboard.releaseAll();
            modifier_key_on = false;
          }
        }
        key_down[i] = true;
      }
    } else {
      key_down[i] = false;
    }
  }

  delay(10);
}


