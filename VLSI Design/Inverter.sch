DSCH 3.5
VERSION 2/9/2026 9:28:53 PM
BB(41,10,99,35)
SYM  #inv
BB(55,15,90,35)
TITLE 70 25  #~
MODEL 101
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(55,25,0.000,0.000)in
PIN(90,25,0.003,0.002)out
LIG(55,25,65,25)
LIG(65,15,65,35)
LIG(65,15,80,25)
LIG(65,35,80,25)
LIG(82,25,82,25)
LIG(84,25,90,25)
VLG not not1(out,in);
FSYM
SYM  #button
BB(41,21,50,29)
TITLE 45 25  #button1
MODEL 59
PROP                                                                                                                                    
REC(42,22,6,6,r)
VIS 1
PIN(50,25,0.000,0.000)in1
LIG(49,25,50,25)
LIG(41,29,41,21)
LIG(49,29,41,29)
LIG(49,21,49,29)
LIG(41,21,49,21)
LIG(42,28,42,22)
LIG(48,28,42,28)
LIG(48,22,48,28)
LIG(42,22,48,22)
FSYM
SYM  #light
BB(93,10,99,24)
TITLE 95 24  #light1
MODEL 49
PROP                                                                                                                                    
REC(94,11,4,4,r)
VIS 1
PIN(95,25,0.000,0.000)out1
LIG(98,16,98,11)
LIG(98,11,97,10)
LIG(94,11,94,16)
LIG(97,21,97,18)
LIG(96,21,99,21)
LIG(96,23,98,21)
LIG(97,23,99,21)
LIG(93,18,99,18)
LIG(95,18,95,25)
LIG(93,16,93,18)
LIG(99,16,93,16)
LIG(99,18,99,16)
LIG(95,10,94,11)
LIG(97,10,95,10)
FSYM
LIG(90,25,95,25)
LIG(55,25,50,25)
FFIG D:\4-2\VLSI Lab\Inverter.sch
