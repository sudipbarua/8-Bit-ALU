# 8-Bit-ALU
The design consists of 4 components-
1. A [component](https://github.com/sudipbarua/8-Bit-ALU/blob/master/al8.vhd) for processing arithmetic and logic operation
2. A [Shift register](https://github.com/sudipbarua/8-Bit-ALU/blob/master/rt8.vhd) for rotation operation.
3. Two [tristate Buffers](https://github.com/sudipbarua/8-Bit-ALU/blob/master/buffer.vhd) to connect the two components to the output.
4. A Decoder to be used as a output-enable and select between arithmatic and rotaion operation.

## [Aritmatic and Logic Operation Component](https://github.com/sudipbarua/8-Bit-ALU/blob/master/al8.vhd)
The following opcodes are implemented 

|opcode| instruction |
|------|-------------|
| 44h  | Bitwise or  |
| 54h  | Bitwise and |
| 64h  | Bitwise xor |
| 04h  | Increment input-1|
| 14h  | Decrement input-1|
| 24h  | Add input-1 and input-2|
| 94h  |UBB --subtract input-2 from input-1


|opcode| instruction |
|------|-------------|
03h - RRA --rotate right A
23h - RLA --rotate left A
