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
Text HLabel 3750 5050 2    50   Output ~ 0
PHI2e6
Text HLabel 2950 4950 0    50   Output ~ 0
PHI2e5
Text HLabel 2950 3950 0    50   Input ~ 0
DotClk
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
Text HLabel 3750 3350 2    50   Output ~ 0
~RST~r
Text Label 2950 3250 2    50   ~ 0
~RST~r0
Text Label 3750 3250 0    50   ~ 0
~RST~r0
Text HLabel 3750 5150 2    50   Output ~ 0
PHI2e7
Text HLabel 3750 5250 2    50   Output ~ 0
PHI2e8
Text HLabel 2950 5050 0    50   Output ~ 0
PHI2e6
Text HLabel 2950 5150 0    50   Output ~ 0
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
Text HLabel 2950 3150 0    50   BiDi ~ 0
~RST~
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
$Comp
L 74xx:74LS02 U?
U 2 1 607D33CD
P 1850 4550
AR Path="/CF1C1573/607D33CD" Ref="U?"  Part="1" 
AR Path="/607D33CD" Ref="U?"  Part="1" 
AR Path="/605D20C2/607D33CD" Ref="U12"  Part="2" 
F 0 "U12" H 1850 4550 50  0000 C CNN
F 1 "74LVC02" H 1850 4350 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 1850 4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 1850 4550 50  0001 C CNN
	2    1850 4550
	1    0    0    -1  
$EndComp
Text HLabel 2950 5250 0    50   Input ~ 0
DotClk
Text HLabel 2950 4850 0    50   Output ~ 0
PHI2e4
Text HLabel 2950 4750 0    50   Output ~ 0
PHI2e3
Text HLabel 2950 4650 0    50   Output ~ 0
PHI2e2
Text HLabel 2950 4550 0    50   Output ~ 0
PHI2e1
Wire Wire Line
	2750 4450 2950 4450
Wire Wire Line
	1250 4350 2150 4350
Text Label 2950 4450 2    50   ~ 0
PHI2e
Text Label 1250 4350 0    50   ~ 0
PHI2
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
Text Notes 4550 3700 0    50   ~ 0
We also double-synchronize the C64’s reset signal\nbefore feeding it to the geoRAM registers.
Text Notes 4550 4000 0    50   ~ 0
These bits are a continuation of the one-hot state \ncounter shift register which begins in U10
Text Notes 4550 4550 0    50   ~ 0
PHI2 is registered twice to gain setup time for the gates U12A and U12B.
Text Notes 4550 5150 0    50   ~ 0
The PHI2e[8..1] signals are an eight-state one-hot state counter\nwhich counts out the eight 8 MHz dot clock cycles\ncomprising one 1 MHz PHI cycle.\nThese bits are reset by the POR pulse so that none of PHI2e[8..1]\nare high until power is good.
Text Notes 4550 3450 0    50   ~ 0
The power-on reset signal ~BOD~ is double-synchronized to create ~BOD~r\nso as to “make synchronous” the asynchronous reset of U10 and U11.\nThe C64 reset signal is also kept low when ~BOD~r is low,\nalthogh the POR time is ~~47ms, less than that of the C64, so the C64’s\nPOR pulse on the ~RST~ line is not nominally extended.
Text Label 1250 4450 0    50   ~ 0
PHI2r1
Wire Wire Line
	1250 4450 1550 4450
Connection ~ 1550 4450
Wire Wire Line
	1550 4450 1550 4650
Text Notes 2150 750  0    50   ~ 0
PHI2e8
Text Notes 5750 750  0    50   ~ 0
PHI2e6
Text Notes 5150 750  0    50   ~ 0
PHI2e5
Text Notes 4550 750  0    50   ~ 0
PHI2e4
Text Notes 3950 750  0    50   ~ 0
PHI2e3
Wire Wire Line
	1650 1100 2650 1100
Wire Wire Line
	2700 1200 5050 1200
Text Notes 1600 1200 2    50   ~ 0
PHI2r1
Wire Wire Line
	7500 1200 8150 1200
Wire Wire Line
	7450 1100 7500 1200
Wire Wire Line
	5100 1100 7450 1100
Wire Wire Line
	5050 1200 5100 1100
Wire Wire Line
	2650 1100 2700 1200
Wire Wire Line
	6800 950  6800 1050
Wire Notes Line
	7400 750  7400 650 
Wire Wire Line
	1700 800  1650 800 
Wire Wire Line
	1700 900  1700 800 
Wire Notes Line
	2000 750  2000 650 
Text Notes 6950 750  0    50   ~ 0
PHI2e8
Wire Notes Line
	6800 750  6800 650 
Text Notes 6350 750  0    50   ~ 0
PHI2e7
Wire Notes Line
	6200 750  6200 650 
Wire Notes Line
	5600 750  5600 650 
Wire Notes Line
	5000 750  5000 650 
