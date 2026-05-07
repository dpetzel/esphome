---
name: implement-project
description: Given a project file, implement it
---

## Project Requirements
Within the project's `README.md` there should be a `Requirements` section. This will define
the functional and non-functional requirements for the project

## Components
Within the project's `README.md` there should be a `Components` section. This will contain
information about the known components we intend to use. This may not be an all-inclusive
list as we might not know some answers at the start.

## Overview
Your job will include filling out an overview section in the project's `README.md`. Infer
what you can from the requirements and components. Ask questions when you need clarifying
information. Do not make up things which are, or could be, untrue.


## Wiring Diagrams
When implementing a project, generate a `wiring.md` file. Ensure the file
has both a table of the connections as well as a mermaid.js diagram of
the wiring. Any time changes are made to the configuration that result
in a wiring change, make sure these are updated.

## Home Assistant Setup
If the project uses deep sleep, document the HA helper needed to prevent
deep sleep for OTA/debugging in the project's `README.md`. Include:
- The exact helper name (matching the `sleep_prevent_helper_name` substitution)
- Steps to create it in HA (Settings > Devices & Services > Helpers > Toggle)
- How to use it (turn ON to keep awake, OFF to resume sleep)
- Note that turning ON will not wake a sleeping device — the device will
  stay awake on its next wake cycle
