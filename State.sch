EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 5 6
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
U 1 1 605F545F
P 3750 5750
AR Path="/CF1C1573/605F545F" Ref="#PWR?"  Part="1" 
AR Path="/605F545F" Ref="#PWR?"  Part="1" 
AR Path="/605D20C2/605F545F" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 3750 5600 50  0001 C CNN
F 1 "+3V3" H 3750 5900 50  0000 C CNN
F 2 "" H 3750 5750 50  0001 C CNN
F 3 "" H 3750 5750 50  0001 C CNN
	1    3750 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605F5465
P 3750 6650
AR Path="/CF1C1573/605F5465" Ref="#PWR?"  Part="1" 
AR Path="/605F5465" Ref="#PWR?"  Part="1" 
AR Path="/605D20C2/605F5465" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 3750 6400 50  0001 C CNN
F 1 "GND" H 3750 6500 50  0000 C CNN
F 2 "" H 3750 6650 50  0001 C CNN
F 3 "" H 3750 6650 50  0001 C CNN
	1    3750 6650
	1    0    0    -1  
$EndComp
$Comp
L GW_Logic:74273 U?
U 1 1 605F546F
P 3350 6200
AR Path="/CF1C1573/605F546F" Ref="U?"  Part="1" 
AR Path="/605F546F" Ref="U?"  Part="1" 
AR Path="/605D20C2/605F546F" Ref="U11"  Part="1" 
F 0 "U11" H 3350 6800 50  0000 C CNN
F 1 "74LVC273" V 3350 6200 50  0000 C CNN
F 2 "stdpads:TSSOP-20_4.4x6.5mm_P0.65mm" H 3350 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 3350 6150 50  0001 C CNN
	1    3350 6200
	1    0    0    -1  
$EndComp
Text Label 3750 5950 0    50   ~ 0
Ref1
Text Label 3750 6050 0    50   ~ 0
Ref2
Text Label 3750 6150 0    50   ~ 0
Ref3
Text Label 3750 6250 0    50   ~ 0
Ref4
Text Label 3750 6350 0    50   ~ 0
Ref5
Text Label 3750 6450 0    50   ~ 0
Ref6
Text Label 3750 6550 0    50   ~ 0
Ref7
$Comp
L power:+3V3 #PWR?
U 1 1 605F54B3
P 2950 5750
AR Path="/CF1C1573/605F54B3" Ref="#PWR?"  Part="1" 
AR Path="/605F54B3" Ref="#PWR?"  Part="1" 
AR Path="/605D20C2/605F54B3" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 2950 5600 50  0001 C CNN
F 1 "+3V3" H 2950 5900 50  0000 C CNN
F 2 "" H 2950 5750 50  0001 C CNN
F 3 "" H 2950 5750 50  0001 C CNN
	1    2950 5750
	1    0    0    -1  
$EndComp
Text Label 2950 5950 2    50   ~ 0
Ref1
Text Label 2950 6050 2    50   ~ 0
Ref2
Text Label 2950 6150 2    50   ~ 0
Ref3
Text Label 2950 6250 2    50   ~ 0
Ref4
Text Label 2950 6350 2    50   ~ 0
Ref5
Text Label 2950 6450 2    50   ~ 0
Ref6
Text HLabel 3750 3750 2    50   Output ~ 0
PHI2e6
Text HLabel 2950 3650 0    50   Output ~ 0
PHI2e5
Text HLabel 3750 5850 2    50   Output ~ 0
Ref0
Text HLabel 2950 5850 0    50   Output ~ 0
Ref0
Text HLabel 2950 3950 0    50   Input ~ 0
DotClk
Text HLabel 2950 6650 0    50   Output ~ 0
~BOD~r
$Comp
L GW_Logic:74273 U?
U 1 1 614F4FCB
P 3350 3600
AR Path="/CF1C1573/614F4FCB" Ref="U?"  Part="1" 
AR Path="/614F4FCB" Ref="U?"  Part="1" 
AR Path="/605D20C2/614F4FCB" Ref="U9"  Part="1" 
F 0 "U9" H 3350 4200 50  0000 C CNN
F 1 "74LVC273" V 3350 3600 50  0000 C CNN
F 2 "stdpads:TSSOP-20_4.4x6.5mm_P0.65mm" H 3350 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 3350 3550 50  0001 C CNN
	1    3350 3600
	1    0    0    -1  
