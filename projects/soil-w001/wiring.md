# Soil W001 - Wiring

## Connections

### Power (LiPo Battery Pack)

| Battery Pack Pin | XIAO ESP32-C6 Pin | Notes |
|------------------|-------------------|-------|
| + | BAT+ pad | Solder to positive battery pad (near D5 silk) |
| - | BAT- pad | Solder to negative battery pad (near D8 silk) |

### Battery Voltage Monitor

| Component | XIAO ESP32-C6 Pin | Notes |
|-----------|-------------------|-------|
| BAT+ pad | R1 (100kΩ) | Battery voltage source |
| R1 → R2 node | GPIO0 (D0) | ADC input (1:2 voltage divider) |
| R2 (100kΩ) | GND | Ground |

### Soil Moisture Sensor

| Sensor Pin | XIAO ESP32-C6 Pin | Notes |
|------------|-------------------|-------|
| VCC | GPIO21 (D3) | Power gated via digital pin |
| GND | GND | Ground |
| AOUT | GPIO1 (D1) | Analog moisture reading |

## Pin Assignment Strategy

The XIAO ESP32-C6 has only 3 ADC-capable pins on its breakout headers:
GPIO0 (D0), GPIO1 (D1), and GPIO2 (D2). All other GPIOs are digital only.

**Preferred approach:** Reserve ADC pins for analog inputs. Use non-ADC
pins (GPIO21/D3, GPIO22/D4, GPIO23/D5, etc.) for digital functions like
power gating, LEDs, and button inputs.

## Diagram

```mermaid
graph LR

    subgraph Battery[LiPo Battery Pack]
        BPOS[+  3.7V]
        BNEG[-  GND]
    end

    subgraph XIAO[XIAO ESP32-C6]
        BATP[BAT+]
        BATN[BAT-]
        GND[GND]
        GPIO0[GPIO0 - ADC]
        GPIO1[GPIO1 - ADC]
        GPIO21[GPIO21]
    end

    subgraph Voltage Divider
        R1[R1 - 100kΩ]
        R2[R2 - 100kΩ]
    end

    subgraph Sensor[AITRIP Capacitive Soil Moisture Sensor]
        VCC[VCC]
        SGND[GND]
        AOUT[AOUT]
    end

    BPOS --- BATP
    BNEG --- BATN

    BATP --- R1
    R1 --- GPIO0
    GPIO0 --- R2
    R2 --- GND

    GPIO21 --- VCC
    GND --- SGND
    GPIO1 --- AOUT

    %% Battery power
    linkStyle 0 stroke:red,stroke-width:2px
    %% Battery ground
    linkStyle 1 stroke:black,stroke-width:2px
    %% Voltage divider
    linkStyle 2 stroke:red,stroke-width:2px
    linkStyle 3 stroke:green,stroke-width:2px
    linkStyle 4 stroke:green,stroke-width:2px
    linkStyle 5 stroke:black,stroke-width:2px
    %% Sensor power (gated)
    linkStyle 6 stroke:yellow,stroke-width:2px
    %% Sensor ground
    linkStyle 7 stroke:black,stroke-width:2px
    %% Sensor signal
    linkStyle 8 stroke:green,stroke-width:2px
```
