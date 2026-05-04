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
#### Beams
beams use weird characters for block codes.
(the other beams can be found on [the list](https://tomtom4500.lovestoblog.com/BuildLogic/Paste/TableItems.json))
Beam 1x2 = STX special character
Beam 1x3 = ETX special character
Beam 1x5 = EOT special character
Beam 1x6 = ENQ special character
Beam 1x8 = ACK special character
### Encoded Positon
this is the encoded position. its like a grid index.
it uses [Base71](####-base71)
#### base71
``
const POS_ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789#$";
``
### Encoded Rotation
[]
### Encoded Color
its encoded the same way as [positon](###-Encoded-Position). like a grid index. but use r g b instead of x y z
### Material Code
[]
