# LAB 2: 06/09/24

- Why we use KVA (kilo volt ampere) instead of KW?
    - Because KW gives instantaneous power but we don't need it cuz
- R1 is the series power resistance of the transformer
- change N from default value of 10 to N = 325 / 15 because we need a step down transformer to give 15V when input 325V peak
- N = 1/15
    - 1/N is the number

- Ideal Transformer

| S.No | R load | V src | I src    | P src    | V load  | I load   | P load   | Efficiency |
|------|--------|-------|----------|----------|---------|----------|----------|------------|
| 1    | 1      | 230V  | 835.56mA | 192.178W | 12.533V | 12.533A  | 157.076W | 81.7%      |
| 2    | 10     | 230V  | 99.904mA | 22.977W  | 14.986V | 1.4986A  | 22.458W  | 97.7%      |
| 3    | 100    | 230V  | 10.19mA  | 2.343W   | 15.285V | 152.85mA | 2.336W   | 99.7%      |
| 4    | 1k     | 230V  | 1.021mA  | 0.234W   | 15.315V | 15.315mA | 0.234W   | 100%       |
| 5    | 10k    | 230V  | 102.12µA | 0.023W   | 15.318V | 1.5318mA | 0.023W   | 100%       |
| 6    | 100k   | 230V  | 10.212µA | 0.002W   | 15.319V | 153.19µA | 0.002W   | 100%       |
| 7    | 1M     | 230V  | 1.0212µA | 0.234mW  | 15.319V | 15.319µA | 0.234mW  | 100%       |

- 2.3mV across 1k ohm resistor with fuse
- 15.01V across 1k ohm resistor without fuse

- Non Ideal Transformer

| S.No | R load | V src | I src    | P src   | V primary | I primary | P primary | V load  | I load   | P load  | Efficiency of transformer | Efficiency of Power Source |
|------|--------|-------|----------|---------|-----------|-----------|-----------|---------|----------|---------|---------------------------|----------------------------|
| 1    | 1      | 230V  | 156.63mA | 36.024W | 211.02V   | 156.63mA  | 33.052W   | 2.2937V | 2.2937A  | 5.261W  | 15.91%                    | 14.6%                      |
| 2    | 10     | 230V  | 70.159mA | 16.136W | 221.4V    | 70.159mA  | 15.533W   | 9.6261V | 962.61mA | 9.266W  | 59.65%                    | 57.4%                      |
| 3    | 100    | 230V  | 16.821mA | 3.868W  | 227.8V    | 16.821mA  | 3.831W    | 14.149V | 141.49mA | 2.001W  | 52.23%                    | 51.7%                      |
| 4    | 1k     | 230V  | 8.5945mA | 1.976W  | 228.79V   | 8.5945mA  | 1.966W    | 14.847V | 14.847mA | 0.220W  | 11.1%                     | 11.1%                      |
| 5    | 10k    | 230V  | 7.727mA  | 1.777W  | 228.89V   | 7.727mA   | 1.768W    | 14.92V  | 1.492mA  | 0.022W  | 1.2%                      | 1.2%                       |
| 6    | 100k   | 230V  | 7.6398mA | 1.757W  | 228.9V    | 7.6398mA  | 1.748W    | 14.928V | 149.28µA | 0.002W  | 0.11%                     | 0.11%                      |
| 7    | 1M     | 230V  | 7.6311mA | 1.755W  | 228.9V    | 7.6311mA  | 1.746W    | 14.928V | 14.928µA | 0.222mW | 0.03%                     | 0.012%                     |
| 8    | 10M    | 230V  | 7.6302mA | 1.754W  | 228.9V    | 7.6302mA  | 1.746W    | 14.928V | 1.4928µA | 0.022mW | 0.001%                    | 0.001%                     |

# LAB 3 (Rectifier : AC -> DC) : 13/09/2024
- We use a diode to clip the negative part of the wave
    - If we wanted the negative part only, we would place the diode in the opposite direction (= positive clipper : clips the positive partclip)
    - but there is some voltage after which the diode works eg: 0.3V for germanium diode
    - so, there is a bit of the part there up till the threshold voltage when clipping
    - If we added two diodes in parallel in opposite direction, so the output will be clipped in both sides, i.e. kind of a square wave of amplitude = threshold voltage of diode
    - Positive / Negative / Positive and Negative bias clippers
- We use two diodes
    - Signal Diode : dealing with circuit which needs less current (~100mA or less)
        - Low speed
    - Power Diode
        - Dealing with high current (1A-25A)
        - High speed

