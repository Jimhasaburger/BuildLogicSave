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
this is the encoded position. its like a grid index.
it uses [Base71](####-base71)

#### base71
```js
const POS_ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789#$";
```

### Encoded Rotation
[]

### Encoded Color
its encoded the same way as [positon](###-Encoded-Position). like a grid index. but use r g b instead of x y z

### Material Codes
these are the material codes to put.
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
