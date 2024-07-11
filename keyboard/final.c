#include <Keyboard.h>
#include <Mouse.h>

/*
 * PIN SETUP
 *   2 3 4 5  10 11 12 13
 *   6 7 8 9  21 20 19 18
 *     14 15  16 17
 */

const char layout_alpha_2 = '¤';

int pins[] = {2, 3, 4,  5,  10, 11, 12, 13, 6,  7,
              8, 9, 21, 20, 19, 18, 14, 15, 16, 17};

const int num_pins = sizeof(pins) / sizeof(pins[0]);

bool key_down[num_pins];

// LAYOUT
char alpha_1[] = {

    KEY_RETURN, 'l', 'g',     'd',           'h', 'u', 'o',
    KEY_RETURN, 'i', 's',     'r',           't', 'n', 'e',
    'a',        'c', ALPHA_1, KEY_BACKSPACE, ' ', ' '

};

char alpha_2[] = {

    KEY_RETURN, 'v', 'w',     'm',           'f', '\'', 'z',
    KEY_RETURN, 'q', 'j',     'p',           'k', 'b',  ',',
    'x',        'y', KEY_TAB, KEY_CAPS_LOCK, ' ', ' '

};

void setup() {
  for (int i = 0; i < num_pins; i++) {
    key_down[i] = false;
    pinMode(pins[i], INPUT_PULLUP);
  }
}

void loop() {

  for (int i = 0; i < num_pins; i++) {

    if (digitalRead(pins[i]) == LOW) {
      // alpha 2
      if (alpha_1[i] == layout_alpha_2) {
        while (digitalRead(pins[i]) == LOW) {
          for (int i = 0; i < num_pins; i++) {
            if (digitalRead(pins[i]) == LOW) {
              if (!key_down[i]) {
                Keyboard.write(alpha_2[i]);
              }
              key_down[i] = true;
            } else {
              key_down[i] = false;
            }
          }
          delay(10);
        }
      } else {
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
