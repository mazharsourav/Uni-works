DSCH 3.5
VERSION 2/9/2026 10:13:14 PM
BB(-64,-35,89,100)
SYM  #button
BB(-64,51,-55,59)
TITLE -60 55  #button2
MODEL 59
PROP                                                                                                                                    
REC(-63,52,6,6,r)
VIS 1
PIN(-55,55,0.000,0.000)in2
LIG(-56,55,-55,55)
LIG(-64,59,-64,51)
LIG(-56,59,-64,59)
LIG(-56,51,-56,59)
LIG(-64,51,-56,51)
LIG(-63,58,-63,52)
LIG(-57,58,-63,58)
LIG(-57,52,-57,58)
LIG(-63,52,-57,52)
FSYM
SYM  #pmos
BB(30,-15,50,5)
TITLE 45 -10  #pmos
MODEL 902
PROP   0.5u 0.05u MP                                                                                                                               
REC(31,-10,19,15,r)
VIS 0
PIN(50,-15,0.000,0.000)s
PIN(30,-5,0.000,0.000)g
PIN(50,5,0.003,0.002)d
LIG(30,-5,36,-5)
LIG(38,-5,38,-5)
LIG(40,1,40,-11)
LIG(42,1,42,-11)
LIG(50,-11,42,-11)
LIG(50,-15,50,-11)
LIG(50,1,42,1)
LIG(50,5,50,1)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(30,15,50,35)
TITLE 45 20  #pmos
MODEL 902
PROP   0.5u 0.05u MP                                                                                                                               
REC(31,20,19,15,r)
VIS 0
PIN(50,15,0.000,0.000)s
PIN(30,25,0.000,0.000)g
PIN(50,35,0.003,0.005)d
LIG(30,25,36,25)
LIG(38,25,38,25)
LIG(40,31,40,19)
LIG(42,31,42,19)
LIG(50,19,42,19)
LIG(50,15,50,19)
LIG(50,31,42,31)
LIG(50,35,50,31)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #vdd
BB(45,-35,55,-25)
TITLE 48 -29  #vdd
MODEL 1
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(50,-25,0.000,0.000)vdd
LIG(50,-25,50,-30)
LIG(50,-30,45,-30)
LIG(45,-30,50,-35)
LIG(50,-35,55,-30)
LIG(55,-30,50,-30)
FSYM
SYM  #nmos
BB(25,50,45,70)
TITLE 40 55  #nmos
MODEL 901
PROP   0.3u 0.05u MN                                                                                                                               
REC(26,55,19,15,r)
VIS 0
PIN(45,70,0.000,0.000)s
PIN(25,60,0.000,0.000)g
PIN(45,50,0.003,0.005)d
LIG(35,60,25,60)
LIG(35,66,35,54)
LIG(37,66,37,54)
LIG(45,54,37,54)
LIG(45,50,45,54)
LIG(45,66,37,66)
LIG(45,70,45,66)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(55,50,75,70)
TITLE 60 55  #nmos
MODEL 901
PROP   0.3u 0.05u MN                                                                                                                               
REC(55,55,19,15,r)
VIS 0
PIN(55,70,0.000,0.000)s
PIN(75,60,0.000,0.000)g
PIN(55,50,0.003,0.005)d
LIG(65,60,75,60)
LIG(65,66,65,54)
LIG(63,66,63,54)
LIG(55,54,63,54)
LIG(55,50,55,54)
LIG(55,66,63,66)
LIG(55,70,55,66)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #light
BB(83,25,89,39)
TITLE 85 39  #light1
MODEL 49
PROP                                                                                                                                    
REC(84,26,4,4,r)
VIS 1
PIN(85,40,0.000,0.000)out1
LIG(88,31,88,26)
LIG(88,26,87,25)
LIG(84,26,84,31)
LIG(87,36,87,33)
LIG(86,36,89,36)
LIG(86,38,88,36)
LIG(87,38,89,36)
LIG(83,33,89,33)
LIG(85,33,85,40)
LIG(83,31,83,33)
LIG(89,31,83,31)
LIG(89,33,89,31)
LIG(85,25,84,26)
LIG(87,25,85,25)
FSYM
SYM  #vss
BB(45,82,55,90)
TITLE 49 87  #vss
MODEL 0
PROP                                                                                                                                    
REC(45,80,0,0,b)
VIS 0
PIN(50,80,0.000,0.000)vss
LIG(50,80,50,85)
LIG(45,85,55,85)
LIG(45,88,47,85)
LIG(47,88,49,85)
LIG(49,88,51,85)
LIG(51,88,53,85)
FSYM
SYM  #button
BB(-34,6,-25,14)
TITLE -30 10  #button1
MODEL 59
PROP                                                                                                                                    
REC(-33,7,6,6,r)
VIS 1
PIN(-25,10,0.000,0.000)in1
LIG(-26,10,-25,10)
LIG(-34,14,-34,6)
LIG(-26,14,-34,14)
LIG(-26,6,-26,14)
LIG(-34,6,-26,6)
LIG(-33,13,-33,7)
LIG(-27,13,-33,13)
LIG(-27,7,-27,13)
LIG(-33,7,-27,7)
FSYM
CNC(50 50)
CNC(50 40)
CNC(50 70)
CNC(-45 55)
CNC(5 10)
LIG(50,-25,50,-15)
LIG(50,5,50,15)
LIG(-45,55,-45,25)
LIG(-45,100,-45,55)
LIG(-55,55,-45,55)
LIG(45,50,50,50)
LIG(50,50,55,50)
LIG(50,40,85,40)
LIG(50,35,50,40)
LIG(50,40,50,50)
LIG(50,70,50,80)
LIG(45,70,50,70)
LIG(50,70,55,70)
LIG(5,10,5,-5)
LIG(25,60,5,60)
LIG(5,60,5,10)
LIG(5,10,-25,10)
LIG(5,-5,30,-5)
LIG(75,60,75,100)
LIG(75,100,-45,100)
LIG(30,25,-45,25)
FFIG D:\4-2\VLSI Lab\Nor Gate.sch
