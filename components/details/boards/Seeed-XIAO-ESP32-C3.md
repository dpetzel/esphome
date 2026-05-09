# Seeed Studio XIAO ESP32-C3

Picked up on [Seeed Studio](https://www.seeedstudio.com/Seeed-Studio-XIAO-ESP32C3-3PCS-p-5917.html)

* USB-C
* Brand Name: Seeed Studio
* Datasheet: [ESP32-C3 Datasheet](https://www.espressif.com/en/products/socs/esp32-c3)
* Dimensions: 21x17.8mm

## Specifications

* Processor: ESP32-C3, RISC-V single-core 32-bit, up to 160 MHz
* Wireless: Wi-Fi 802.11 b/g/n, Bluetooth 5.0 (BLE)
* Memory: 400KB SRAM, 4MB Flash
* Interfaces: 1x UART, 1x I2C, 1x SPI, 11x GPIO (PWM), 4x ADC
* Deep Sleep: ~44 μA
* Working Temperature: -40°C ~ 85°C

## Pin Information
Source: [Seeed Studio Wiki](https://wiki.seeedstudio.com/XIAO_ESP32C3_Getting_Started/)

| XIAO Pin | Function | GPIO | Alternate Functions | Description |
|----------|----------|------|---------------------|-------------|
| 5V | VBUS | — | | Power Input/Output |
| GND | | — | | Ground |
| 3V3 | 3V3_OUT | — | | Power Output |
| D0 | Analog | GPIO2 | ADC1_CH2 | GPIO, ADC |
| D1 | Analog | GPIO3 | ADC1_CH3 | GPIO, ADC |
| D2 | Analog | GPIO4 | ADC1_CH4, FSPIHD, MTMS | GPIO, ADC |
| D3 | Analog | GPIO5 | ADC2_CH0, FSPIWP, MTDI | GPIO, ADC |
| D4 | SDA | GPIO6 | FSPICLK, MTCK | GPIO, I2C Data |
| D5 | SCL | GPIO7 | FSPID, MTDO | GPIO, I2C Clock |
| D6 | TX | GPIO21 | U0TXD | GPIO, UART Transmit |
| D7 | RX | GPIO20 | U0RXD | GPIO, UART Receive |
| D8 | SCK | GPIO8 | | GPIO, SPI Clock |
| D9 | MISO | GPIO9 | | GPIO, SPI Data |
| D10 | MOSI | GPIO10 | FSPICS0 | GPIO, SPI Data |

### Non-Header Pins

| Label | GPIO | Notes |
|-------|------|-------|
| MTDO | GPIO7 | JTAG |
| MTDI | GPIO5 | JTAG, ADC |
| MTCK | GPIO6 | JTAG, ADC |
| MTMS | GPIO4 | JTAG, ADC |
| Reset | CHIP_EN | EN |
| Boot | GPIO9 | Enter Boot Mode |
| U.FL | LNA_IN | External UFL antenna connector |
| Light | VCC_3V3 | CHG-LED |

### Notes
* Default I2C: SDA=GPIO6 (D4), SCL=GPIO7 (D5)
* Default UART: TX=GPIO21 (D6), RX=GPIO20 (D7)
* Default SPI: SCK=GPIO8 (D8), MISO=GPIO9 (D9), MOSI=GPIO10 (D10)
* Strapping pins: GPIO2, GPIO8, GPIO9 — be careful with these during boot
* ADC2 (GPIO5/D3) may give unreliable readings; prefer ADC1 pins (D0-D2)
* Deep sleep wake-up GPIOs: D0-D3
* External antenna via U.FL connector (no RF switch — always uses external antenna when connected)
* Battery charging supported via BAT pads on bottom

## Battery Voltage Monitoring

Unlike the C6, the ESP32-C3 has no dedicated battery voltage pin. A community
workaround uses a 1:2 voltage divider (2x 200kΩ resistors) connected to A0 (GPIO2).

See: https://forum.seeedstudio.com/t/battery-voltage-monitor-and-ad-conversion-for-xiao-esp32c/267535
