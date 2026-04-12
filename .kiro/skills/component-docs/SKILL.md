---
name: component-docs
description: Create or update documentation about a component.
---

When provided with one or more URLs you will fetch those URLs and do research
try and create or augment documentation about a component.

When generating a new component doc do so on a new/dedicated git branch. The
branch name should reflect the component, avoid generic branch names.

## Structure & Formatting
Component documentation should be done in Markdown with one component per file.
Each file should contain the following sections:

### Title
The name of the file should match the title (H1) in the document. When saving
files replace spaces with underscores and remove special characters. Ideally
these should start with the manufactorer and model number of the component
in the format `<Manufacturer>-<Model>-<ShortDescript>`

### Description
A one to two sentence description of what the component is/does.

### Technical Specifications
Try to lift as much technical information from the source documentation as possibe.
Some key information that should highlighted toward the front and not buried

* Operating Voltages
* Operating Ranges - i.e. for a temp sensor the temp range, for a humidty sensor, its
  range
* Size/Dimensions
* Interface types - I2C, Analog, etc

### Costs
If provide a link to a reseller, extract the item cost, as well as calculating the
per unit price. Ignore shipping and taxes as those will vary

### References
Every page should have a references section which includes link to any pages we use
to collect the information

## Board Details
When the component in question is a development board lets add some extra information:

If possible try to find an image of the board layout/pins and save it into the images
directory and include the image in the file.

Include information about the available pins, including USB-C plugs, battery integrations
etc. Avoid a table of pins, counts will be more useful and we will refer to official docs
as needed for more info.

### ESP32
If we are working with an ESP32, lets include a section in the document for an ESPConnect
report. The report will need to be manually and provided to you.