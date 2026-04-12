# AITRIP Capacitive Soil Moisture Sensor

Capacitive soil moisture sensor that measures moisture levels via changes in capacitance rather than resistance, avoiding the corrosion issues common with resistive sensors. Outputs an analog voltage proportional to soil moisture.

## Technical Specifications

| Parameter           | Value              |
|---------------------|--------------------|
| Sensing Type        | Capacitive         |
| Operating Voltage   | 3.3 ~ 5.5 VDC     |
| Output Voltage      | 0 ~ 3.0 VDC       |
| Interface           | PH2.54-3P (Analog) |
| Pins                | VCC, GND, AOUT     |
| Working Temperature | Up to 50°C         |
| Dimensions          | 98 x 23 mm (L×W)  |

## Notes
- Has a built-in voltage regulator, so it works with both 3.3V and 5V logic levels
- For use with ESP32 or similar, connect AOUT to an ADC-capable GPIO pin
- The electronics section (upper portion near connector/IC) is not waterproof — only the sensing area (lower portion) should be buried in soil. Protect the upper area with conformal coating, heat shrink, or tape
- Approximate output range per community reports: ~1V wet, ~2V dry (varies by unit)

## Costs
- Purchased on [Amazon](https://www.amazon.com/dp/B094J8XD83) for $11.99 (10-pack)
- Per unit: $1.20

## Package Contents
- 10x Capacitive Soil Moisture Sensor
- 10x Analog Sensor Cable (PH2.54-3P)

## References
- [Amazon Product Listing](https://www.amazon.com/dp/B094J8XD83)
- [ATO.com Capacitive Soil Moisture Sensor](https://www.ato.com/capacitive-soil-moisture-sensor)
