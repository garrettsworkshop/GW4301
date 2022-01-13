EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 5
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
L GW_Logic:74257 U?
U 1 1 6061ED64
P 5100 5100
AR Path="/CF1C1573/6061ED64" Ref="U?"  Part="1" 
AR Path="/6061ED64" Ref="U?"  Part="1" 
AR Path="/6060D166/6061ED64" Ref="U7"  Part="1" 
F 0 "U7" H 5100 5600 50  0000 C CNN
F 1 "74LVC257" V 5100 5100 50  0000 C CNN
F 2 "stdpads:TSSOP-16_4.4x5mm_P0.65mm" H 5100 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 5100 4850 50  0001 C CNN
	1    5100 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 6061ED6A
P 5500 4750
AR Path="/CF1C1573/6061ED6A" Ref="#PWR?"  Part="1" 
AR Path="/6061ED6A" Ref="#PWR?"  Part="1" 
AR Path="/6060D166/6061ED6A" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 5500 4600 50  0001 C CNN
F 1 "+3V3" H 5500 4900 50  0000 C CNN
F 2 "" H 5500 4750 50  0001 C CNN
F 3 "" H 5500 4750 50  0001 C CNN
	1    5500 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5450 5500 5350
$Comp
L power:GND #PWR?
U 1 1 6061ED71
P 5500 5450
AR Path="/CF1C1573/6061ED71" Ref="#PWR?"  Part="1" 
AR Path="/6061ED71" Ref="#PWR?"  Part="1" 
AR Path="/6060D166/6061ED71" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 5500 5200 50  0001 C CNN
F 1 "GND" H 5500 5300 50  0000 C CNN
F 2 "" H 5500 5450 50  0001 C CNN
F 3 "" H 5500 5450 50  0001 C CNN
	1    5500 5450
	1    0    0    -1  
$EndComp
Connection ~ 5500 5450
Text Label 4600 4050 0    50   ~ 0
A0
Text Label 4600 3850 0    50   ~ 0
A1
Text Label 4600 4250 0    50   ~ 0
A2
Text Label 4600 3650 0    50   ~ 0
A3
Text Label 4600 5050 0    50   ~ 0
A4
Text Label 4600 5450 0    50   ~ 0
A5
Text Label 4600 5250 0    50   ~ 0
A6
Text Label 4600 4850 0    50   ~ 0
A7
Text Label 4600 5350 0    50   ~ 0
B0
Text Label 4600 5150 0    50   ~ 0
B1
Text Label 4600 4950 0    50   ~ 0
B2
Text Label 4600 4750 0    50   ~ 0
B3
Text Label 4600 4150 0    50   ~ 0
B4
Text Label 4600 3950 0    50   ~ 0
B5
Text Label 4600 3750 0    50   ~ 0
B6
Text Label 4600 3550 0    50   ~ 0
B7
Text Label 4300 3250 0    50   ~ 0
W0
Text Label 4300 3150 0    50   ~ 0
W1
Text Label 4300 3050 0    50   ~ 0
W2
Text Label 4300 2950 0    50   ~ 0
W3
Text Label 4300 2850 0    50   ~ 0
W4
Text Label 4300 2750 0    50   ~ 0
W5
Wire Wire Line
	4600 5150 4700 5150
Wire Wire Line
	4600 3850 4700 3850
Wire Wire Line
	4600 5350 4700 5350
Wire Wire Line
	4600 4050 4700 4050
Wire Wire Line
	4600 4750 4700 4750
Wire Wire Line
	4600 3650 4700 3650
Wire Wire Line
	4600 4950 4700 4950
Wire Wire Line
	4600 4250 4700 4250
Wire Wire Line
	5700 5250 5500 5250
Connection ~ 5700 4550
Wire Wire Line
	5700 4550 4100 4550
Wire Wire Line
	5700 4550 5700 5250
Wire Wire Line
	5700 3250 5700 3550
Wire Wire Line
	5800 3150 5800 3450
Wire Wire Line
	5900 3250 5900 3350
Wire Wire Line
	5700 4050 5700 4550
Wire Wire Line
	5800 3850 5500 3850