$EndComp
Text Label 2950 3150 2    50   ~ 0
~BOD~
Text Label 3750 3250 0    50   ~ 0
~BOD~r0
Text Label 2950 3250 2    50   ~ 0
~BOD~r0
Text HLabel 3800 3300 2    50   Output ~ 0
~BOD~r
Text HLabel 3750 3550 2    50   Output ~ 0
~RST~r
Text Label 2950 3450 2    50   ~ 0
~RST~r0
Text Label 3750 3450 0    50   ~ 0
~RST~r0
Text HLabel 3750 3850 2    50   Output ~ 0
PHI2e7
Text HLabel 3750 3950 2    50   Output ~ 0
PHI2e8
Text HLabel 2950 3750 0    50   Output ~ 0
PHI2e6
Text HLabel 2950 3850 0    50   Output ~ 0
PHI2e7
$Comp
L power:+3V3 #PWR?
U 1 1 6190D288
P 3750 3150
AR Path="/CF1C1573/6190D288" Ref="#PWR?"  Part="1" 
AR Path="/6190D288" Ref="#PWR?"  Part="1" 
AR Path="/605D20C2/6190D288" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 3750 3000 50  0001 C CNN
F 1 "+3V3" H 3750 3300 50  0000 C CNN
F 2 "" H 3750 3150 50  0001 C CNN
F 3 "" H 3750 3150 50  0001 C CNN
	1    3750 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6190DB67
P 3750 4050
AR Path="/CF1C1573/6190DB67" Ref="#PWR?"  Part="1" 
AR Path="/6190DB67" Ref="#PWR?"  Part="1" 
AR Path="/605D20C2/6190DB67" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 3750 3800 50  0001 C CNN
F 1 "GND" H 3750 3900 50  0000 C CNN
F 2 "" H 3750 4050 50  0001 C CNN
F 3 "" H 3750 4050 50  0001 C CNN
	1    3750 4050
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 6190E021
P 2450 4050
AR Path="/CF1C1573/6190E021" Ref="#PWR?"  Part="1" 
AR Path="/6190E021" Ref="#PWR?"  Part="1" 
AR Path="/605D20C2/6190E021" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 2450 3900 50  0001 C CNN
F 1 "+3V3" H 2450 4200 50  0000 C CNN
F 2 "" H 2450 4050 50  0001 C CNN
F 3 "" H 2450 4050 50  0001 C CNN
	1    2450 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4050 2950 4050
Text HLabel 2950 3350 0    50   BiDi ~ 0
~RST~
Text HLabel 4300 3350 2    50   BiDi ~ 0
~RST~
Wire Wire Line
	3750 3350 4100 3350
Wire Wire Line
	3800 3300 3750 3300
Wire Wire Line
	3750 3300 3750 3350
Connection ~ 3750 3350
Wire Wire Line
	2950 3150 2750 3150
$Comp
L power:GND #PWR?
U 1 1 61D82AF9
P 2950 3550
AR Path="/CF1C1573/61D82AF9" Ref="#PWR?"  Part="1" 
AR Path="/61D82AF9" Ref="#PWR?"  Part="1" 
AR Path="/605D20C2/61D82AF9" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 2950 3300 50  0001 C CNN
F 1 "GND" V 2950 3450 50  0000 R CNN
F 2 "" H 2950 3550 50  0001 C CNN
F 3 "" H 2950 3550 50  0001 C CNN
	1    2950 3550
	0    1    -1   0   
$EndComp
NoConn ~ 3750 3650
$Comp
L GW_Logic:74273 U?
U 1 1 605F5441
P 3350 4900
AR Path="/CF1C1573/605F5441" Ref="U?"  Part="1" 
AR Path="/605F5441" Ref="U?"  Part="1" 
AR Path="/605D20C2/605F5441" Ref="U10"  Part="1" 
F 0 "U10" H 3350 5500 50  0000 C CNN
F 1 "74LVC273" V 3350 4900 50  0000 C CNN
F 2 "stdpads:TSSOP-20_4.4x6.5mm_P0.65mm" H 3350 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 3350 4850 50  0001 C CNN
	1    3350 4900
	1    0    0    -1  
$EndComp
Text HLabel 2950 4450 0    50   Input ~ 0
PHI2
Wire Wire Line
	2750 5150 2950 5150
