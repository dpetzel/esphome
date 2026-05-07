# Soil W001
A wireless soil moisture sensor

## Components
* XIAO ESP32C6
* AITRIP Capacitive Soil Moisture Sensor
* LiPo Battery Pack (3.7V, JST — connects to BAT pads)
* 2x 100kΩ Resistors (voltage divider for battery monitoring)

## Bill Of Materials

**NOTE** - prices as of 2026-04-18

* 1x [XIAO ESP32C6](https://www.seeedstudio.com/Seeed-StudioXIAO-ESP32C6-3PCS-p-5918.html) - $4.50
* 1x [AITRIP Capacitive Soil Moisture Sensor](https://www.amazon.com/dp/B094J8XD83) - $1.20
* 2x [100kΩ 1W Resistors](https://www.amazon.com/dp/B08GZD9V8L) - $0.12
* 1x [3.7V LiPo Battery Pack](https://www.amazon.com/dp/B0CHNL5TB9) - $3.67

**Estimated unit cost: ~$9.49**

## Requirements
* Measure Soil Moisture every 60 minutes
* Expose moisture as a Home Assistant Sensor
* Ultra Low power - Can operate on battery

## Overview
Battery-powered soil moisture sensor built on the XIAO ESP32-C6. An AITRIP
capacitive soil moisture probe is connected to GPIO1 (D1, ADC) and read once
per wake cycle. The sensor is power-gated via GPIO21 (D3) to eliminate draw
during deep sleep. The device wakes every 60 minutes (configurable via Home
Assistant), powers on the sensor, connects to WiFi, publishes the moisture
percentage and battery voltage to Home Assistant, then powers off the sensor
and returns to sleep.

Powered by a LiPo battery pack (3.7V nominal) soldered to the XIAO's BAT
pads. The board has built-in charge management, so the battery charges
automatically when USB-C is connected. Battery voltage is monitored via a
1:2 voltage divider on GPIO0.

Refer to [ESPHome Configuration](/config/soil-w001.yaml) and
[Wiring](wiring.md) for implementation details.

## Enclosure

[3D Model (OnShape)](https://cad.onshape.com/documents/78311aea47a46f8ce1166a2c/w/51433c4dabbf4ac24be06ed2/e/5678cb79570ab3444cddf8b0?renderMode=0&uiState=69fbefe3c109249c8f87f276)

## Home Assistant Setup

### Prevent Deep Sleep Helper
To keep the device awake for OTA updates or debugging, create a toggle
helper in Home Assistant:

1. Go to Settings > Devices & Services > Helpers
2. Click Create Helper > Toggle
3. Name: `prevent_deep_sleep_soil_w001`
4. Entity ID should be: `input_boolean.prevent_deep_sleep_soil_w001`

Turn ON to keep all Soil W001 devices awake. Turn OFF to resume normal
deep sleep. If the helper does not exist, devices will sleep normally.

**Note:** Turning the helper ON will not wake a sleeping device. The
device will pick up the flag on its next scheduled wake cycle and stay
awake from that point forward.
