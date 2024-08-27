#include <Keyboard.h>
#include <Mouse.h>

/*
 * PIN SETUP
 * 10 11 12 13
 * 21 20 19 18
 * 16 17
 */

int delay_long = 30000;
int delay_short = 5000;

bool key_down[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

int delay_[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

int pins[] = {10, 11, 12, 13, 21, 20, 19, 18, 16, 17};
int num_pins = sizeof(pins) / sizeof(pins[0]);

// LAYOUT
char layout_1[] = {'n', 'e', 'i',        'o',           'l',
                   'u', 'y', KEY_RETURN, KEY_BACKSPACE, ' '};

void setup() {
  Serial.begin(115200);
  delay(200);

  for (int i = 0; i < num_pins; i++) {
    pinMode(pins[i], INPUT_PULLUP);
  }
}

void loop() {

  for (int i = 0; i < num_pins; i++) {

    if (delay_[i] < (delay_long * 2 / 3) and !key_down[i]) {
      delay_[i] = 0;
    }

    if (digitalRead(pins[i]) == LOW) {
      if (delay_[i] == 0 and !key_down[i]) {
        Keyboard.write(layout_1[i]);
        delay_[i] = delay_long;
      } else if (delay_[i] == 0 and key_down[i]) {
        Keyboard.write(layout_1[i]);
        delay_[i] = delay_short;
      }
      key_down[i] = true;
    } else {
      key_down[i] = false;
    }
    if (delay_[i] > 0) {
      delay_[i]--;
    }
  }
}