Text HLabel 3750 5250 2    50   Output ~ 0
Ref8
$Comp
L 74xx:74LS02 U?
U 2 1 607D33CD
P 1850 4750
AR Path="/CF1C1573/607D33CD" Ref="U?"  Part="1" 
AR Path="/607D33CD" Ref="U?"  Part="1" 
AR Path="/605D20C2/607D33CD" Ref="U12"  Part="2" 
F 0 "U12" H 1850 4750 50  0000 C CNN
F 1 "74LVC02" H 1850 4550 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 1850 4750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 1850 4750 50  0001 C CNN
	2    1850 4750
	1    0    0    -1  
$EndComp
Text HLabel 2950 5350 0    50   Output ~ 0
~BOD~r
Text HLabel 2950 5250 0    50   Input ~ 0
DotClk
Text HLabel 2950 5050 0    50   Output ~ 0
PHI2e4
Text HLabel 2950 4950 0    50   Output ~ 0
PHI2e3
Text HLabel 2950 4850 0    50   Output ~ 0
PHI2e2
Text HLabel 2950 4750 0    50   Output ~ 0
PHI2e1
Text HLabel 3750 5150 2    50   Output ~ 0
PHI2e5
Text HLabel 3750 5050 2    50   Output ~ 0
PHI2e4
Text HLabel 3750 4950 2    50   Output ~ 0
PHI2e3
Text HLabel 3750 4850 2    50   Output ~ 0
PHI2e2
Text HLabel 3750 4750 2    50   Output ~ 0
PHI2e1
$Comp
L 74xx:74LS02 U?
U 1 2 605F54E0
P 2450 4650
AR Path="/CF1C1573/605F54E0" Ref="U?"  Part="1" 
AR Path="/605F54E0" Ref="U?"  Part="1" 
AR Path="/605D20C2/605F54E0" Ref="U12"  Part="1" 
F 0 "U12" H 2450 4650 50  0000 C CNN
F 1 "74LVC02" H 2450 4450 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 2450 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 2450 4650 50  0001 C CNN
	1    2450 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4650 2950 4650
Wire Wire Line
	1250 4550 2150 4550
Text Label 2750 5150 0    50   ~ 0
Ref7
Wire Wire Line
	2650 4550 2950 4550
Text Label 3750 4650 0    50   ~ 0
PHI2r2
Text Label 2650 4550 0    50   ~ 0
PHI2r1
Text Label 3750 4550 0    50   ~ 0
PHI2r1
Text Label 2950 4650 2    50   ~ 0
PHI2e
Text Label 1250 4550 0    50   ~ 0
PHI2r1
$Comp
L power:GND #PWR?
U 1 1 605F544E
P 3750 5350
AR Path="/CF1C1573/605F544E" Ref="#PWR?"  Part="1" 
AR Path="/605F544E" Ref="#PWR?"  Part="1" 
AR Path="/605D20C2/605F544E" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 3750 5100 50  0001 C CNN
F 1 "GND" H 3750 5200 50  0000 C CNN
F 2 "" H 3750 5350 50  0001 C CNN
F 3 "" H 3750 5350 50  0001 C CNN
	1    3750 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 605F5448
P 3750 4450
AR Path="/CF1C1573/605F5448" Ref="#PWR?"  Part="1" 
AR Path="/605F5448" Ref="#PWR?"  Part="1" 
AR Path="/605D20C2/605F5448" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 3750 4300 50  0001 C CNN
F 1 "+3V3" H 3750 4600 50  0000 C CNN
F 2 "" H 3750 4450 50  0001 C CNN
F 3 "" H 3750 4450 50  0001 C CNN
	1    3750 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky_Small_ALT D1
U 1 1 606425D6
P 4200 3350
F 0 "D1" H 4200 3450 50  0000 C CNN
F 1 "1N5819" H 4200 3250 50  0000 C CNN
F 2 "stdpads:D_SOD-123" V 4200 3350 50  0001 C CNN
F 3 "~" V 4200 3350 50  0001 C CNN
	1    4200 3350
	1    0    0    -1  