Connection ~ 5500 4250
$Comp
L power:GND #PWR?
U 1 1 6061EDBF
P 5500 4250
AR Path="/CF1C1573/6061EDBF" Ref="#PWR?"  Part="1" 
AR Path="/6061EDBF" Ref="#PWR?"  Part="1" 
AR Path="/6060D166/6061EDBF" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 5500 4000 50  0001 C CNN
F 1 "GND" H 5500 4100 50  0000 C CNN
F 2 "" H 5500 4250 50  0001 C CNN
F 3 "" H 5500 4250 50  0001 C CNN
	1    5500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5250 4700 5250
Wire Wire Line
	4600 3750 4700 3750
Wire Wire Line
	4600 4850 4700 4850
Wire Wire Line
	4600 3550 4700 3550
$Comp
L power:+3V3 #PWR?
U 1 1 6061EDC9
P 5500 3550
AR Path="/CF1C1573/6061EDC9" Ref="#PWR?"  Part="1" 
AR Path="/6061EDC9" Ref="#PWR?"  Part="1" 
AR Path="/6060D166/6061EDC9" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 5500 3400 50  0001 C CNN
F 1 "+3V3" H 5500 3700 50  0000 C CNN
F 2 "" H 5500 3550 50  0001 C CNN
F 3 "" H 5500 3550 50  0001 C CNN
	1    5500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4150 5500 4250
Wire Wire Line
	4600 4150 4700 4150
Wire Wire Line
	4600 5050 4700 5050
Wire Wire Line
	4600 3950 4700 3950
Wire Wire Line
	4600 5450 4700 5450
Wire Wire Line
	5500 4050 5700 4050
$Comp
L GW_Logic:74257 U?
U 1 1 6061EDD5
P 5100 3900
AR Path="/CF1C1573/6061EDD5" Ref="U?"  Part="1" 
AR Path="/6061EDD5" Ref="U?"  Part="1" 
AR Path="/6060D166/6061EDD5" Ref="U6"  Part="1" 
F 0 "U6" H 5100 4400 50  0000 C CNN
F 1 "74LVC257" V 5100 3900 50  0000 C CNN
F 2 "stdpads:TSSOP-16_4.4x5mm_P0.65mm" H 5100 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 5100 3650 50  0001 C CNN
	1    5100 3900
	1    0    0    -1  
$EndComp
Text HLabel 4100 2850 0    50   Input ~ 0
W[5..0]
Text HLabel 4100 4550 0    50   Input ~ 0
Col~Row~
Text HLabel 4100 4850 0    50   Input ~ 0
B[7..0]
Entry Wire Line
	4200 4850 4300 4750
Entry Wire Line
	4200 4950 4300 4850
Entry Wire Line
	4200 5050 4300 4950
Entry Wire Line
	4200 5150 4300 5050
Entry Wire Line
	4200 5250 4300 5150
Entry Wire Line
	4200 5350 4300 5250
Entry Wire Line
	4200 5450 4300 5350
Entry Wire Line
	4200 5550 4300 5450
Text HLabel 4100 3650 0    50   Input ~ 0
A[7..0]
Entry Wire Line
	4200 3650 4300 3550
Entry Wire Line
	4200 3750 4300 3650
Entry Wire Line
	4200 3850 4300 3750
Entry Wire Line
	4200 3950 4300 3850
Entry Wire Line
	4200 4050 4300 3950
Entry Wire Line
	4200 4150 4300 4050
Entry Wire Line
	4200 4250 4300 4150
Entry Wire Line
	4200 4350 4300 4250
Text Label 4400 3850 2    50   ~ 0
A4
Text Label 4400 3750 2    50   ~ 0
A5
Text Label 4400 3650 2    50   ~ 0
A6
Text Label 4400 3550 2    50   ~ 0
A7
Text Label 4400 5050 2    50   ~ 0
B4
Text Label 4400 4950 2    50   ~ 0
B5
Text Label 4400 4850 2    50   ~ 0
B6
Text Label 4400 4750 2    50   ~ 0
B7
Wire Wire Line
	4400 3650 4300 3650
Wire Wire Line
	4400 4850 4300 4850
