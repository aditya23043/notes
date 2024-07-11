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

int pins[] = {2, 3, 4,  5,  10, 11, 12, 13, 6,  7,
              8, 9, 21, 20, 19, 18, 14, 15, 16, 17};

const int num_pins = sizeof(pins) / sizeof(pins[0]);

bool key_down[num_pins];

// LAYOUT
char alpha_1[] = {

    layout_num, 'l', 'g', 'd',           'h', 'u', 'o', KEY_RETURN, 
    'i',        's', 'r', 't',           'n', 'e', 'a', 'c', 
layout_alpha_2, KEY_BACKSPACE,           ' ', layout_symbols

};

char alpha_2[] = {

    '.', 'v', 'w', 'm',           'f', '\'', 'z', '"', 
    'q',        'j', 'p', 'k',           'b',  ',', 'x', 'y', 
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

    KEY_LEFT_CTRL, '@', '#', '$',        ';', '\'', ',', '-', 
    KEY_LEFT_SHIFT, '^', '\\', '|',        ':', '"', '.', '+', 
              '*', '&',        ' ',  '0'

};

void setup() {
  for (int i = 0; i < num_pins; i++) {
    key_down[i] = false;
    pinMode(pins[i], INPUT_PULLUP);
  }
}

int count = 0;

void loop() {

  for (int i = 0; i < num_pins; i++) {

    if (digitalRead(pins[i]) == LOW) {
      // alpha 2
      if (alpha_1[i] == layout_alpha_2) {
        while (digitalRead(pins[i]) == LOW) {
          for (int i = 0; i < num_pins; i++) {
            if (digitalRead(pins[i]) == LOW) {
              if (!key_down[i] && alpha_1[i] != layout_alpha_2) {
                Keyboard.write(alpha_2[i]);
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
              } else if (!key_down[i] && alpha_1[i] != layout_symbols && symbols[i] != layout_symbols_2) {
                Keyboard.write(symbols[i]);
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
        }
        key_down[i] = true;
      }
    } else {
      key_down[i] = false;
    }
  }

  delay(10);
}