$EndComp
Text Notes 4550 3700 0    50   ~ 0
We also double-synchronize the C64’s reset signal\nbefore feeding it to the geoRAM registers.
Text Notes 4550 4000 0    50   ~ 0
These bits are a continuation of the one-hot state \ncounter shift register which begins in U10
Text Notes 4550 4550 0    50   ~ 0
PHI2 is registered twice to gain setup time for the gates U12A and U12B.
Text Notes 4550 5150 0    50   ~ 0
The PHI2e[8..1] signals are an eight-state one-hot state counter\nwhich counts out the eight 8 MHz dot clock cycles\ncomprising one 1 MHz PHI cycle.\nThese bits are reset by the POR pulse so that none of PHI2e[8..1]\nare high until power is good.
Text Notes 4550 6300 0    50   ~ 0
The Ref[8…0] signals form another state counter which which is clocked\nat 1 MHz by the PHI1e8 state signal edge. The Ref[8…0] state counter\nwith all bits low and shifts a “1” into each successive bit at the beginning\nof each PHI1e8 state until all bits are high, where it remains until a power cycle.
Text Notes 4550 3450 0    50   ~ 0
The power-on reset signal ~BOD~ is double-synchronized to create ~BOD~r\nso as to “make synchronous” the asynchronous reset of U10 and U11.\nThe C64 reset signal is also kept low when ~BOD~r is low,\nalthogh the POR time is ~~47ms, less than that of the C64, so the C64’s\nPOR pulse on the ~RST~ line is not nominally extended.
Text Label 1250 4650 0    50   ~ 0
PHI2r2
Wire Wire Line
	1250 4650 1550 4650
Connection ~ 1550 4650
Wire Wire Line
	1550 4650 1550 4850
Text HLabel 2950 6550 0    50   Output ~ 0
PHI2e7
Text Notes 2050 900  0    50   ~ 0
PHI2e6
Wire Notes Line
	2450 900  2450 800 
Text Notes 2650 900  0    50   ~ 0
PHI2e7
Text Notes 3200 900  0    50   ~ 0
PHI2e8
Text Notes 6800 900  0    50   ~ 0
PHI2e6
Text Notes 6200 900  0    50   ~ 0
PHI2e5
Text Notes 5600 900  0    50   ~ 0
PHI2e4
Text Notes 5000 900  0    50   ~ 0
PHI2e3
Connection ~ 7600 1350
Connection ~ 7550 1250
Wire Wire Line
	7550 1250 7600 1350
Connection ~ 2900 1350
Connection ~ 2850 1250
Wire Wire Line
	2850 1250 2900 1350
Wire Wire Line
	2600 1350 2650 1350
Connection ~ 2650 1350
Connection ~ 2600 1250
Wire Wire Line
	2600 1250 2650 1350
Connection ~ 2750 1350
Connection ~ 2700 1250
Wire Wire Line
	2700 1250 2750 1350
Wire Wire Line
	7800 1350 8600 1350
Connection ~ 7800 1350
Wire Wire Line
	7750 1250 7800 1350
Wire Wire Line
	7750 1350 7800 1350
Connection ~ 7750 1350
Wire Wire Line
	7700 1250 7750 1250
Connection ~ 7700 1250
Wire Wire Line
	7700 1250 7750 1350
Wire Wire Line
	7700 1350 7750 1350
Connection ~ 7700 1350
Wire Wire Line
	7650 1250 7700 1250
Connection ~ 7650 1250
Wire Wire Line
	7650 1250 7700 1350
Wire Wire Line
	7650 1350 7700 1350
Wire Wire Line
	7600 1350 7650 1350
Connection ~ 7650 1350
Wire Wire Line
	7600 1250 7650 1250
Wire Wire Line
	7550 1250 7600 1250
Connection ~ 7600 1250
Wire Wire Line
	7600 1250 7650 1350
Wire Wire Line
	7550 1350 7600 1350
Connection ~ 7550 1350
Wire Wire Line
	7500 1250 7550 1250
Connection ~ 7500 1250
Wire Wire Line
	7500 1250 7550 1350
Wire Wire Line
	7500 1350 7550 1350
Connection ~ 7500 1350
Wire Wire Line
	7450 1250 7500 1250
Connection ~ 7450 1250
Wire Wire Line
	7450 1250 7500 1350
Wire Wire Line
	7450 1350 7500 1350
Wire Wire Line
	7400 1350 7450 1350
Connection ~ 7450 1350
Wire Wire Line
	7400 1250 7450 1250
Connection ~ 7400 1250
Wire Wire Line
	7400 1250 7450 1350
Wire Wire Line
	7350 1250 7400 1250
Connection ~ 7350 1250
Wire Wire Line
	7350 1250 7400 1350
Wire Notes Line
	8450 900  8450 800 
Wire Wire Line
	2100 1100 2500 1100
Wire Wire Line
	2150 950  2100 950 
Wire Wire Line
	2150 1050 2150 950 
