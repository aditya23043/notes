# Automobile Dashboard Display
- Display

## Info
- Engine Temperature Sensor
- Temperature sensor inside the car
- Navigation module which outputs latitude and longitude info which is then passed onto open sourced APIs for human readable locations
- (OPTIONAL) Video camera sensor for recording stuff manually
- crash detection / sudden movement detection
- SD Card expansion hat for storing images and video footage
- HCSR04 Ultrasonic sensors all around the vehicle in order to log and provide real time data about distance from objects / other vehicles
- RTC (real time clock) / free WorldTimeAPI.com : for showing date and time purposes
- Speed sensor
- Inclination sensor
- Notify vehicle owner in case the car is moving when the user has not set plugged in.

## Security & Safety
- Motion sensor when security mode is on will send a notification to the user
- Buzzer which will start beeping when the user confirms a theft in progress
- Image sensor which will either...
    1. take photos every interval
    2. or take photos only when the motion sensor clicks in
    3. OR takes photo of ALL the vehicles' number plates nearby the user's vehicle for safety purposes
- Another image sensor which will take photos of the driver of the vehicle every interval to verify that the driver's eyes are facing the road else it gives an error

## General Interfacing
- Analog joysticks on the steering wheel which provide movement along the X and Y axis along with a push button


## Development Board
- Raspberry pi pico W
    - Has wifi module alongside bluetooth module to interface with the builtin speakers of the vehicle
