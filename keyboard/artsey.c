#include <Keyboard.h>
#include <Mouse.h>

/*
 * PIN SETUP
 *   2 3 4 5  10 11 12 13
 *   6 7 8 9  21 20 19 18
 *     14 15  16 17
 */

int delay_ = 75;

int pins[] = {10, 11, 12, 13, 21, 20, 19, 18, 16, 17};
const int num_pins = sizeof(pins) / sizeof(pins[0]);

// LAYOUT
char layout_1[] = {

    'a', 'r', 't',           's', 'e', 'y',
    'i', 'o', KEY_BACKSPACE, ' '

};

void setup() {
  for (int i = 0; i < num_pins; i++) {
    pinMode(pins[i], INPUT_PULLUP);
  }
}

void loop() {

  if (digitalRead(21) == LOW && digitalRead(20) == LOW &&
      digitalRead(19) == LOW && digitalRead(18) == LOW) {
    Keyboard.write(' ');
    delay(delay_);
  } else if (digitalRead(10) == LOW && digitalRead(11) == LOW &&
             digitalRead(12) == LOW && digitalRead(13) == LOW) {
    Keyboard.write('z');
    delay(delay_);
  } else if (digitalRead(10) == LOW && digitalRead(11) == LOW &&
             digitalRead(12) == LOW) {
    Keyboard.write('d');
    delay(delay_);
  } else if (digitalRead(11) == LOW && digitalRead(12) == LOW &&
             digitalRead(13) == LOW) {
    Keyboard.write('x');
    delay(delay_);
  } else if (digitalRead(21) == LOW && digitalRead(20) == LOW &&
             digitalRead(19) == LOW) {
    Keyboard.write('l');
    delay(delay_);
  } else if (digitalRead(20) == LOW && digitalRead(19) == LOW &&
             digitalRead(18) == LOW) {
    Keyboard.write('m');
    delay(delay_);
  } else if (digitalRead(10) == LOW) {
    Keyboard.write('a');
    delay(delay_);
  } else if (digitalRead(11) == LOW) {
    Keyboard.write('r');
    delay(delay_);
  } else if (digitalRead(12) == LOW) {
    Keyboard.write('t');
    delay(delay_);
  } else if (digitalRead(13) == LOW) {
    Keyboard.write('s');
    delay(delay_);
  } else if (digitalRead(21) == LOW) {
    Keyboard.write('e');
    delay(delay_);
  } else if (digitalRead(20) == LOW) {
    Keyboard.write('y');
    delay(delay_);
  } else if (digitalRead(19) == LOW) {
    Keyboard.write('i');
    delay(delay_);
  } else if (digitalRead(18) == LOW) {
    Keyboard.write('o');
    delay(delay_);
  }

  delay(10);
}
