# saves
## parts:
- Block Code
- Encoded Position
- Encoded Rotation
- Encoded Color
- Material code
### Block Code:
the block code is a single character.
the full list of block codes is [here](https://tomtom4500.lovestoblog.com/BuildLogic/Paste/TableItems.json) (excluding some beams)
the full list of block codes including beams is [here](https://tomtom.worldlite.ca/BuildLogic/GetItemsList.php)
#### Beams
beams use weird characters for block codes.
(the other beams can be found on [the 1st list](https://tomtom4500.lovestoblog.com/BuildLogic/Paste/TableItems.json)

Beam 1x2 = STX special character

Beam 1x3 = ETX special character

Beam 1x5 = EOT special character

Beam 1x6 = ENQ special character

Beam 1x8 = ACK special character

### Encoded Positon
this is the encoded position. its like a grid index. it goes from 0 0 0 to 255 255 255. (0 0 0 is in a corner. 255 255 255 is opposite side in the sky)
it uses [Base71](####-base71)

#### base71
```js
const POS_ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789#$";
```

### Encoded Rotation
[unfinished but i have a code i can paste in]
```js
  const DIR_TO_ROT = {
    // X axis (horizontal)
    "PLUS_X":  "E",
    "MINUS_X": "M",

    // Y axis (vertical)
    "PLUS_Y":  "B",
    "MINUS_Y": "D",

    // Z axis (depth, default)
    "PLUS_Z":  "A",
    "MINUS_Z": "o"
  };
```
Do not include this if you are using default color material and rotation.

### Encoded Color
its encoded the same way as [positon](###-Encoded-Position). like a grid index. but use r g b instead of x y z.

if you use default material and color. also dont add this one-

### Material Codes
these are the material codes to put. 

do not include one if you are using default material.
```luau
    ["Default"] = nil,
    ["Glass"] = "2",
    ["Diamond Plate"] = "3",
    ["Fabric"] = "4",
    ["Grass"] = "5",
    ["Ice"] = "6",
    ["Sand"] = "7",
    ["Wood"] = "8",
    ["Wooden Planks"] = "9",
    ["Foil"] = "a",
    ["Metal"] = "b",
    ["Brick"] = "c",
    ["Concrete"] = "d",
    ["Cobblestone"] = "e",
    ["Marble"] = "f",
    ["Granite"] = "g",
    ["Slate"] = "h",
    ["Corroded Metal"] = "i",
    ["Force Field"] = "j",
```
## how to turn this into a save string part
get all parts. add them together (in the [order at the top](##-parts:))
it should look like this: (to do later)
__
if you want more blocks. make more block save parts. and connect them using ; character
heres a finished save string:
GAAAAAy0sM5;GAEAAAAg3$j;GAAQAAy0sM5;GAEQAAAg3$j;GAAgAAy0sM5;GAEgAAAg3$j;GAAwAAlNUIh;