## Half Wave Rectifier
- Source, Diode and Load all in series
- No 5V drop here because circuit opens/closes due to diode
- Cicuit is simple
- Positive to negative hwr? Reverse the polarity of the diode
- Disadvantage : Output wave is only half than the original

## Full Wave Rectifier

### Center Tap
- Primary side and Secondary side
- 230V to 15V
- Uses transformer
- No pwower loss
- Output voltage is more efficient
- Quite expensive

### Bridge
- Efficiency is almost same as center tap
- Circuit is complex but inexpensive

## Factors
- Efficiency : Pdc / Pac
- Ripple Factor
    - V = sqrt((Vrms/Vdc)^2 - 1)
    - The lower the better
    - Half wave : 1.21
    - Full wave : 0.48
- P inverse Voltage (PIV)
    - Half wave : Vmax
    - Full Wave : 2Vmax
    - Depends on how much the diode can hold

> Note: diode silver side is negative and black side is positive
> We need to use the DC sweep voltage from the function generator because we need to plot the I-V characteristics and we need the ratio of Vout and Vin
- DSO
    - Triangular Wave / Ramp
    - Freq: 100hz
    - Amplitude -> High Level -> 5V
        - It normally gives 5V peak to peak i.e. 2.5 to -2.5 but we need 0 to 5
    - Horizontal -> XY
    - DSO gives only voltage output but we want current output
        - thats why we are using the 1ohm resistor
        - Black wire : Function generator
        - Grey wire : XY
            - Connect Y to I (current) => Between 1k pot and 1ohm res
            - Connect X to V (voltage) => Between 1ohm res and diode
            - Plot X between 1k pot and source

- Ans: threshold voltage of the diode = Diode Voltage : 0.65 V
- Diode Current : 5mA

### 2nd Part (Clipper)
- Same circuit but with sinusoidal wave input with 50hz 

> "mujhe laga aag lag gayi" - Anant 2024

### 3rd Part (full wave bridge rectifier)
- Math function (subtract : v2 - (-v1) = v2 + v1)
- In DSO, we have instantaneous values but we want RMS so we set the scale knob beside math function to multiply with root 2

## LTSPICE SIMULATION

### Clipper (Part A)
- We achieve R = 2860.7 as the resistance value when source voltage is 15V DC and diode current is 5mA with diode forward voltage = 0.7V

# LAB 3 : FILTERS (20/09/2024)
- Dampens pulses to ripples

## Component
- Passive: R, L, C
    - They do not require energy to work
- Active: Op Amp, Transistors
    - They require energy to work

## Filters
- Low pass filter : passes only low frequencies
- High pass filter : pass high frequencies only
- Band pass filter : combination of both; we need specific band of frequencies
- Band stop filter : stopping a particular band of frequencies and letting the rest pass

### Graph
- dB (logarithmic way of leading the frequency and can be heard by human) vs freq

### Cutoff frequency
- ~70.7%
- The value at which signal cuts x-axis
- Value where signal attenuates (goes down)
- Fourier transform => Bode plot
- db = 20 log (Vout/Vin)

### ROLLOFF Rate / Freq
- when slope decreases
- (-20 * n) db / decade
- per decade means -> 1, 10, 100, 1000
- per octane means -> 1, 2, 4, 8, 16
- If we have one reactive element, we have rolloff rate = 20 db/dec and order of the filter = 1 (n)
- In RLC circuit, we have 2 reactive elements, n = 2, rolloff rate = 40 db/dec i.e. faster decreasing slope i.e. steeper slope, i.e. better output
- Higher the value of n, better the output (frequency response)
- Peak = ripples, lower the better
- In all, load = 100 ohms
- Yellow capacitor: no polarity 1mH
- Capacitor => Short leg: negative, long leg: positive
- 10mH inductor > Brown black red grey > Inductor > thick resistor

## IMP
- Capacitor passes AC
    - Hence it is connected in parallel
- Inductor passes DC
    - Hence it is connected in series

## LAB
- Series : voltage + Inductor (1mH/10mH) and load resistor (100ohm)
- Input from wave gen

## READING
### 2
- 10Hz
    - Input
        - Amplitude: 962.5mV 
        - P2P: 2V
    - Output
        - Amplitude: -1V 
        - P2P: 750mV

- 1MHz
    - Input
        - Amplitude: 710mV
        - P2P: 1.422V
    - Output
        - Amplitude: -27.5mV
        - P2P: 65mV

- We get similar readings with 10kHz as with 1MHz

