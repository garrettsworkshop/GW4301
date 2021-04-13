EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+3V3 #PWR?
U 1 1 61CA9E4D
P 4500 4600
AR Path="/CF1C1573/61CA9E4D" Ref="#PWR?"  Part="1" 
AR Path="/61CA9E4D" Ref="#PWR?"  Part="1" 
AR Path="/61A7F340/61CA9E4D" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 4500 4450 50  0001 C CNN
F 1 "+3V3" H 4500 4750 50  0000 C CNN
F 2 "" H 4500 4600 50  0001 C CNN
F 3 "" H 4500 4600 50  0001 C CNN
	1    4500 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2700 4500 2800
$Comp
L power:+3V3 #PWR?
U 1 1 61CA9E55
P 4500 2700
AR Path="/CF1C1573/61CA9E55" Ref="#PWR?"  Part="1" 
AR Path="/61CA9E55" Ref="#PWR?"  Part="1" 
AR Path="/61A7F340/61CA9E55" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 4500 2550 50  0001 C CNN
F 1 "+3V3" H 4500 2850 50  0000 C CNN
F 2 "" H 4500 2700 50  0001 C CNN
F 3 "" H 4500 2700 50  0001 C CNN
	1    4500 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5000 4500 4900
$Comp
L power:GND #PWR?
U 1 1 61CA9E5D
P 4500 5000
AR Path="/61CA9E5D" Ref="#PWR?"  Part="1" 
AR Path="/61A7F340/61CA9E5D" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 4500 4750 50  0001 C CNN
F 1 "GND" H 4500 4850 50  0000 C CNN
F 2 "" H 4500 5000 50  0001 C CNN
F 3 "" H 4500 5000 50  0001 C CNN
	1    4500 5000
	1    0    0    -1  
$EndComp
NoConn ~ 5500 2700
NoConn ~ 5500 2800
NoConn ~ 5500 2900
NoConn ~ 5500 3000
NoConn ~ 5500 3100
NoConn ~ 5500 3200
NoConn ~ 5500 3300
NoConn ~ 5500 3400
Wire Wire Line
	5700 4300 5500 4300
$Comp
L power:GND #PWR?
U 1 1 61CA9E8F
P 4500 4200
AR Path="/61CA9E8F" Ref="#PWR?"  Part="1" 
AR Path="/61A7F340/61CA9E8F" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 4500 3950 50  0001 C CNN
F 1 "GND" V 4500 4100 50  0000 R CNN
F 2 "" H 4500 4200 50  0001 C CNN
F 3 "" H 4500 4200 50  0001 C CNN
	1    4500 4200
	0    1    1    0   
$EndComp
Text Label 4500 4100 2    50   ~ 0
A11
Wire Wire Line
	4500 4100 4300 4100
Wire Wire Line
	4300 4000 4500 4000
Text Label 4500 3700 2    50   ~ 0
A7
Text Label 4500 3600 2    50   ~ 0
A6
Text Label 4500 3500 2    50   ~ 0
A5
Text Label 4500 3400 2    50   ~ 0
A4
Text Label 4500 3800 2    50   ~ 0
A8
Text Label 4500 3900 2    50   ~ 0
A9
Wire Wire Line
	4500 3900 4300 3900
Wire Wire Line
	4300 3800 4500 3800
Wire Wire Line
	4500 3700 4300 3700
Wire Wire Line
	4300 3600 4500 3600
Wire Wire Line
	4500 3500 4300 3500
Wire Wire Line
	4300 3400 4500 3400
Text Label 4500 3000 2    50   ~ 0
A0
Text Label 4500 3100 2    50   ~ 0
A1
Text Label 4500 3200 2    50   ~ 0
A2
Text Label 4500 3300 2    50   ~ 0
A3
Wire Wire Line
	4500 3300 4300 3300
Wire Wire Line
	4500 3100 4300 3100
