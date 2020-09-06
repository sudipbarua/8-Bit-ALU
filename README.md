# 8-Bit-ALU
The design consists of 4 components-
1. A [component](https://github.com/sudipbarua/8-Bit-ALU/blob/master/al8.vhd) for processing arithmetic and logic operation
2. A [Shift register](https://github.com/sudipbarua/8-Bit-ALU/blob/master/rt8.vhd) for rotation operation.
3. Two [tristate Buffers](https://github.com/sudipbarua/8-Bit-ALU/blob/master/buffer.vhd) to connect the two components to the output.
4. A Decoder to be used as a output-enable and select between arithmatic and rotaion operation.

![ALU-8](https://github.com/sudipbarua/8-Bit-ALU/blob/master/ALU.JPG)
      
      Fig: Block diagram of ALU.

## [Aritmatic and Logic Operation Component](https://github.com/sudipbarua/8-Bit-ALU/blob/master/al8.vhd)
The following opcodes are implemented here

|opcode| instruction |
|------|-------------|
| 44h  | Bitwise or  |
| 54h  | Bitwise and |
| 64h  | Bitwise xor |
| 04h  | Increment A |
| 14h  | Decrement A |
| 24h  | Add A and B |
| 94h  | Subtract B from A | 

## [Shift register](https://github.com/sudipbarua/8-Bit-ALU/blob/master/rt8.vhd)
The following opcodes are implemented here

|opcode| instruction |
|------|-------------|
| 03h  | Rotate right A| 
| 23h  | Rotate left A|

## [Tristate Buffers](https://github.com/sudipbarua/8-Bit-ALU/blob/master/buffer.vhd)
This component allows the connection of 8bit busses to a common bidirectional bus. The component should drives signal A to output Y if OEn (output enable)
is low (low ative), otherwise it sets the ouput to high impedance and frees the bus so that other members can write. 

![BUF8](https://github.com/sudipbarua/8-Bit-ALU/blob/master/BUF8.JPG)
      
      Fig: Tristate buffer.

## Decoder
Generates the output enable signals for the tristate buffers either for Arithmatic unit or for Shift register based on the opcode value.

Finally all the components are integrated in the [Top Level Design](https://github.com/sudipbarua/8-Bit-ALU/blob/master/ALU.vhd) an simulated using [tb_ALU.vhd](https://github.com/sudipbarua/8-Bit-ALU/blob/master/tb_ALU.vhd)
