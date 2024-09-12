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

| S.No | R load | V src | I src    | P src | V primary | I primary | P primary | V load  | I load   | P load | Efficiency of transformer | Efficiency of Power Source |
|------|--------|-------|----------|-------|-----------|-----------|-----------|---------|----------|--------|---------------------------|----------------------------|
| 1    | 1      | 230V  | 156.63mA |       | 211.02V   | 156.63mA  |           | 2.2937V | 2.2937A  |        |                           |                            |
| 2    | 10     | 230V  | 70.159mA |       | 221.4V    | 70.159mA  |           | 9.6261V | 962.61mA |        |                           |                            |
| 3    | 100    | 230V  | 16.821mA |       | 227.8V    | 16.821mA  |           | 14.149V | 141.49mA |        |                           |                            |
| 4    | 1k     | 230V  | 8.5945mA |       | 228.79V   | 8.5945mA  |           | 14.847V | 14.847mA |        |                           |                            |
| 5    | 10k    | 230V  | 7.727mA  |       | 228.89V   | 7.727mA   |           | 14.92V  | 1.492mA  |        |                           |                            |
| 6    | 100k   | 230V  | 7.6398mA |       | 228.9V    | 7.6398mA  |           | 14.928V | 149.28µA |        |                           |                            |
| 7    | 1M     | 230V  | 7.6311mA |       | 228.9V    | 7.6311mA  |           | 14.928V | 14.928µA |        |                           |                            |
| 8    | 10M    | 230V  | 7.6302mA |       | 228.9V    | 7.6302mA  |           | 14.928V | 1.4928µA |        |                           |                            |
