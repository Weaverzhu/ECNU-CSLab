# Guide on CMSStudio

## MXJ1

### some key points

data & instructions are stored in RAM

steps to fetch data or instruction:

1.  AR = PC, whatever, PC is always set right by the compiler, so just get right addresss from PC
2.  load PC from RAM to make jump instruction
3.  load data from RAM to read input, if you need x input elements, you should fetch x times.
4.  don't forget do PC = PC+1 after instruction


First three instruction should be:

1. 00 00 00
2. AR=PC 03 07 00
3. IR=RAM 80 04 05

so that after running a microprogram, new instruction will be fetched by new PC from RAM

so the last instruction in microprogram should increase PC and reset uPC to 0001 (to fetch next instruction)

### something about the instruction system (.IS files)

+ first column should be the name of ur instruction
+ second should be the argument of ur instruction (no spaces should be around the comma symbol, because this software use spaces to split columns)
+ third should be instruction code, should be incremented by 20 (e.g: 20, 40, 60)
+ fourth should be the length of ur code, (times to increase PC)
+ whatever left will be considered as comments

### something about fetching data from RAM

you will always fetch high 8 bits from RAM each time.

so if you want to fetch a 16-bit address, you should first fetch high 8 bits from RAM to ur low 8-bit destination, and then increase PC, fetch high 8 bits from RAM to ur high 8-bit destination, then increase the PC as well

### try it!

now you can finish MXJ1 with ur knowledge