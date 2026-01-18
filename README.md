# spice_dune
SPICE Examples

## Introduction
This is a collection of ngspice examples intended to serve as a reference or library for those learning to use ngspice. It hosts primarily ngspice translations of the PSPICE examples found in "Schaum's Outline of Theory and Problems of Electronic Devices and Circuits" by Jimmie J. Cathey. It also hosts examples from Sedra and Smith's 'Microelectronics'. In addition, it hosts automating scripts for, among other things, plotting in Linux. Finally, it contains personal SPICE examples that I created during the period that this repository was under development.

## Schaum's Outline
I took all SPICE related text, examples, and problems from the text "Schaum's Outline of Theory and Problems of ELectronic Devices and Circuits: Second Edition" by Jimmie J. Cathey, Ph.D. I translated all PSPICE simulations to ngspice for use in a Linux environment. This reference and example is in the 'schaums' folder.

### Examples
The examples can be run with the following command
```
ngspice -b ex_09_11.cir
```

Figures can be generated live instead of saved as a hard copy by making the following changes to the simulations:
```
.control
run
plot v(1) v(3)
.endc
```

Or the figures can be generated live in addition to saving a hard-copy by first commenting out the line 'quit' in the simulation, then running the simulation with the command
```
ngspice ex_09_11.cir
```

and then plotting with the command
```
plot v(1) v(3)
```

## Sedra and Smith
I will add all examples from the ideal edition of Sedra and Smith's 'Microelectronics' where SPICE models were developed for important microelectronic prototypes. This reference and examples are in the 'sedra' folder.