Wire Notes Line
	3050 900  3050 800 
Text Notes 8000 900  0    50   ~ 0
PHI2e8
Wire Notes Line
	7850 900  7850 800 
Text Notes 7400 900  0    50   ~ 0
PHI2e7
Wire Notes Line
	7250 900  7250 800 
Wire Notes Line
	6650 900  6650 800 
Wire Notes Line
	6050 900  6050 800 
Wire Notes Line
	5450 900  5450 800 
Wire Notes Line
	4850 900  4850 800 
Text Notes 4400 900  0    50   ~ 0
PHI2e2
Wire Notes Line
	4250 900  4250 800 
Text Notes 3800 900  0    50   ~ 0
PHI2e1
Wire Notes Line
	3650 900  3650 800 
Connection ~ 3000 1350
Wire Wire Line
	2950 1250 3000 1350
Wire Wire Line
	2950 1350 3000 1350
Wire Wire Line
	2900 1350 2950 1350
Connection ~ 2950 1350
Wire Wire Line
	2900 1250 2950 1250
Wire Wire Line
	2850 1250 2900 1250
Connection ~ 2900 1250
Wire Wire Line
	2900 1250 2950 1350
Connection ~ 5350 1250
Wire Wire Line
	5300 1350 5350 1350
Connection ~ 5300 1350
Wire Wire Line
	5300 1350 5350 1250
Wire Wire Line
	5300 1250 5350 1250
Connection ~ 5300 1250
Wire Wire Line
	5250 1350 5300 1350
Connection ~ 5250 1350
Wire Wire Line
	5250 1350 5300 1250
Wire Wire Line
	5250 1250 5300 1250
Connection ~ 5250 1250
Wire Wire Line
	5200 1350 5250 1350
Connection ~ 5200 1350
Wire Wire Line
	5200 1350 5250 1250
Wire Wire Line
	5200 1250 5250 1250
Connection ~ 5200 1250
Wire Wire Line
	5150 1350 5200 1350
Connection ~ 5150 1350
Wire Wire Line
	5150 1350 5200 1250
Wire Wire Line
	5150 1250 5200 1250
Connection ~ 5150 1250
Wire Wire Line
	5100 1350 5150 1350
Connection ~ 5100 1350
Wire Wire Line
	5100 1350 5150 1250
Wire Wire Line
	5100 1250 5150 1250
Connection ~ 5100 1250
Wire Wire Line
	5050 1350 5100 1350
Connection ~ 5050 1350
Wire Wire Line
	5050 1350 5100 1250
Wire Wire Line
	5050 1250 5100 1250
Wire Wire Line
	5000 1250 5050 1250
Connection ~ 5050 1250
Wire Wire Line
	5000 1350 5050 1350
Connection ~ 5000 1350
Wire Wire Line
	5000 1350 5050 1250
Wire Wire Line
	5400 1250 7350 1250
Wire Wire Line
	5350 1250 5400 1250
Connection ~ 5400 1250
Wire Wire Line
	5350 1350 5400 1250
Wire Wire Line
	4950 1350 5000 1350
Wire Wire Line
	3000 1350 4950 1350
Connection ~ 4950 1350
Wire Wire Line
	4950 1350 5000 1250
Wire Wire Line
	2850 1350 2900 1350
Connection ~ 2850 1350
Wire Wire Line
	2800 1250 2850 1250
Connection ~ 2800 1250
Wire Wire Line
	2800 1250 2850 1350
Wire Wire Line
	2800 1350 2850 1350
Wire Wire Line
	2750 1350 2800 1350
Connection ~ 2800 1350
Wire Wire Line
	2750 1250 2800 1250
Wire Wire Line
	2700 1250 2750 1250
Connection ~ 2750 1250
Wire Wire Line
	2750 1250 2800 1350
Wire Wire Line
	2700 1350 2750 1350
Wire Wire Line
	2650 1350 2700 1350
Connection ~ 2700 1350
Wire Wire Line
	2650 1250 2700 1250
Wire Wire Line
	2600 1250 2650 1250
Connection ~ 2650 1250
Wire Wire Line
	2650 1250 2700 1350
Wire Wire Line
	2550 1200 4900 1200
Wire Wire Line
	2550 1250 2600 1250
Wire Wire Line
	2100 1250 2550 1250
Connection ~ 2550 1250
Wire Wire Line
	2550 1250 2600 1350