Wire Notes Line
	4400 750  4400 650 
Wire Notes Line
	3800 750  3800 650 
Text Notes 3350 750  0    50   ~ 0
PHI2e2
Wire Notes Line
	3200 750  3200 650 
Text Notes 2750 750  0    50   ~ 0
PHI2e1
Wire Notes Line
	2600 750  2600 650 
Wire Wire Line
	2000 950  2000 1050
Wire Wire Line
	2000 1050 4400 1050
Wire Wire Line
	4400 1050 4400 950 
Text Notes 1600 1050 2    50   ~ 0
PHI2
Text Notes 1600 900  2    50   ~ 0
DotCk (8 MHz)
Wire Wire Line
	8000 800  8150 800 
Wire Wire Line
	8000 900  8000 800 
Wire Wire Line
	7700 900  8000 900 
Wire Wire Line
	7700 800  7700 900 
Wire Wire Line
	7400 800  7700 800 
Wire Wire Line
	7400 900  7400 800 
Wire Wire Line
	7100 900  7400 900 
Wire Wire Line
	7100 800  7100 900 
Wire Wire Line
	6800 800  7100 800 
Wire Wire Line
	6800 900  6800 800 
Wire Wire Line
	6500 900  6800 900 
Wire Wire Line
	6500 800  6500 900 
Wire Wire Line
	6200 800  6500 800 
Wire Wire Line
	6200 900  6200 800 
Wire Wire Line
	5900 900  6200 900 
Wire Wire Line
	5900 800  5900 900 
Wire Wire Line
	5600 800  5900 800 
Wire Wire Line
	5600 900  5600 800 
Wire Wire Line
	5300 900  5600 900 
Wire Wire Line
	5300 800  5300 900 
Wire Wire Line
	5000 800  5300 800 
Wire Wire Line
	5000 900  5000 800 
Wire Wire Line
	4700 900  5000 900 
Wire Wire Line
	4700 800  4700 900 
Wire Wire Line
	4400 800  4700 800 
Wire Wire Line
	4400 900  4400 800 
Wire Wire Line
	4100 900  4400 900 
Wire Wire Line
	4100 800  4100 900 
Wire Wire Line
	3800 800  4100 800 
Wire Wire Line
	3800 900  3800 800 
Wire Wire Line
	3500 900  3800 900 
Wire Wire Line
	3500 800  3500 900 
Wire Wire Line
	3200 800  3500 800 
Wire Wire Line
	3200 900  3200 800 
Wire Wire Line
	2900 900  3200 900 
Wire Wire Line
	2900 800  2900 900 
Wire Wire Line
	2300 900  2300 800 
Wire Wire Line
	2600 800  2900 800 
Wire Wire Line
	2600 900  2600 800 
Wire Wire Line
	2300 900  2600 900 
Wire Wire Line
	2000 800  2300 800 
Wire Wire Line
	2000 900  2000 800 
Wire Wire Line
	1700 900  2000 900 
Wire Wire Line
	6800 1050 8150 1050
Wire Wire Line
	4400 950  6800 950 
Wire Wire Line
	1650 950  2000 950 
Wire Notes Line
	8000 750  8000 650 
Text Notes 7550 750  0    50   ~ 0
PHI2e1
Text Notes 1600 750  0    50   ~ 0
PHI2e7
$Comp
L 74xx:74LS02 U?
U 1 2 605F54E0
P 2450 4450
AR Path="/CF1C1573/605F54E0" Ref="U?"  Part="1" 
AR Path="/605F54E0" Ref="U?"  Part="1" 
AR Path="/605D20C2/605F54E0" Ref="U12"  Part="1" 
F 0 "U12" H 2450 4450 50  0000 C CNN
F 1 "74LVC02" H 2450 4250 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 2450 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 2450 4450 50  0001 C CNN
	1    2450 4450
	1    0    0    -1  
$EndComp
Text HLabel 3750 4550 2    50   Output ~ 0
PHI2e1
Text HLabel 3750 4650 2    50   Output ~ 0
PHI2e2
Text HLabel 3750 4750 2    50   Output ~ 0
PHI2e3
Text HLabel 3750 4850 2    50   Output ~ 0
PHI2e4
Text HLabel 3750 4950 2    50   Output ~ 0
PHI2e5
$Comp
L power:+3V3 #PWR?
U 1 1 6425C686
P 2450 5350
AR Path="/CF1C1573/6425C686" Ref="#PWR?"  Part="1" 
AR Path="/6425C686" Ref="#PWR?"  Part="1" 
AR Path="/605D20C2/6425C686" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2450 5200 50  0001 C CNN
F 1 "+3V3" H 2450 5500 50  0000 C CNN
F 2 "" H 2450 5350 50  0001 C CNN
F 3 "" H 2450 5350 50  0001 C CNN
	1    2450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5350 2950 5350
$EndSCHEMATC
