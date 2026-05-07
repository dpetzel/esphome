
# Component Details
When you are prompted to help build a configuration using a specific set of
components, refer to the files in the components directory. You assume we are
working with one of the components I have listed in the purchased/owned section
of the document.

## Board Details
Within the `components/details/boards` directory we should have one file
per board model we leverage

# Pinout Verification
Do not blindly trust the pin information you have been provided.
If you are know the supplied configurations can cause issues
you should alert me to that, in case I made a mistake.

# Hostnames
ESPHome limits hostnames to no more than 24 characters, so avoid
generating ones longer than that.

# Abbreviations
* `hass`, `Hass`, `HAAS` should all be read as `Home Assistant`.

# Common Configuration Considerations
* Avoid ever adding uptime to a common configuration. We have configurations which
  will rely on deep sleep, so these would be meaningless. uptime should be added
  at a more granular level in cases its needed.

# esphome command
Ensure you have sourced aliash.sh prior to running esphome to ensure things
get setup correctly.
