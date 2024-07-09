# FREE WIRELESS COMMUNICATION FOR MCUs

- Well, there are 3 main factors to consider when choosing radio modules: range, energy usage (which is determined by power and the time it takes to connect and send the message) and speed. So using those, the modules you used (plus a bonus) would have:
1. NRF24: medium-high range, low energy usage, high speed. Example usage: drones, battery-operated IoT devices.
2. LoRa: very long range, variable energy usage (depends heavily on the length of the message due to its low speed), very low speed. Example usage: IoT devices.
3. CC1101 without/with power amplifier: medium/very long range, low/very high energy usage, medium speed. Example usage: walkie-talkies.
4. HC12: long range, low energy usage, low-medium speed. Example usage: battery-operated IoT devices, drones.
5. 433 MHz raw: variable range, low energy usage, variable speed. Example usage: cheap devices.
6. HC05/Bluetooth 3.0: short range, medium energy usage, medium speed. Example usage: robots controlled with a smartphone.
7. Bonus: Wi-Fi: short-medium range, medium-high energy usage, very high speed. Example usage: IoT devices, security cameras.
> IMHO, the best general-purpose ones are the NRF24, the HC12, Wi-Fi (including ESP-NOW) and Bluetooth LE (which isn't in your comparison). They're easy to use (especially Wi-Fi and Bluetooth LE if you use an ESP8266/32), don't use much energy, have a good range and are fast enough for most applicatio