Wire Wire Line
	4300 3000 4500 3000
$Comp
L power:GND #PWR?
U 1 1 61CAE623
P 6800 4200
AR Path="/61CAE623" Ref="#PWR?"  Part="1" 
AR Path="/61A7F340/61CAE623" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 6800 3950 50  0001 C CNN
F 1 "GND" H 6800 4050 50  0000 C CNN
F 2 "" H 6800 4200 50  0001 C CNN
F 3 "" H 6800 4200 50  0001 C CNN
	1    6800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4300 5800 4400
Wire Wire Line
	5800 4400 5850 4400
$Comp
L power:+3V3 #PWR?
U 1 1 61CB1AF2
P 5850 4400
AR Path="/CF1C1573/61CB1AF2" Ref="#PWR?"  Part="1" 
AR Path="/61CB1AF2" Ref="#PWR?"  Part="1" 
AR Path="/61A7F340/61CB1AF2" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 5850 4250 50  0001 C CNN
F 1 "+3V3" H 5850 4550 50  0000 C CNN
F 2 "" H 5850 4400 50  0001 C CNN
F 3 "" H 5850 4400 50  0001 C CNN
	1    5850 4400
	1    0    0    -1  
$EndComp
Text HLabel 6800 3300 2    50   Input ~ 0
~R~W
Text HLabel 4500 4700 0    50   Input ~ 0
CLK
Connection ~ 4500 5000
Connection ~ 4500 2700
Wire Wire Line
	4300 3200 4500 3200
$Comp
L GW_RAM:SDRAM-16Mx16-TSOP2-54 U?
U 1 1 61CA9E63
P 5000 3700
AR Path="/61CA9E63" Ref="U?"  Part="1" 
AR Path="/61A7F340/61CA9E63" Ref="U1"  Part="1" 
F 0 "U1" H 5000 4850 50  0000 C CNN
F 1 "W9864G6KH" V 5000 3700 50  0000 C CNN
F 2 "stdpads:TSOP-II-54_22.2x10.16mm_P0.8mm" H 5000 2050 50  0001 C CIN
F 3 "" H 5000 3450 50  0001 C CNN
	1    5000 3700
	1    0    0    -1  
$EndComp
Text HLabel 5500 4700 2    50   Input ~ 0
~CS~
Text HLabel 5500 4800 2    50   Input ~ 0
~WE~
Text HLabel 5500 4900 2    50   Input ~ 0
~CAS~
Text HLabel 5500 5000 2    50   Input ~ 0
~RAS~
Entry Wire Line
	4200 4100 4300 4000
Entry Wire Line
	4200 4200 4300 4100
Entry Wire Line
	4200 4400 4300 4300
Entry Wire Line
	4200 4500 4300 4400
Entry Wire Line
	4200 3900 4300 3800
Entry Wire Line
	4200 4000 4300 3900
Entry Wire Line
	4200 3700 4300 3600
Entry Wire Line
	4200 3800 4300 3700
Entry Wire Line
	4200 3500 4300 3400
Entry Wire Line
	4200 3600 4300 3500
Entry Wire Line
	4200 3300 4300 3200
Entry Wire Line
	4200 3400 4300 3300
Entry Wire Line
	4200 3100 4300 3000
Entry Wire Line
	4200 3200 4300 3100
Wire Bus Line
	4200 3100 4100 3100
Wire Bus Line
	4200 4500 4200 4400
Wire Bus Line
	4200 4400 4100 4400
Text HLabel 4100 4400 0    50   Input ~ 0
BA[1..0]
Text Label 4500 4000 2    50   ~ 0
A10
Text Label 4500 4400 2    50   ~ 0
BA1
Wire Wire Line
	4500 4400 4300 4400
Text Label 4500 4300 2    50   ~ 0
BA0
Wire Wire Line
	4300 4300 4500 4300
