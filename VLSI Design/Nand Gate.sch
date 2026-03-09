DSCH 3.5
VERSION 2/9/2026 10:12:56 PM
BB(-14,-25,99,90)
SYM  #button
BB(-14,11,-5,19)
TITLE -10 15  #button2
MODEL 59
PROP                                                                                                                                    
REC(-13,12,6,6,r)
VIS 1
PIN(-5,15,0.000,0.000)in2
LIG(-6,15,-5,15)
LIG(-14,19,-14,11)
LIG(-6,19,-14,19)
LIG(-6,11,-6,19)
LIG(-14,11,-6,11)
LIG(-13,18,-13,12)
LIG(-7,18,-13,18)
LIG(-7,12,-7,18)
LIG(-13,12,-7,12)
FSYM
SYM  #button
BB(11,21,20,29)
TITLE 15 25  #button1
MODEL 59
PROP                                                                                                                                    
REC(12,22,6,6,r)
VIS 1
PIN(20,25,0.000,0.000)in1
LIG(19,25,20,25)
LIG(11,29,11,21)
LIG(19,29,11,29)
LIG(19,21,19,29)
LIG(11,21,19,21)
LIG(12,28,12,22)
LIG(18,28,12,28)
LIG(18,22,18,28)
LIG(12,22,18,22)
FSYM
SYM  #vss
BB(50,82,60,90)
TITLE 54 87  #vss
MODEL 0
PROP                                                                                                                                    
REC(50,80,0,0,b)
VIS 0
PIN(55,80,0.000,0.000)vss
LIG(55,80,55,85)
LIG(50,85,60,85)
LIG(50,88,52,85)
LIG(52,88,54,85)
LIG(54,88,56,85)
LIG(56,88,58,85)
FSYM
SYM  #pmos
BB(60,0,80,20)
TITLE 65 5  #pmos
MODEL 902
PROP   0.5u 0.05u MP                                                                                                                               
REC(60,5,19,15,r)
VIS 0
PIN(60,0,0.000,0.000)s
PIN(80,10,0.000,0.000)g
PIN(60,20,0.003,0.005)d
LIG(80,10,74,10)
LIG(72,10,72,10)
LIG(70,16,70,4)
LIG(68,16,68,4)
LIG(60,4,68,4)
LIG(60,0,60,4)
LIG(60,16,68,16)
LIG(60,20,60,16)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(30,0,50,20)
TITLE 45 5  #pmos
MODEL 902
PROP   0.5u 0.05u MP                                                                                                                               
REC(31,5,19,15,r)
VIS 0
PIN(50,0,0.000,0.000)s
PIN(30,10,0.000,0.000)g
PIN(50,20,0.003,0.005)d
LIG(30,10,36,10)
LIG(38,10,38,10)
LIG(40,16,40,4)
LIG(42,16,42,4)
LIG(50,4,42,4)
LIG(50,0,50,4)
LIG(50,16,42,16)
LIG(50,20,50,16)
VLG pmos pmos(drain,source,gate);
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
SYM  #vdd
BB(50,-20,60,-10)
TITLE 53 -14  #vdd
MODEL 1
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(55,-10,0.000,0.000)vdd
LIG(55,-10,55,-15)
LIG(55,-15,50,-15)
LIG(50,-15,55,-20)
LIG(55,-20,60,-15)
LIG(60,-15,55,-15)
FSYM
SYM  #nmos
BB(35,30,55,50)
TITLE 50 35  #nmos
MODEL 901
PROP   0.3u 0.05u MN                                                                                                                               
REC(36,35,19,15,r)
VIS 0
PIN(55,50,0.000,0.000)s
PIN(35,40,0.000,0.000)g
PIN(55,30,0.003,0.005)d
LIG(45,40,35,40)
LIG(45,46,45,34)
LIG(47,46,47,34)
LIG(55,34,47,34)
LIG(55,30,55,34)
LIG(55,46,47,46)
LIG(55,50,55,46)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(35,55,55,75)
TITLE 50 60  #nmos
MODEL 901
PROP   0.3u 0.05u MN                                                                                                                               
REC(36,60,19,15,r)
VIS 0
PIN(55,75,0.000,0.000)s
PIN(35,65,0.000,0.000)g
PIN(55,55,0.003,0.002)d
LIG(45,65,35,65)
LIG(45,71,45,59)
LIG(47,71,47,59)
LIG(55,59,47,59)
LIG(55,55,55,59)
LIG(55,71,47,71)
LIG(55,75,55,71)
VLG nmos nmos(drain,source,gate);
FSYM
CNC(55 0)
CNC(55 20)
CNC(55 25)
LIG(-5,-25,-5,65)
LIG(55,-10,55,0)
LIG(50,0,55,0)
LIG(55,0,60,0)
LIG(-5,-25,-5,65)
LIG(-5,-25,-5,65)
LIG(50,20,55,20)
LIG(55,20,60,20)
LIG(55,50,55,55)
LIG(20,10,20,40)
LIG(55,30,55,25)
LIG(55,25,55,20)
LIG(35,65,-5,65)
LIG(55,25,95,25)
LIG(55,75,55,80)
LIG(30,10,20,10)
LIG(35,40,20,40)
LIG(80,-25,-5,-25)
LIG(80,10,80,-25)
LIG(-5,-25,-5,65)
LIG(-5,-25,-5,65)
LIG(-5,-25,-5,65)
FFIG D:\4-2\VLSI Lab\Nand Gate.sch
