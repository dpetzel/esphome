# ESP32 Board Information

## Board Details

| Board | Manufacturer | SoC | CPU | Clock | SRAM | Flash | Wireless | GPIO | Size |
|-------|-------------|-----|-----|-------|------|-------|----------|------|------|
| [XIAO ESP32-C3](#xiao-esp32-c3) | Seeed Studio | ESP32-C3 | RISC-V single-core | 160 MHz | 400 KB | 4 MB | WiFi, BLE 5.0 | 11 | 21×17.5 mm |
| [XIAO ESP32-S3](#xiao-esp32-s3) | Seeed Studio | ESP32-S3 | Xtensa LX7 dual-core | 240 MHz | 512 KB + 8 MB PSRAM | 8 MB | WiFi, BLE 5.0 | 11 | 21×17.5 mm |
| [XIAO ESP32-C6](#xiao-esp32-c6) | Seeed Studio | ESP32-C6 | RISC-V dual-core (160+20 MHz LP) | 160 MHz | 512 KB | 4 MB | WiFi 6, BLE 5.3, Zigbee, Thread | 11 | 21×17.5 mm |
| [ESP32-C3 Super Mini](#esp32-c3-super-mini) | Eyewink | ESP32-C3 | RISC-V single-core | 160 MHz | 400 KB | 4 MB | WiFi, BLE 5.0 | 13 | 22×18 mm |
| [AITRIP ESP32-S](#aitrip-esp32-s) | AITRIP | ESP32-WROOM-32 | Xtensa LX6 dual-core | 240 MHz | 520 KB | 4 MB | WiFi, BT 4.2 + BLE | 38 | 51×28 mm |

## XIAO ESP32-C6 Pin Notes

Only 3 ADC-capable pins are available on the breakout headers: GPIO0 (D0),
GPIO1 (D1), and GPIO2 (D2). All other GPIOs are digital only. Reserve ADC
pins for analog inputs and use non-ADC pins (D3+) for digital functions
like power gating, LEDs, and buttons.

## References

An ESP32 board comparison lifted from https://www.youtube.com/watch?v=hBBORq_yHrw.
https://docs.google.com/spreadsheets/d/13ZaT3M0Kduwyyg-0PB5NsA8wFH66zvUF4Vkch_5ClWc/edit?gid=0#gid=0

Official Espressif https://products.espressif.com/static/Espressif%20SoC%20Product%20Portfolio.pdf product comparison.

## Purchases

### XIAO ESP32-C3

* [XIAO ESP32-C3](https://www.seeedstudio.com/Seeed-Studio-XIAO-ESP32C3-3PCS-p-5917.html) - $12.14 - 3 Pack - 2026-04-18

### XIAO ESP32-S3

* [XIAO ESP32-S3](https://www.seeedstudio.com/Seeed-Studio-XIAO-ESP32S3-3PCS-p-5919.html) - $17.99 - 3 Pack - 2026-04-18

### XIAO ESP32-C6

* [XIAO ESP32-C6](https://www.seeedstudio.com/Seeed-StudioXIAO-ESP32C6-3PCS-p-5918.html) - $13.04 - 3 Pack - 2026-04-18
* [XIAO ESP32-C6](https://www.seeedstudio.com/Seeed-StudioXIAO-ESP32C6-3PCS-p-5918.html) - $13.49 - 3 Pack - 2026-02-09

### ESP32-C3 Super Mini

* [Eyewink ESP32-C3 Dev Board Mini](https://www.aliexpress.us/item/3256808827955225.html?spm=a2g0o.order_list.order_list_main.11.4c721802zD029d&gatewayAdapt=glo2usa) - $2.13 - 1 Pack - 2026-03-08

### AITRIP ESP32-S

* [AITRIP ESP32-S](https://www.amazon.com/dp/B0CR5Y2JVD?th=1) - $16.59 - 3 Pack - 2026-02-01
* [AITRIP ESP32-S](https://www.amazon.com/dp/B0CR5Y2JVD?th=1) - $15.99 - 3 Pack - 2025-12-18
