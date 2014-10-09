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
* 

ライセンス：
このプロジェクトはGPLV2でライセンスしています。商用非商用問わずフリーで利用できますが、変更・修整のあるなしに関わらず再頒布する場合はこのプロジェクトのコードを含んでいることを明記し、要請がある場合はソースコードを全て開示する義務があります。また、このコードを利用したことにより受けた損害の責務を著作者は負いません。詳細はLICENSEをご覧ください。

License:
This project is licensed in GPLV2.
It offers free regardless commercial non-commercial, but stated that it contains the code for this project, and to disclose all the source code if there is a request if you want to re-distribute or without modification, retouching There is a duty.
In addition, the author does not take responsibility for damages received by using this code.
Please see the LICENSE for more information.