Text Notes 2050 1350 2    50   ~ 0
PHI2
Text Notes 2050 1200 2    50   ~ 0
PHI0
Text Notes 2050 1050 2    50   ~ 0
DotCk (8 MHz)
Wire Wire Line
	7350 1200 8600 1200
Wire Wire Line
	7300 1100 7350 1200
Wire Wire Line
	4950 1100 7300 1100
Wire Wire Line
	8450 950  8600 950 
Wire Wire Line
	8450 1050 8450 950 
Wire Wire Line
	8150 1050 8450 1050
Wire Wire Line
	8150 950  8150 1050
Wire Wire Line
	7850 950  8150 950 
Wire Wire Line
	7850 1050 7850 950 
Wire Wire Line
	7550 1050 7850 1050
Wire Wire Line
	7550 950  7550 1050
Wire Wire Line
	7250 950  7550 950 
Wire Wire Line
	7250 1050 7250 950 
Wire Wire Line
	6950 1050 7250 1050
Wire Wire Line
	6950 950  6950 1050
Wire Wire Line
	6650 950  6950 950 
Wire Wire Line
	6650 1050 6650 950 
Wire Wire Line
	6350 1050 6650 1050
Wire Wire Line
	4900 1200 4950 1100
Wire Wire Line
	2500 1100 2550 1200
Wire Wire Line
	6350 950  6350 1050
Wire Wire Line
	6050 950  6350 950 
Wire Wire Line
	6050 1050 6050 950 
Wire Wire Line
	5750 1050 6050 1050
Wire Wire Line
	5750 950  5750 1050
Wire Wire Line
	5450 950  5750 950 
Wire Wire Line
	5450 1050 5450 950 
Wire Wire Line
	5150 1050 5450 1050
Wire Wire Line
	5150 950  5150 1050
Wire Wire Line
	4850 950  5150 950 
Wire Wire Line
	4850 1050 4850 950 
Wire Wire Line
	4550 1050 4850 1050
Wire Wire Line
	4550 950  4550 1050
Wire Wire Line
	4250 950  4550 950 
Wire Wire Line
	4250 1050 4250 950 
Wire Wire Line
	3950 1050 4250 1050
Wire Wire Line
	3950 950  3950 1050
Wire Wire Line
	3650 950  3950 950 
Wire Wire Line
	3650 1050 3650 950 
Wire Wire Line
	3350 1050 3650 1050
Wire Wire Line
	3350 950  3350 1050
Wire Wire Line
	2750 1050 2750 950 
Wire Wire Line
	3050 950  3350 950 
Wire Wire Line
	3050 1050 3050 950 
Wire Wire Line
	2750 1050 3050 1050
Wire Wire Line
	2450 950  2750 950 
Wire Wire Line
	2450 1050 2450 950 
Wire Wire Line
	2150 1050 2450 1050
Wire Wire Line
	3100 1500 3150 1400
Text Notes 2050 1500 2    50   ~ 0
Ref[x]
Wire Wire Line
	3150 1400 8600 1400
Wire Wire Line
	2100 1500 3100 1500
Text Notes 2050 1650 2    50   ~ 0
Ref[x+1]
Wire Wire Line
	2100 1650 7900 1650
Wire Wire Line
	7900 1650 7950 1550
Wire Wire Line
	7950 1550 8600 1550
Wire Wire Line
	2100 1800 3700 1800
Wire Wire Line
	3700 1800 3750 1700
Text Notes 2050 1800 2    50   ~ 0
PHI2e1
Wire Wire Line
	3750 1700 4300 1700
Wire Wire Line
	4300 1700 4350 1800
Wire Wire Line
	4350 1800 8600 1800
Text Notes 2050 1950 2    50   ~ 0
PHI2e2
Wire Wire Line
	2100 1950 4300 1950
Wire Wire Line
	4300 1950 4350 1850
Wire Wire Line
	4350 1850 4900 1850
Wire Wire Line
	4900 1850 4950 1950
Wire Wire Line
	4950 1950 8600 1950
Text Notes 950  2850 0    50   ~ 0
U8 generates a reset pulse at power-on\nwhich is ultimately fed to U10 and U11.
$Comp
L 74xx:74LS02 U?
U 3 1 61D7DBDD
P 2450 3150
AR Path="/CF1C1573/61D7DBDD" Ref="U?"  Part="1" 
AR Path="/61D7DBDD" Ref="U?"  Part="1" 
AR Path="/605D20C2/61D7DBDD" Ref="U12"  Part="3" 
F 0 "U12" H 2450 3150 50  0000 C CNN
F 1 "74LVC02" H 2450 2950 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 2450 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 2450 3150 50  0001 C CNN
	3    2450 3150
	1    0    0    -1  