Wire Wire Line
	4400 3550 4300 3550
Wire Wire Line
	4400 4750 4300 4750
Wire Wire Line
	4400 5050 4300 5050
Wire Wire Line
	4400 3850 4300 3850
Wire Wire Line
	4400 4950 4300 4950
Wire Wire Line
	4400 3750 4300 3750
Text Label 4400 5150 2    50   ~ 0
B3
Wire Wire Line
	4400 5150 4300 5150
Text Label 4400 5250 2    50   ~ 0
B2
Wire Wire Line
	4400 5250 4300 5250
Text Label 4400 5350 2    50   ~ 0
B1
Wire Wire Line
	4400 5350 4300 5350
Text Label 4400 5450 2    50   ~ 0
B0
Wire Wire Line
	4400 5450 4300 5450
Text Label 4400 4250 2    50   ~ 0
A0
Wire Wire Line
	4400 4250 4300 4250
Text Label 4400 4150 2    50   ~ 0
A1
Wire Wire Line
	4400 4150 4300 4150
Text Label 4400 4050 2    50   ~ 0
A2
Wire Wire Line
	4400 4050 4300 4050
Text Label 4400 3950 2    50   ~ 0
A3
Wire Wire Line
	4400 3950 4300 3950
Wire Wire Line
	5800 4450 4100 4450
Text HLabel 4100 4450 0    50   Input ~ 0
Mode
Wire Bus Line
	4100 4850 4200 4850
Wire Bus Line
	4100 3650 4200 3650
Entry Wire Line
	4200 2950 4300 2850
Entry Wire Line
	4200 3050 4300 2950
Entry Wire Line
	4200 2850 4300 2750
Entry Wire Line
	4200 3150 4300 3050
Entry Wire Line
	4200 3250 4300 3150
Entry Wire Line
	4200 3350 4300 3250
Wire Bus Line
	4100 2850 4200 2850
Wire Wire Line
	4300 2750 7300 2750
Wire Wire Line
	4300 2850 7300 2850
Wire Wire Line
	4300 3050 5900 3050
Wire Wire Line
	4300 3150 5800 3150
Wire Wire Line
	4300 3250 5700 3250
Wire Wire Line
	4250 3350 5900 3350
Text HLabel 7500 2850 2    50   Input ~ 0
RBA[1..0]
Entry Wire Line
	7400 2950 7300 2850
Entry Wire Line
	7400 2850 7300 2750
Wire Bus Line
	7500 2850 7400 2850
Wire Bus Line
	7400 2850 7400 2950
Wire Bus Line
	7500 3050 7400 3050
Text HLabel 7500 3050 2    50   Input ~ 0
RA[11..0]
Wire Wire Line
	4250 3400 4250 3350
Wire Wire Line
	4150 3400 4250 3400
Wire Wire Line
	4150 3350 4150 3400
Wire Wire Line
	4100 3350 4150 3350
Text HLabel 4100 3350 0    50   Input ~ 0
All
Wire Wire Line
	5800 3850 5800 4050
Wire Wire Line
	5800 4050 5900 4050
Wire Wire Line
	5900 4250 5800 4250
Wire Wire Line
	5800 4250 5800 4450
Text Notes 7500 3950 0    50   ~ 0
U16D forces SDRAM A10 high as\npart of the precharge all command.\n\nU16C forces SDRAM A5 high as\npart of the mode register.
Wire Wire Line
	7300 5150 5500 5150
Wire Wire Line
	5500 5050 7300 5050
Wire Wire Line
	5500 4850 7300 4850
Wire Wire Line
	7300 4950 5500 4950
Wire Wire Line
	7300 3950 5500 3950
Wire Wire Line
	5500 3750 7300 3750
Wire Wire Line
	7300 3850 7100 3850
Wire Wire Line
	5500 3650 7300 3650
Wire Wire Line
	7300 3450 5800 3450
Wire Wire Line
	5700 3550 7300 3550
Wire Wire Line
	4300 2950 7300 2950
Entry Wire Line
	7400 5250 7300 5150
Entry Wire Line
	7400 5150 7300 5050
Entry Wire Line
	7400 4950 7300 4850
