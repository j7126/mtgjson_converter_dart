A simple command line tool, used for transforming mtgjson data files.

Used to generate specific data formats required for apps.

## Usage

Ensure the required mtgjson json file is present and run the command to generate the data file.

### Magic Life Wheel

Generate the json format used by https://github.com/j7126/magic-life-wheel

**Required Files:**

 - AllPrintings.json

**Command:**

`dart run mtgjson_converter_dart AllPrintings magic_life_wheel_all_cards`
