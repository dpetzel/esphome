# Teyleten Robot Pro Micro nRF52840

Pro Micro form-factor development board based on the Nordic Semiconductor nRF52840 SoC. Pin-compatible with the Nice!Nano V2, making it suitable for wireless keyboard builds, IoT sensors, and BLE/Zigbee/Thread projects.

## Technical Specifications

| Parameter              | Value                                              |
|------------------------|----------------------------------------------------|
| SoC                    | Nordic nRF52840                                    |
| Processor              | ARM Cortex-M4F @ 64 MHz                           |
| Flash                  | 1 MB                                              |
| RAM                    | 256 KB                                             |
| Operating Voltage      | 3.3V                                               |
| Input Voltage          | 5V (USB-C) or 3.7V (LiPo)                         |
| Wireless               | Bluetooth 5.0, Zigbee, Thread, ANT, 802.15.4, NFC |
| Antenna                | Onboard                                            |
| USB                    | USB-C (native USB support)                         |
| Battery Charging       | Yes — 3.7V single-cell LiPo via B+/B- pads, 100mA charge rate |
| Digital I/O Pins       | 18                                                 |
| Analog Input Channels  | 6 (14-bit ADC)                                     |
| Interfaces             | I2C, SPI, UART, USB, PWM, GPIO                    |
| Bootloader             | Adafruit UF2 (SoftDevice S140 v6.1.1)             |
| Form Factor            | Pro Micro compatible                               |

## Pin Information

Pin-compatible with Nice!Nano V2. The board exposes 24 header pins (18 GPIO, 3 GND, VCC, RAW, RST). The nRF52840 allows flexible remapping of SPI, I2C, and UART to any GPIO.

- 3 header pins support analog input (AIN0, AIN5, AIN7)
- P0.04 (AIN2) is reserved for battery voltage monitoring and cannot be used for other purposes
- P0.13 controls VCC power (HIGH = off) — useful for cutting power to LEDs to save battery
- P0.15 drives the onboard LED
- Several header pins are low-drive only and should not be used for high-frequency protocols (SPI data, RGB LED data)

For full pinout details, refer to the [Nice!Nano Pinout & Schematic](https://nicekeyboards.com/docs/nice-nano/pinout-schematic) and the [nRFMicro Pinout Wiki](https://github.com/joric/nrfmicro/wiki/Pinout).

## Flashing

- Programmable via USB-C using the stock UF2 bootloader
- No dedicated reset button — short RST to GND twice quickly to enter bootloader mode
- Board appears as a USB mass storage drive; copy the UF2 file to flash
- SWD programmer only needed if switching to MCUboot or recovering a bricked bootloader

## Notes

- Pin-compatible with Nice!Nano V2 — most pinout references and cases apply
- Detected as Nice Nano V2 by ZMK firmware
- Standby power ~1mA with LED on; lower with LED software-disabled

## Costs

- Purchased on [Amazon](https://www.amazon.com/dp/B0CYLNZ6V4) for $15.88 (3-pack)
- Per unit: $5.29

## Package Contents

- 3x Pro Micro nRF52840 Development Board

## References

- [Amazon Product Listing](https://www.amazon.com/dp/B0CYLNZ6V4)
- [Zephyr Project — Pro Micro nRF52840 Board Docs](https://docs.zephyrproject.org/latest/boards/others/promicro_nrf52840/doc/index.html)
- [Nice!Nano Pinout & Schematic](https://nicekeyboards.com/docs/nice-nano/pinout-schematic)
- [nRFMicro Pinout Wiki](https://github.com/joric/nrfmicro/wiki/Pinout)
- [nRF52840 Clone Wiki](https://github.com/joric/nrfmicro/wiki/Alternatives)
