# spice_dune
SPICE Examples

## Introduction
SPICE simulation is a cornerstone of my work. Therefore, I wanted to master SPICE simulations. As such, I also wanted a repository of SPICE examples or prototypes to use as a reference or library.

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
