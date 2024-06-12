from machine import Pin, ADC, I2C
from ssd1306 import SSD1306_I2C
from hcsr04 import HCSR04
import utime
import random
import math

WIDTH = 128
HEIGHT = 64

yAxis = ADC(Pin(27))
xAxis = ADC(Pin(26))
button = Pin(22, Pin.IN, Pin.PULL_UP)

i2c = I2C(0, scl=Pin(1), sda=Pin(0), freq=400000)
display = SSD1306_I2C(WIDTH, HEIGHT, i2c)

x = 64
y = 32
angle = 0
dx = 0
dy = 0
vel = 2

vert_x = [0, -3, 3]
vert_y = [-5, 3, 3]
scaled_x = [0, 0, 0]
scaled_y = [0, 0, 0]

bullets = []
count = 0

while True:

    count += 1
    xVal = xAxis.read_u16()
    yVal = yAxis.read_u16()
    butVal = button.value()

    if xVal < 400:
        angle -= 0.1
    if xVal > 60000:
        angle += 0.1
    if yVal < 400:
        dx -= int(math.sin(angle) * vel)
        dy -= int(-math.cos(angle) * vel)
    if yVal > 60000:
        dx += int(math.sin(angle) * vel)
        dy += int(-math.cos(angle) * vel)
    display.fill(0)

    if butVal == 0 and count % 3 == 0:
        bullets.append([x, y, angle])

    for i in bullets:
        if i[0] > 128 or i[0] < 0 or i[1] > 64 or i[1] < 0:
            bullets.remove([i[0], i[1], i[2]])
        display.rect(i[0] - 1, i[1] - 1, 2, 2, 1)
        i[0] += int(math.sin(i[2]) * vel)
        i[1] += int(-math.cos(i[2]) * vel)

    x = x + dx
    y = y + dy

    if dx > 0:
        dx -= 1
    if dy > 0:
        dy -= 1

    if dy < 0:
        dy += 1
    if dx < 0:
        dx += 1

    # Rotation
    for i in range(len(scaled_x)):
        scaled_x[i] = int(vert_x[i] * math.cos(angle) - vert_y[i] * math.sin(angle))
        scaled_y[i] = int(vert_x[i] * math.sin(angle) + vert_y[i] * math.cos(angle))

    # Translation
    for i in range(len(scaled_x)):
        scaled_x[i] += x
        scaled_y[i] += y

    # Draw
    for i in range(len(scaled_x)):
        j = i + 1
        display.line(
            scaled_x[i % len(scaled_x)],
            scaled_y[i % len(scaled_x)],
            scaled_x[j % len(scaled_x)],
            scaled_y[j % len(scaled_x)],
            1,
        )

    display.show()