Entry Wire Line
	7400 5050 7300 4950
Entry Wire Line
	7400 4050 7300 3950
Entry Wire Line
	7400 3850 7300 3750
Entry Wire Line
	7400 3950 7300 3850
Entry Wire Line
	7400 3750 7300 3650
Entry Wire Line
	7400 3550 7300 3450
Entry Wire Line
	7400 3650 7300 3550
Entry Wire Line
	7400 3050 7300 2950
Entry Wire Line
	7400 3250 7300 3150
Text Label 7300 3850 2    50   ~ 0
RA5
Text Label 7300 2750 2    50   ~ 0
RBA1
Text Label 7300 2850 2    50   ~ 0
RBA0
Text Label 7300 2950 2    50   ~ 0
RA11
Text Label 7300 3150 2    50   ~ 0
RA10
Text Label 7300 3450 2    50   ~ 0
RA9
Text Label 7300 3550 2    50   ~ 0
RA8
Text Label 7300 3950 2    50   ~ 0
RA4
Text Label 7300 3750 2    50   ~ 0
RA6
Text Label 7300 3650 2    50   ~ 0
RA7
Text Label 7300 4850 2    50   ~ 0
RA3
Text Label 7300 4950 2    50   ~ 0
RA2
Text Label 7300 5050 2    50   ~ 0
RA1
Text Label 7300 5150 2    50   ~ 0
RA0
$Comp
L 74xx:74LS02 U?
U 3 1 64E55E47
P 6200 4150
AR Path="/606ED367/64E55E47" Ref="U?"  Part="1" 
AR Path="/64E55E47" Ref="U?"  Part="1" 
AR Path="/6060D166/64E55E47" Ref="U8"  Part="3" 
F 0 "U8" H 6200 4150 50  0000 C CNN
F 1 "74LVC02" H 6200 4350 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 6200 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6200 4150 50  0001 C CNN
	3    6200 4150
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS02 U?
U 4 1 64E60EEF
P 6800 4150
AR Path="/606ED367/64E60EEF" Ref="U?"  Part="1" 
AR Path="/64E60EEF" Ref="U?"  Part="1" 
AR Path="/6060D166/64E60EEF" Ref="U8"  Part="4" 
F 0 "U8" H 6800 4150 50  0000 C CNN
F 1 "74LVC02" H 6800 4350 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 6800 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6800 4150 50  0001 C CNN
	4    6800 4150
	1    0    0    1   
$EndComp
Wire Wire Line
	7100 4150 7100 3850
Wire Wire Line
	6500 4050 6500 4150
Connection ~ 6500 4150
Wire Wire Line
	6500 4150 6500 4250
$Comp
L 74xx:74LS02 U?
U 1 1 64E69A1A
P 6200 3150
AR Path="/606ED367/64E69A1A" Ref="U?"  Part="1" 
AR Path="/64E69A1A" Ref="U?"  Part="1" 
AR Path="/6060D166/64E69A1A" Ref="U8"  Part="1" 
F 0 "U8" H 6200 3150 50  0000 C CNN
F 1 "74LVC02" H 6200 3350 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 6200 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6200 3150 50  0001 C CNN
	1    6200 3150
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS02 U?
U 2 1 64E6CFE8
P 6800 3150
AR Path="/606ED367/64E6CFE8" Ref="U?"  Part="1" 
AR Path="/64E6CFE8" Ref="U?"  Part="1" 
AR Path="/6060D166/64E6CFE8" Ref="U8"  Part="2" 
F 0 "U8" H 6800 3150 50  0000 C CNN
F 1 "74LVC02" H 6800 3350 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 6800 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6800 3150 50  0001 C CNN
	2    6800 3150
	1    0    0    1   
$EndComp
Wire Wire Line
	7300 3150 7100 3150
Wire Wire Line
	6500 3050 6500 3150
Wire Bus Line
	4200 2850 4200 3350
Wire Bus Line
	4200 4850 4200 5550
Wire Bus Line
	4200 3650 4200 4350
Wire Bus Line
	7400 3050 7400 5250
Connection ~ 6500 3150
Wire Wire Line
	6500 3150 6500 3250
$EndSCHEMATC
