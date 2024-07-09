int num_pins = 23;

void setup() {
  for (int i = 0; i < num_pins; i++) {
    pinMode(i, INPUT_PULLUP);
  }
  Serial.begin(115200);
  delay(200);
}

void loop() {
  for (int i = 0; i < num_pins; i++) {
    if (digitalRead(i) == LOW) {
      Serial.println("Key number " + String(i) + " pressed!");
    } else {
      Serial.println("Mope: " + String(i));
    }
    delay(200);
  }

  delay(1000);
}
