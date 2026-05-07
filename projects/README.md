# Projects

## Naming Convention

Projects follow the pattern: `<function>-<protocol><number>`

- Function describes what the device does (e.g. `soil`, `temp`, `motion`)
- Protocol prefix indicates the communications method
- Number is a zero-padded sequential ID within that function+protocol combination

### Protocol Prefixes

| Prefix | Protocol  |
|--------|-----------|
| W      | WiFi      |
| Z      | Zigbee    |
| B      | Bluetooth |
| T      | Thread    |

### Examples

- `soil-w001` — Soil moisture sensor over WiFi
- `soil-z001` — Soil moisture sensor over Zigbee
- `temp-b001` — Temperature sensor over Bluetooth

## Project Index

| Project | Description | Board |
|---------|-------------|-------|
| [lipo-charger-w001](lipo-charger-w001/) | LiPo charger with OLED display | XIAO ESP32-C6 |
| [soil-w001](soil-w001/) | Wireless soil moisture sensor | XIAO ESP32-C6 |