Text HLabel 4100 3100 0    50   Input ~ 0
A[11..0]
Text HLabel 5500 4400 2    50   Input ~ 0
DQM
Text Label 5600 3500 0    50   ~ 0
RD7
Wire Wire Line
	6000 4200 5500 4200
Wire Wire Line
	6000 3500 5500 3500
Wire Wire Line
	6000 3600 5500 3600
Wire Wire Line
	6000 3700 5500 3700
Wire Wire Line
	6000 3800 5500 3800
Wire Wire Line
	6000 3900 5500 3900
Wire Wire Line
	6000 4000 5500 4000
Wire Wire Line
	6000 4100 5500 4100
Text Label 5600 4200 0    50   ~ 0
RD0
Text Label 5600 4100 0    50   ~ 0
RD1
Text Label 5600 4000 0    50   ~ 0
RD2
Text Label 5600 3900 0    50   ~ 0
RD3
Text Label 5600 3800 0    50   ~ 0
RD4
Text Label 5600 3700 0    50   ~ 0
RD5
Text Label 5600 3600 0    50   ~ 0
RD6
Text HLabel 7200 3500 2    50   BiDi ~ 0
D[7..0]
Wire Bus Line
	7100 3500 7200 3500
Entry Wire Line
	7000 4100 7100 4200
Entry Wire Line
	7000 4000 7100 4100
Entry Wire Line
	7000 3900 7100 4000
Entry Wire Line
	7000 3800 7100 3900
Entry Wire Line
	7000 3700 7100 3800
Entry Wire Line
	7000 3600 7100 3700
Entry Wire Line
	7000 3500 7100 3600
Entry Wire Line
	7000 3400 7100 3500
Text HLabel 6000 3400 0    50   Input ~ 0
~IO1~
Wire Wire Line
	6800 4100 7000 4100
Wire Wire Line
	6800 4000 7000 4000
Wire Wire Line
	6800 3900 7000 3900
Wire Wire Line
	6800 3800 7000 3800
Wire Wire Line
	6800 3700 7000 3700
Wire Wire Line
	6800 3600 7000 3600
Wire Wire Line
	6800 3500 7000 3500
Wire Wire Line
	6800 3400 7000 3400
Text Label 7000 3400 2    50   ~ 0
D7
Text Label 7000 4100 2    50   ~ 0
D0
Text Label 7000 4000 2    50   ~ 0
D1
Text Label 7000 3900 2    50   ~ 0
D2
Text Label 7000 3800 2    50   ~ 0
D3
Text Label 7000 3700 2    50   ~ 0
D4
Text Label 7000 3600 2    50   ~ 0
D5
Text Label 7000 3500 2    50   ~ 0
D6
$Comp
L power:+3V3 #PWR?
U 1 1 61CB62C0
P 6000 3300
AR Path="/CF1C1573/61CB62C0" Ref="#PWR?"  Part="1" 
AR Path="/61CB62C0" Ref="#PWR?"  Part="1" 
AR Path="/61A7F340/61CB62C0" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 6000 3150 50  0001 C CNN
F 1 "+3V3" H 6000 3450 50  0000 C CNN
F 2 "" H 6000 3300 50  0001 C CNN
F 3 "" H 6000 3300 50  0001 C CNN
	1    6000 3300
	1    0    0    -1  
$EndComp
$Comp
L GW_Logic:74245 U2
U 1 1 61CAB158
P 6400 3750
F 0 "U2" H 6400 4350 50  0000 C CNN
F 1 "74AHCT245PW" V 6400 3750 50  0000 C CNN
F 2 "stdpads:TSSOP-20_4.4x6.5mm_P0.65mm" H 6400 3100 50  0001 C TNN
F 3 "" H 6400 3850 60  0001 C CNN
	1    6400 3750
	-1   0    0    -1  
$EndComp
Wire Bus Line
	7100 3500 7100 4200
Wire Bus Line
	4200 3100 4200 4200
$EndSCHEMATC
