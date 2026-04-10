# Seeed Studio XIAO ESP32-C6

Picked up on [Seeed Studio](https://www.seeedstudio.com/Seeed-StudioXIAO-ESP32C6-3PCS-p-5918.html)

* USB-C
* Brand Name: Seeed Studio
* Datasheet: [ESP32-C6 Datasheet](https://www.espressif.com/en/products/socs/esp32-c6)
* Dimensions: 21x17.8mm

## ESPConnect Report
* ESPConnect Version: 1.1.10

### Flash & Clock
* Crystal 40 MHz
* Flash Device : 4 MB
* USB Bridge : Espressif Systems - ESP32 Native USB (0x1001)

### Feature Set
* Wi-Fi 6
* BT 5
* IEEE802.15.4

### Package & Revision
* Chip Variant: ESP32-C6
* Revision: v2

### Security
* Flash Encryption: disabled
* Flash Encryption Details: FLASH_CRYPT_CNT=0x0 (set bits=0)
* Flash Encryption Mode: AES-128 (original ESP32 scheme)
* Secure Boot: disabled
* JTAG Protection: enabled
* USB Protection: not applicable for this chip

### Embedded Memory
* Embedded Flash: 4MB
* Flash ID: 0x164046
* Flash Manufacturer: 0x46
* Flash Device: 4 MB

### Peripherals
* PWM/LEDC: 6 channels · 4 timers · Single LEDC group.

## Pin Information
Source: [Seeed Studio Wiki](https://wiki.seeedstudio.com/xiao_esp32c6_getting_started/)

| XIAO Pin | Function | GPIO | Alternate Functions | Description |
|----------|----------|------|---------------------|-------------|
| 5V | VBUS | — | | Power Input/Output |
| GND | | — | | Ground |
| 3V3 | 3V3_OUT | — | | Power Output |
| D0 | Analog | GPIO0 | LP_GPIO0 | GPIO, ADC |
| D1 | Analog | GPIO1 | LP_GPIO1 | GPIO, ADC |
| D2 | Analog | GPIO2 | LP_GPIO2 | GPIO, ADC |
| D3 | Digital | GPIO21 | SDIO_DATA1 | GPIO |
| D4 | SDA | GPIO22 | SDIO_DATA2 | GPIO, I2C Data |
| D5 | SCL | GPIO23 | SDIO_DATA3 | GPIO, I2C Clock |
| D6 | TX | GPIO16 | | GPIO, UART Transmit |
| D7 | RX | GPIO17 | | GPIO, UART Receive |
| D8 | SCK | GPIO19 | SPI_CLK | GPIO, SPI Clock |
| D9 | MISO | GPIO20 | SPI_MISO | GPIO, SPI Data |
| D10 | MOSI | GPIO18 | SPI_MOSI | GPIO, SPI Data |

### Non-Header Pins

| Label | GPIO | Notes |
|-------|------|-------|
| MTDO | GPIO7 | JTAG |
| MTDI | GPIO5 | JTAG, ADC |
| MTCK | GPIO6 | JTAG, ADC |
| MTMS | GPIO4 | JTAG, ADC |
| EN | CHIP_PU | Reset |
| Boot | GPIO9 | Enter Boot Mode |
| RF Switch Port Select | GPIO14 | Switch onboard/UFL antenna |
| RF Switch Power | GPIO3 | Must set LOW to enable RF switch |
| Light | GPIO15 | User LED |

### Notes
* Default I2C: SDA=GPIO22 (D4), SCL=GPIO23 (D5)
* Default UART: TX=GPIO16 (D6), RX=GPIO17 (D7)
* Default SPI: SCK=GPIO19 (D8), MISO=GPIO20 (D9), MOSI=GPIO18 (D10)
* Deep sleep wake-up GPIOs: 0-7
* External antenna: Set GPIO3 LOW then GPIO14 HIGH
