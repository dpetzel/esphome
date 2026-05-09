# Seeed Studio XIAO ESP32-S3

Picked up on [Seeed Studio](https://www.seeedstudio.com/Seeed-Studio-XIAO-ESP32S3-3PCS-p-5919.html)

* USB-C
* Brand Name: Seeed Studio
* Datasheet: [ESP32-S3 Datasheet](https://www.espressif.com/en/products/socs/esp32-s3)
* Dimensions: 21x17.8mm

## Specifications

* Processor: ESP32-S3R8, Xtensa LX7 dual-core 32-bit, up to 240 MHz
* Wireless: Wi-Fi 802.11 b/g/n, Bluetooth 5.0 (BLE)
* Memory: 8MB PSRAM, 8MB Flash
* Interfaces: 1x UART, 1x I2C, 1x SPI, 11x GPIO (PWM), 9x ADC, 1x User LED
* Working Temperature: -40°C ~ 85°C

## Pin Information
Source: [Seeed Studio Wiki](https://wiki.seeedstudio.com/xiao_esp32s3_getting_started/)

| XIAO Pin | Function | GPIO | Alternate Functions | Description |
|----------|----------|------|---------------------|-------------|
| 5V | VBUS | — | | Power Input/Output |
| GND | | — | | Ground |
| 3V3 | 3V3_OUT | — | | Power Output |
| D0 | Analog | GPIO1 | TOUCH1 | GPIO, ADC |
| D1 | Analog | GPIO2 | TOUCH2 | GPIO, ADC |
| D2 | Analog | GPIO3 | TOUCH3 | GPIO, ADC |
| D3 | Analog | GPIO4 | TOUCH4 | GPIO, ADC |
| D4 | SDA | GPIO5 | TOUCH5 | GPIO, I2C Data, ADC |
| D5 | SCL | GPIO6 | TOUCH6 | GPIO, I2C Clock, ADC |
| D6 | TX | GPIO43 | | GPIO, UART Transmit |
| D7 | RX | GPIO44 | | GPIO, UART Receive |
| D8 | SCK | GPIO7 | TOUCH7 | GPIO, SPI Clock, ADC |
| D9 | MISO | GPIO8 | TOUCH8 | GPIO, SPI Data, ADC |
| D10 | MOSI | GPIO9 | TOUCH9 | GPIO, SPI Data, ADC |

### Non-Header Pins

| Label | GPIO | Notes |
|-------|------|-------|
| MTDO | GPIO40 | JTAG |
| MTDI | GPIO41 | JTAG, ADC |
| MTCK | GPIO39 | JTAG, ADC |
| MTMS | GPIO42 | JTAG, ADC |
| Reset | CHIP_PU | EN |
| Boot | GPIO0 | Enter Boot Mode |
| U.FL | LNA_IN | External UFL antenna connector |
| USER_LED | GPIO21 | User LED (active LOW) |
| CHARGE_LED | VCC_3V3 | CHG-LED |

### Notes
* Default I2C: SDA=GPIO5 (D4), SCL=GPIO6 (D5)
* Default UART: TX=GPIO43 (D6), RX=GPIO44 (D7)
* Default SPI: SCK=GPIO7 (D8), MISO=GPIO8 (D9), MOSI=GPIO9 (D10)
* Strapping pins: GPIO0, GPIO45, GPIO46 — GPIO0 is the BOOT button
* All header pins D0-D10 support PWM
* D0-D5, D8-D10 support ADC (9 ADC pins total)
* D0-D5, D8-D10 support capacitive touch (TOUCH1-9)
* GPIO41 and GPIO42 (JTAG pads) do NOT support ADC despite being labeled as such in some docs
* User LED on GPIO21 is active LOW (LOW = on, HIGH = off)
* External antenna via U.FL connector on bottom-left
* Battery charging supported via BAT pads on bottom
* No GPIO available for battery voltage measurement without external wiring
