## Guide on CMSStudio


#### some key points

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

so the last instruction in microprogram should increase PC and reset uPC