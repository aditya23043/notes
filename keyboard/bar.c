#include <Keyboard.h>
#include <Mouse.h>

/*
 * PIN SETUP
 *   2 3 4 5  10 11 12 13
 *   6 7 8 9  21 20 19 18
 *     14 15  16 17
 */

int pins[] = {2, 3, 4,  5,  10, 11, 12, 13, 6,  7,
              8, 9, 21, 20, 19, 18, 14, 15, 16, 17};
const int num_pins = sizeof(pins) / sizeof(pins[0]);

bool key_down[num_pins];

// LAYOUT
char layout_1[] = {

    KEY_RETURN, 'l', 'g', 'd',           'h',           'u', 'o',
    KEY_RETURN, 'i', 's', 'r',           't',           'n', 'e',
    'a',        'c', ' ', KEY_BACKSPACE, KEY_BACKSPACE, ' '

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
      if (!key_down[i]) {
        Keyboard.write(layout_1[i]);
      }
      key_down[i] = true;
    } else {
      key_down[i] = false;
    }
  }

  delay(10);
}
