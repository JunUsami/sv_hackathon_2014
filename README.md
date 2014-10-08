sv_hackathon_2014
=================

AXI BFM verification enviroment using DPI-C

1. Getting AXI Slave model from "ikwzm" 
 https://github.com/ikwzm/
2. Created testbench
3. Created C-code
4. Modified testbench, added DPI-C

* command.txt : used commands on the Aldec's Riviera-PRO
* init.v : include file for initial value of signals.
* parameter.v : include file for parameter values for bus width etc...
* tb.v : testbench (only AXI-read)
* main.c, readburst.c : c-code