$EndComp
NoConn ~ 2150 3350
Text Label 2150 3550 0    50   ~ 0
TR
Wire Wire Line
	2100 2100 4900 2100
Wire Wire Line
	4900 2100 4950 2000
Wire Wire Line
	4950 2000 5500 2000
Wire Wire Line
	5500 2000 5550 2100
Wire Wire Line
	5550 2100 8600 2100
Text Notes 2050 2100 2    50   ~ 0
PHI2e3\n
Text Notes 1750 2250 0    50   ~ 0
PHI2e[8..4] similar…
Connection ~ 1650 3050
$Comp
L power:+5V #PWR0146
U 1 1 6234A0F8
P 1650 3050
F 0 "#PWR0146" H 1650 2900 50  0001 C CNN
F 1 "+5V" H 1650 3200 50  0000 C CNN
F 2 "" H 1650 3050 50  0001 C CNN
F 3 "" H 1650 3050 50  0001 C CNN
	1    1650 3050
	1    0    0    -1  
$EndComp
NoConn ~ 1150 3450
Text Label 1150 3250 2    50   ~ 0
TR
$Comp
L power:GND #PWR?
U 1 1 61D79670
P 950 3450
AR Path="/CF1C1573/61D79670" Ref="#PWR?"  Part="1" 
AR Path="/61D79670" Ref="#PWR?"  Part="1" 
AR Path="/605D20C2/61D79670" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 950 3200 50  0001 C CNN
F 1 "GND" H 950 3300 50  0000 C CNN
F 2 "" H 950 3450 50  0001 C CNN
F 3 "" H 950 3450 50  0001 C CNN
	1    950  3450
	-1   0    0    -1  
$EndComp
Connection ~ 950  3250
$Comp
L Device:C_Small C13
U 1 1 61D78A41
P 950 3350
F 0 "C13" H 850 3400 50  0000 R CNN
F 1 "2u2" H 850 3300 50  0000 R CNN
F 2 "stdpads:C_0603" H 950 3350 50  0001 C CNN
F 3 "~" H 950 3350 50  0001 C CNN
	1    950  3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  3050 1650 3050
Wire Wire Line
	1150 3250 950  3250
$Comp
L Device:R_Small R1
U 1 1 61D76454
P 950 3150
F 0 "R1" H 900 3200 50  0000 R CNN
F 1 "22k" H 900 3100 50  0000 R CNN
F 2 "stdpads:R_0603" H 950 3150 50  0001 C CNN
F 3 "~" H 950 3150 50  0001 C CNN
	1    950  3150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61D756D7
P 1150 3650
AR Path="/CF1C1573/61D756D7" Ref="#PWR?"  Part="1" 
AR Path="/61D756D7" Ref="#PWR?"  Part="1" 
AR Path="/605D20C2/61D756D7" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 1150 3500 50  0001 C CNN
F 1 "+3V3" H 1150 3800 50  0000 C CNN
F 2 "" H 1150 3650 50  0001 C CNN
F 3 "" H 1150 3650 50  0001 C CNN
	1    1150 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61D7396B
P 1650 3850
AR Path="/CF1C1573/61D7396B" Ref="#PWR?"  Part="1" 
AR Path="/61D7396B" Ref="#PWR?"  Part="1" 
AR Path="/605D20C2/61D7396B" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 1650 3600 50  0001 C CNN
F 1 "GND" H 1650 3700 50  0000 C CNN
F 2 "" H 1650 3850 50  0001 C CNN
F 3 "" H 1650 3850 50  0001 C CNN
	1    1650 3850
	-1   0    0    -1  
$EndComp
$Comp
L Timer:LM555 U8
U 1 1 61D731F4
P 1650 3450
F 0 "U8" H 1650 3500 50  0000 C CNN
F 1 "LM555" H 1650 3400 50  0000 C CNN
F 2 "stdpads:SOIC-8_3.9mm" H 1650 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 1650 3450 50  0001 C CNN
	1    1650 3450
	1    0    0    -1  
$EndComp
Connection ~ 2150 3250
Wire Wire Line
	2150 3050 2150 3250
$EndSCHEMATC
