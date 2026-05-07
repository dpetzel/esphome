---
name: generate-config
description: Generate configuration files for ESPHome projects.
---

# Overview
The `generate-config` skill is designed to assist in creating configuration files for ESPHome projects. It can help you generate YAML configuration files based on the components you have in your ESPHome setup.

Each configuration will contain a commented section at the top that lists the components used in the configuration. This allows you to easily identify which components are included in the generated configuration. When updating or re-generating the configuration, the skill will check for changes in the components and update the commented section accordingly.

# Pull Ups
If the description of the project will indicate if a pull up resistor is needed for a component, you should include that in the generated configuration. If the description does not specify whether a pull up resistor is needed, you explicitly ask if one is used. For components that require a pull up, and the description says we don't have an external
one you should assume we want to enable the internal/omboard one
