EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 4 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 950  6900 0    50   Input ~ 0
PHI2e3
Text HLabel 5950 7600 2    50   Output ~ 0
R~WE~
Wire Wire Line
	5250 7400 5250 7500
Text HLabel 950  7300 0    50   Input ~ 0
PHI2e5
$Comp
L 74xx:74LS32 U16
U 1 1 607E6BA7
P 4950 7400
F 0 "U16" H 4950 7400 50  0000 C CNN
F 1 "74LVC32" H 4950 7650 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 4950 7400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4950 7400 50  0001 C CNN
	1    4950 7400
	1    0    0    -1  
$EndComp
Text HLabel 950  7500 0    50   Input ~ 0
PHI2e7
Text HLabel 5950 7100 2    50   Output ~ 0
All
Text HLabel 5950 7200 2    50   Output ~ 0
Mode
Text HLabel 950  7200 0    50   Input ~ 0
PHI2e8
Text HLabel 950  7100 0    50   Input ~ 0
PHI2e7
Wire Wire Line
	950  7100 5950 7100
Wire Wire Line
	5950 7200 950  7200
Text HLabel 5950 7000 2    50   Output ~ 0
~R~W
Wire Wire Line
	950  7300 4650 7300
Wire Wire Line
	950  7500 4650 7500
Wire Wire Line
	5950 7000 1650 7000
Wire Wire Line
	5850 7600 5950 7600
Text HLabel 950  7700 0    50   Input ~ 0
Ref1
Wire Wire Line
	5250 7700 5250 7800
Wire Wire Line
	4650 7700 4650 7900
Wire Wire Line
	4650 7700 950  7700
Connection ~ 4650 7700
$Comp
L 74xx:74LS02 U15
U 3 1 6078A31D
P 5550 7600
F 0 "U15" H 5550 7600 50  0000 C CNN
F 1 "74LVC02" H 5550 7800 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 5550 7600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5550 7600 50  0001 C CNN
	3    5550 7600
	1    0    0    -1  
$EndComp
Text Notes 3150 1850 0    50   ~ 0
AREF
Text Notes 2500 1850 0    50   ~ 0
PC all
Wire Wire Line
	2950 1850 3500 1850
Wire Wire Line
	2950 1750 3500 1750
Wire Wire Line
	2900 1850 2950 1750
Wire Wire Line
	2350 1850 2900 1850
Wire Wire Line
	2900 1750 2950 1850
Wire Wire Line
	2350 1750 2900 1750
Text Notes 3150 1550 0    50   ~ 0
AREF
Text Notes 2500 1550 0    50   ~ 0
PC all
Wire Wire Line
	2950 1550 3500 1550
Wire Wire Line
	2950 1450 3500 1450
Wire Wire Line
	2900 1550 2950 1450
Wire Wire Line
	2350 1550 2900 1550
Wire Wire Line
	2900 1450 2950 1550
Wire Wire Line
	2350 1450 2900 1450
Text Notes 3750 1850 0    50   ~ 0
NOP
Text Notes 3750 1550 0    50   ~ 0
NOP
Wire Wire Line
	8350 1850 8400 1850
Wire Wire Line
	8350 1750 8400 1750
Wire Wire Line
	8350 1550 8400 1550
Wire Wire Line
	8350 1450 8400 1450
Wire Wire Line
	1900 1300 3500 1300
Wire Wire Line
	3550 1400 5900 1400
Text Notes 1850 1400 2    50   ~ 0
PHI02r2
Wire Wire Line
	8350 1400 8400 1400
Wire Wire Line
	8300 1300 8350 1400
Wire Wire Line
	5950 1300 8300 1300
Wire Wire Line
	5900 1400 5950 1300
Wire Wire Line
	3500 1300 3550 1400
Text Notes 1850 650  0    50   ~ 0
PHI2e6
Wire Notes Line
	2250 650  2250 550 
Text Notes 2450 650  0    50   ~ 0
PHI2e7
Text Notes 3000 650  0    50   ~ 0
PHI2e8
Text Notes 6600 650  0    50   ~ 0
PHI2e6
Text Notes 6000 650  0    50   ~ 0
PHI2e5
Text Notes 5400 650  0    50   ~ 0
PHI2e4
Text Notes 4800 650  0    50   ~ 0
PHI2e3
Wire Wire Line
	1900 1150 2900 1150
Wire Wire Line
	2950 1250 5300 1250
Text Notes 1850 1250 2    50   ~ 0
PHI02r1
Wire Wire Line
	7750 1250 8400 1250
Wire Wire Line
	7700 1150 7750 1250
Wire Wire Line
	5350 1150 7700 1150
Wire Wire Line
	5300 1250 5350 1150
Wire Wire Line
	2900 1150 2950 1250
Text Notes 6150 1850 0    50   ~ 0
WR
Text Notes 6150 1550 0    50   ~ 0
NOP
Text Notes 1850 1850 2    50   ~ 0
Command (write)
Text Notes 1950 1850 0    50   ~ 0
NOP
Text Notes 7950 1850 0    50   ~ 0
AREF
Text Notes 7300 1850 0    50   ~ 0
PC all
Text Notes 4350 1850 0    50   ~ 0
NOP
Text Notes 6750 1850 0    50   ~ 0
NOP
Text Notes 5550 1850 0    50   ~ 0
NOP
Text Notes 4950 1850 0    50   ~ 0
ACT
Wire Wire Line
	8300 1850 8350 1750
Wire Wire Line
	7750 1850 8300 1850
Wire Wire Line
	8300 1750 8350 1850
Wire Wire Line
	7750 1750 8300 1750
Wire Wire Line
	7700 1850 7750 1750
Wire Wire Line
	7150 1850 7700 1850
Wire Wire Line
	7700 1750 7750 1850
Wire Wire Line
	7150 1750 7700 1750
Wire Wire Line
	7100 1850 7150 1750
Wire Wire Line
	6550 1850 7100 1850
Wire Wire Line
	7100 1750 7150 1850
Wire Wire Line
	6550 1750 7100 1750
Wire Wire Line
	6500 1850 6550 1750
Wire Wire Line
	5950 1850 6500 1850
Wire Wire Line
	6500 1750 6550 1850
Wire Wire Line
	5950 1750 6500 1750
Wire Wire Line
	5900 1850 5950 1750
Wire Wire Line
	5350 1850 5900 1850
Wire Wire Line
	5900 1750 5950 1850
Wire Wire Line
	5350 1750 5900 1750
Wire Wire Line
	5300 1850 5350 1750
Wire Wire Line
	4750 1850 5300 1850
Wire Wire Line
	5300 1750 5350 1850
Wire Wire Line
	4750 1750 5300 1750
Wire Wire Line
	4700 1850 4750 1750
Wire Wire Line
	4150 1850 4700 1850
Wire Wire Line
	4700 1750 4750 1850
Wire Wire Line
	4150 1750 4700 1750
Wire Wire Line
	4100 1850 4150 1750
Wire Wire Line
	3550 1850 4100 1850
Wire Wire Line
	4100 1750 4150 1850
Wire Wire Line
	3550 1750 4100 1750
Wire Wire Line
	3500 1850 3550 1750
Wire Wire Line
	3500 1750 3550 1850
Wire Wire Line
	2300 1850 2350 1750
Wire Wire Line
	1900 1850 2300 1850
Wire Wire Line
	2300 1750 2350 1850
Wire Wire Line
	1900 1750 2300 1750
Text Notes 1850 1550 2    50   ~ 0
Command (idle)
Text Notes 1950 1550 0    50   ~ 0
NOP
Text Notes 7950 1550 0    50   ~ 0
AREF
Text Notes 7300 1550 0    50   ~ 0
PC all
Text Notes 4350 1550 0    50   ~ 0
NOP
Text Notes 6750 1550 0    50   ~ 0
NOP
Text Notes 5550 1550 0    50   ~ 0
NOP
Text Notes 4950 1550 0    50   ~ 0
ACT
Wire Wire Line
	8300 1550 8350 1450
Wire Wire Line
	7750 1550 8300 1550
Wire Wire Line
	8300 1450 8350 1550
Wire Wire Line
	7750 1450 8300 1450
Wire Wire Line
	7700 1550 7750 1450
Wire Wire Line
	7150 1550 7700 1550
Wire Wire Line
	7700 1450 7750 1550
Wire Wire Line
	6550 1550 7100 1550
Wire Wire Line
	6500 1550 6550 1450
Wire Wire Line
	5950 1550 6500 1550
Wire Wire Line
	6500 1450 6550 1550
Wire Wire Line
	5950 1450 6500 1450
Wire Wire Line
	5900 1550 5950 1450
Wire Wire Line
	5350 1550 5900 1550
Wire Wire Line
	5900 1450 5950 1550
Wire Wire Line
	5350 1450 5900 1450
Wire Wire Line
	5300 1550 5350 1450
Wire Wire Line
	4750 1550 5300 1550
Wire Wire Line
	5300 1450 5350 1550
Wire Wire Line
	4750 1450 5300 1450
Wire Wire Line
	4700 1550 4750 1450
Wire Wire Line
	4150 1550 4700 1550
Wire Wire Line
	4700 1450 4750 1550
Wire Wire Line
	4150 1450 4700 1450
Wire Wire Line
	4100 1550 4150 1450
Wire Wire Line
	3550 1550 4100 1550
Wire Wire Line
	4100 1450 4150 1550
Wire Wire Line
	3550 1450 4100 1450
Wire Wire Line
	3500 1550 3550 1450
Wire Wire Line
	3500 1450 3550 1550
Wire Wire Line
	2300 1550 2350 1450
Wire Wire Line
	1900 1550 2300 1550
Wire Wire Line
	2300 1450 2350 1550
Wire Wire Line
	1900 1450 2300 1450
Connection ~ 7400 1100
Connection ~ 7350 1000
Wire Wire Line
	7350 1000 7400 1100
Connection ~ 2700 1100
Connection ~ 2650 1000
Wire Wire Line
	2650 1000 2700 1100
Wire Wire Line
	2400 1100 2450 1100
Connection ~ 2450 1100
Connection ~ 2400 1000
Wire Wire Line
	2400 1000 2450 1100
Connection ~ 2550 1100
Connection ~ 2500 1000
Wire Wire Line
	2500 1000 2550 1100
Wire Wire Line
	7600 1100 8400 1100
Connection ~ 7600 1100
Wire Wire Line
	7550 1000 7600 1100
Wire Wire Line
	7550 1100 7600 1100
Connection ~ 7550 1100
Wire Wire Line
	7500 1000 7550 1000
Connection ~ 7500 1000
Wire Wire Line
	7500 1000 7550 1100
Wire Wire Line
	7500 1100 7550 1100
Connection ~ 7500 1100
Wire Wire Line
	7450 1000 7500 1000
Connection ~ 7450 1000
Wire Wire Line
	7450 1000 7500 1100
Wire Wire Line
	7450 1100 7500 1100
Wire Wire Line
	7400 1100 7450 1100
Connection ~ 7450 1100
Wire Wire Line
	7400 1000 7450 1000
Wire Wire Line
	7350 1000 7400 1000
Connection ~ 7400 1000
Wire Wire Line
	7400 1000 7450 1100
Wire Wire Line
	7350 1100 7400 1100
Connection ~ 7350 1100
Wire Wire Line
	7300 1000 7350 1000
Connection ~ 7300 1000
Wire Wire Line
	7300 1000 7350 1100
Wire Wire Line
	7300 1100 7350 1100
Connection ~ 7300 1100
Wire Wire Line
	7250 1000 7300 1000
Connection ~ 7250 1000
Wire Wire Line
	7250 1000 7300 1100
Wire Wire Line
	7250 1100 7300 1100
Wire Wire Line
	7200 1100 7250 1100
Connection ~ 7250 1100
Wire Wire Line
	7200 1000 7250 1000
Connection ~ 7200 1000
Wire Wire Line
	7200 1000 7250 1100
Wire Wire Line
	7150 1000 7200 1000
Connection ~ 7150 1000
Wire Wire Line
	7150 1000 7200 1100
Wire Notes Line
	8250 650  8250 550 
Wire Wire Line
	1900 850  2300 850 
Wire Wire Line
	1950 700  1900 700 
Wire Wire Line
	1950 800  1950 700 
Wire Notes Line
	2850 650  2850 550 
Text Notes 7800 650  0    50   ~ 0
PHI2e8
Wire Notes Line
	7650 650  7650 550 
Text Notes 7200 650  0    50   ~ 0
PHI2e7
Wire Notes Line
	7050 650  7050 550 
Wire Notes Line
	6450 650  6450 550 
Wire Notes Line
	5850 650  5850 550 
Wire Notes Line
	5250 650  5250 550 
Wire Notes Line
	4650 650  4650 550 
Text Notes 4200 650  0    50   ~ 0
PHI2e2
Wire Notes Line
	4050 650  4050 550 
Text Notes 3600 650  0    50   ~ 0
PHI2e1
Wire Notes Line
	3450 650  3450 550 
Connection ~ 2800 1100
Wire Wire Line
	2750 1000 2800 1100
Wire Wire Line
	2750 1100 2800 1100
Wire Wire Line
	2700 1100 2750 1100
Connection ~ 2750 1100
Wire Wire Line
	2700 1000 2750 1000
Wire Wire Line
	2650 1000 2700 1000
Connection ~ 2700 1000
Wire Wire Line
	2700 1000 2750 1100
Connection ~ 5150 1000
Wire Wire Line
	5100 1100 5150 1100
Connection ~ 5100 1100
Wire Wire Line
	5100 1100 5150 1000
Wire Wire Line
	5100 1000 5150 1000
Connection ~ 5100 1000
Wire Wire Line
	5050 1100 5100 1100
Connection ~ 5050 1100
Wire Wire Line
	5050 1100 5100 1000
Wire Wire Line
	5050 1000 5100 1000
Connection ~ 5050 1000
Wire Wire Line
	5000 1100 5050 1100
Connection ~ 5000 1100
Wire Wire Line
	5000 1100 5050 1000
Wire Wire Line
	5000 1000 5050 1000
Connection ~ 5000 1000
Wire Wire Line
	4950 1100 5000 1100
Connection ~ 4950 1100
Wire Wire Line
	4950 1100 5000 1000
Wire Wire Line
	4950 1000 5000 1000
Connection ~ 4950 1000
Wire Wire Line
	4900 1100 4950 1100
Connection ~ 4900 1100
Wire Wire Line
	4900 1100 4950 1000
Wire Wire Line
	4900 1000 4950 1000
Connection ~ 4900 1000
Wire Wire Line
	4850 1100 4900 1100
Connection ~ 4850 1100
Wire Wire Line
	4850 1100 4900 1000
Wire Wire Line
	4850 1000 4900 1000
Wire Wire Line
	4800 1000 4850 1000
Connection ~ 4850 1000
Wire Wire Line
	4800 1100 4850 1100
Connection ~ 4800 1100
Wire Wire Line
	4800 1100 4850 1000
Wire Wire Line
	5200 1000 7150 1000
Wire Wire Line
	5150 1000 5200 1000
Connection ~ 5200 1000
Wire Wire Line
	5150 1100 5200 1000
Wire Wire Line
	4750 1100 4800 1100
Wire Wire Line
	2800 1100 4750 1100
Connection ~ 4750 1100
Wire Wire Line
	4750 1100 4800 1000
Wire Wire Line
	2650 1100 2700 1100
Connection ~ 2650 1100
Wire Wire Line
	2600 1000 2650 1000
Connection ~ 2600 1000
Wire Wire Line
	2600 1000 2650 1100
Wire Wire Line
	2600 1100 2650 1100
Wire Wire Line
	2550 1100 2600 1100
Connection ~ 2600 1100
Wire Wire Line
	2550 1000 2600 1000
Wire Wire Line
	2500 1000 2550 1000
Connection ~ 2550 1000
Wire Wire Line
	2550 1000 2600 1100
Wire Wire Line
	2500 1100 2550 1100
Wire Wire Line
	2450 1100 2500 1100
Connection ~ 2500 1100
Wire Wire Line
	2450 1000 2500 1000
Wire Wire Line
	2400 1000 2450 1000
Connection ~ 2450 1000
Wire Wire Line
	2450 1000 2500 1100
Wire Wire Line
	2350 950  4700 950 
Wire Wire Line
	2350 1000 2400 1000
Wire Wire Line
	1900 1000 2350 1000
Connection ~ 2350 1000
Wire Wire Line
	2350 1000 2400 1100
Text Notes 1850 1100 2    50   ~ 0
PHI2
Text Notes 1850 950  2    50   ~ 0
PHI0
Text Notes 1850 800  2    50   ~ 0
DotCk (8 MHz)
Wire Wire Line
	7150 950  8400 950 
Wire Wire Line
	7100 850  7150 950 
Wire Wire Line
	4750 850  7100 850 
Wire Wire Line
	8250 700  8400 700 
Wire Wire Line
	8250 800  8250 700 
Wire Wire Line
	7950 800  8250 800 
Wire Wire Line
	7950 700  7950 800 
Wire Wire Line
	7650 700  7950 700 
Wire Wire Line
	7650 800  7650 700 
Wire Wire Line
	7350 800  7650 800 
Wire Wire Line
	7350 700  7350 800 
Wire Wire Line
	7050 700  7350 700 
Wire Wire Line
	7050 800  7050 700 
Wire Wire Line
	6750 800  7050 800 
Wire Wire Line
	6750 700  6750 800 
Wire Wire Line
	6450 700  6750 700 
Wire Wire Line
	6450 800  6450 700 
Wire Wire Line
	6150 800  6450 800 
Wire Wire Line
	4700 950  4750 850 
Wire Wire Line
	2300 850  2350 950 
Wire Wire Line
	6150 700  6150 800 
Wire Wire Line
	5850 700  6150 700 
Wire Wire Line
	5850 800  5850 700 
Wire Wire Line
	5550 800  5850 800 
Wire Wire Line
	5550 700  5550 800 
Wire Wire Line
	5250 700  5550 700 
Wire Wire Line
	5250 800  5250 700 
Wire Wire Line
	4950 800  5250 800 
Wire Wire Line
	4950 700  4950 800 
Wire Wire Line
	4650 700  4950 700 
Wire Wire Line
	4650 800  4650 700 
Wire Wire Line
	4350 800  4650 800 
Wire Wire Line
	4350 700  4350 800 
Wire Wire Line
	4050 700  4350 700 
Wire Wire Line
	4050 800  4050 700 
Wire Wire Line
	3750 800  4050 800 
Wire Wire Line
	3750 700  3750 800 
Wire Wire Line
	3450 700  3750 700 
Wire Wire Line
	3450 800  3450 700 
Wire Wire Line
	3150 800  3450 800 
Wire Wire Line
	3150 700  3150 800 
Wire Wire Line
	2550 800  2550 700 
Wire Wire Line
	2850 700  3150 700 
Wire Wire Line
	2850 800  2850 700 
Wire Wire Line
	2550 800  2850 800 
Wire Wire Line
	2250 700  2550 700 
Wire Wire Line
	2250 800  2250 700 
Wire Wire Line
	1950 800  2250 800 
Wire Wire Line
	7150 1450 7700 1450
Wire Wire Line
	7100 1550 7150 1450
Wire Wire Line
	7150 1550 7100 1450
Wire Wire Line
	7100 1450 6550 1450
Text Notes 3150 1700 0    50   ~ 0
AREF
Text Notes 2500 1700 0    50   ~ 0
PC all
Wire Wire Line
	2950 1700 3500 1700
Wire Wire Line
	2950 1600 3500 1600
Wire Wire Line
	2900 1700 2950 1600
Wire Wire Line
	2350 1700 2900 1700
Wire Wire Line
	2900 1600 2950 1700
Wire Wire Line
	2350 1600 2900 1600
Text Notes 3750 1700 0    50   ~ 0
NOP
Wire Wire Line
	8350 1700 8400 1700
Wire Wire Line
	8350 1600 8400 1600
Text Notes 6150 1700 0    50   ~ 0
NOP
Text Notes 1850 1700 2    50   ~ 0
Command (read)
Text Notes 1950 1700 0    50   ~ 0
NOP
Text Notes 7950 1700 0    50   ~ 0
AREF
Text Notes 7300 1700 0    50   ~ 0
PC all
Text Notes 4350 1700 0    50   ~ 0
NOP
Text Notes 6750 1700 0    50   ~ 0
NOP
Text Notes 4950 1700 0    50   ~ 0
ACT
Wire Wire Line
	8300 1700 8350 1600
Wire Wire Line
	7750 1700 8300 1700
Wire Wire Line
	8300 1600 8350 1700
Wire Wire Line
	7750 1600 8300 1600
Wire Wire Line
	7700 1700 7750 1600
Wire Wire Line
	7150 1700 7700 1700
Wire Wire Line
	7700 1600 7750 1700
Wire Wire Line
	6550 1700 7100 1700
Wire Wire Line
	6500 1700 6550 1600
Wire Wire Line
	5950 1700 6500 1700
Wire Wire Line
	6500 1600 6550 1700
Wire Wire Line
	5950 1600 6500 1600
Wire Wire Line
	5900 1700 5950 1600
Wire Wire Line
	5350 1700 5900 1700
Wire Wire Line
	5900 1600 5950 1700
Wire Wire Line
	5350 1600 5900 1600
Wire Wire Line
	5300 1700 5350 1600
Wire Wire Line
	4750 1700 5300 1700
Wire Wire Line
	5300 1600 5350 1700
Wire Wire Line
	4750 1600 5300 1600
Wire Wire Line
	4700 1700 4750 1600
Wire Wire Line
	4150 1700 4700 1700
Wire Wire Line
	4700 1600 4750 1700
Wire Wire Line
	4150 1600 4700 1600
Wire Wire Line
	4100 1700 4150 1600
Wire Wire Line
	3550 1700 4100 1700
Wire Wire Line
	4100 1600 4150 1700
Wire Wire Line
	3550 1600 4100 1600
Wire Wire Line
	3500 1700 3550 1600
Wire Wire Line
	3500 1600 3550 1700
Wire Wire Line
	2300 1700 2350 1600
Wire Wire Line
	1900 1700 2300 1700
Wire Wire Line
	2300 1600 2350 1700
Wire Wire Line
	1900 1600 2300 1600
Wire Wire Line
	7150 1600 7700 1600
Wire Wire Line
	7100 1700 7150 1600
Wire Wire Line
	7150 1700 7100 1600
Wire Wire Line
	7100 1600 6550 1600
Text Notes 5550 1700 0    50   ~ 0
RD
Wire Wire Line
	3550 2800 5900 2800
Text Notes 1850 2600 2    50   ~ 0
R~CAS~ (idle)
Wire Wire Line
	1900 2500 2900 2500
Wire Wire Line
	2900 2500 2950 2600
Wire Wire Line
	2950 2600 3500 2600
Wire Wire Line
	3500 2600 3550 2500
Wire Wire Line
	8300 2600 8350 2500
Wire Wire Line
	8350 2500 8400 2500
Text Notes 1850 2750 2    50   ~ 0
R~CAS~ (read)
Wire Wire Line
	1900 2650 2900 2650
Wire Wire Line
	2900 2650 2950 2750
Wire Wire Line
	2950 2750 3500 2750
Wire Wire Line
	3500 2750 3550 2650
Wire Wire Line
	8300 2750 8350 2650
Wire Wire Line
	8350 2650 8400 2650
Wire Wire Line
	5300 2650 5350 2750
Wire Wire Line
	5350 2750 5900 2750
Wire Wire Line
	5900 2750 5950 2650
Wire Wire Line
	3550 2650 5300 2650
Text Notes 1850 2900 2    50   ~ 0
R~CAS~ (write)
Wire Wire Line
	1900 2800 2900 2800
Wire Wire Line
	2900 2800 2950 2900
Wire Wire Line
	2950 2900 3500 2900
Wire Wire Line
	3500 2900 3550 2800
Wire Wire Line
	7650 2800 7700 2900
Wire Wire Line
	7700 2900 8300 2900
Wire Wire Line
	8300 2900 8350 2800
Wire Wire Line
	8350 2800 8400 2800
Wire Wire Line
	5900 2800 5950 2900
Wire Wire Line
	5950 2900 6500 2900
Wire Wire Line
	6500 2900 6550 2800
Wire Wire Line
	6550 2800 7650 2800
Wire Wire Line
	5350 1900 7100 1900
Wire Wire Line
	8350 1900 8400 1900
Wire Wire Line
	3550 1900 4700 1900
Wire Wire Line
	8300 2000 8350 1900
Wire Wire Line
	7150 2000 8300 2000
Wire Wire Line
	7100 1900 7150 2000
Wire Wire Line
	5300 2000 5350 1900
Wire Wire Line
	4750 2000 5300 2000
Wire Wire Line
	4700 1900 4750 2000
Wire Wire Line
	3500 2000 3550 1900
Wire Wire Line
	2350 2000 3500 2000
Wire Wire Line
	2300 1900 2350 2000
Wire Wire Line
	1900 1900 2300 1900
Text Notes 1850 2000 2    50   ~ 0
R~CS~ (idle)
Text Notes 1850 3050 2    50   ~ 0
R~WE~ (idle/read/write)
Wire Wire Line
	5900 2950 5950 3050
Wire Wire Line
	5950 3050 6500 3050
Wire Wire Line
	6500 3050 6550 2950
Wire Wire Line
	1900 2950 2300 2950
Wire Wire Line
	2300 2950 2350 3050
Wire Wire Line
	2900 3050 2950 2950
Wire Wire Line
	7100 2950 7150 3050
Wire Wire Line
	7700 3050 7750 2950
Wire Wire Line
	7150 3050 7700 3050
Wire Wire Line
	6550 2950 7100 2950
Wire Wire Line
	2950 2950 5900 2950
Wire Wire Line
	2350 3050 2900 3050
Wire Wire Line
	7650 2650 7700 2750
Wire Wire Line
	7700 2750 8300 2750
Wire Wire Line
	7650 2500 7700 2600
Wire Wire Line
	7700 2600 8300 2600
Wire Wire Line
	3550 2500 7650 2500
Wire Wire Line
	5950 2650 7650 2650
Text Notes 1850 2450 2    50   ~ 0
R~RAS~ (idle/read/write)
Wire Wire Line
	1900 2350 2300 2350
Wire Wire Line
	2300 2350 2350 2450
Wire Wire Line
	2350 2450 3500 2450
Wire Wire Line
	3500 2450 3550 2350
Wire Wire Line
	3550 2350 4700 2350
Wire Wire Line
	4700 2350 4750 2450
Wire Wire Line
	4750 2450 5300 2450
Wire Wire Line
	5300 2450 5350 2350
Wire Wire Line
	7100 2350 7150 2450
Wire Wire Line
	7150 2450 8300 2450
Wire Wire Line
	8300 2450 8350 2350
Wire Wire Line
	5350 2350 7100 2350
Wire Wire Line
	8350 2350 8400 2350
Wire Wire Line
	5950 2050 7100 2050
Wire Wire Line
	4750 2150 5900 2150
Wire Wire Line
	6550 2200 7100 2200
Wire Wire Line
	5350 2200 5900 2200
Wire Wire Line
	8350 2200 8400 2200
Wire Wire Line
	3550 2200 4700 2200
Wire Wire Line
	8300 2300 8350 2200
Wire Wire Line
	7150 2300 8300 2300
Wire Wire Line
	7100 2200 7150 2300
Wire Wire Line
	6500 2300 5950 2300
Wire Wire Line
	6500 2300 6550 2200
Wire Wire Line
	5950 2300 5900 2200
Wire Wire Line
	5300 2300 5350 2200
Wire Wire Line
	4750 2300 5300 2300
Wire Wire Line
	4700 2200 4750 2300
Wire Wire Line
	3500 2300 3550 2200
Wire Wire Line
	2350 2300 3500 2300
Wire Wire Line
	2300 2200 2350 2300
Wire Wire Line
	1900 2200 2300 2200
Text Notes 1850 2300 2    50   ~ 0
R~CS~ (write)
Wire Wire Line
	8350 2050 8400 2050
Wire Wire Line
	3550 2050 4700 2050
Wire Wire Line
	8300 2150 8350 2050
Wire Wire Line
	7150 2150 8300 2150
Wire Wire Line
	7100 2050 7150 2150
Wire Wire Line
	5900 2150 5950 2050
Wire Wire Line
	4700 2050 4750 2150
Wire Wire Line
	3500 2150 3550 2050
Wire Wire Line
	2350 2150 3500 2150
Wire Wire Line
	2300 2050 2350 2150
Wire Wire Line
	1900 2050 2300 2050
Text Notes 1850 2150 2    50   ~ 0
R~CS~ (read)
Wire Wire Line
	7750 2950 8400 2950
Wire Wire Line
	950  6900 5250 6900
Wire Wire Line
	5950 6800 5850 6800
Text HLabel 5950 6800 2    50   Output ~ 0
R~RAS~
$Comp
L 74xx:74LS02 U?
U 4 1 6141F9AC
P 4950 7800
AR Path="/CF1C1573/6141F9AC" Ref="U?"  Part="1" 
AR Path="/6141F9AC" Ref="U?"  Part="1" 
AR Path="/605D20C2/6141F9AC" Ref="U?"  Part="3" 
AR Path="/606ED367/6141F9AC" Ref="U12"  Part="4" 
F 0 "U12" H 4950 7800 50  0000 C CNN
F 1 "74LVC02" H 4950 8000 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 4950 7800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 4950 7800 50  0001 C CNN
	4    4950 7800
	1    0    0    -1  
$EndComp
Text Label 3750 5600 2    50   ~ 0
RDWR
$Comp
L 74xx:74LS00 U14
U 4 2 6071014D
P 3150 5600
F 0 "U14" H 3150 5600 50  0000 C CNN
F 1 "74LVC00" H 3150 5800 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 3150 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3150 5600 50  0001 C CNN
	4    3150 5600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U14
U 1 1 606F2016
P 1950 5300
F 0 "U14" H 1950 5300 50  0000 C CNN
F 1 "74LVC00" H 1950 5550 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 1950 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 1950 5300 50  0001 C CNN
	1    1950 5300
	1    0    0    -1  
$EndComp
Text Label 2850 5700 2    50   ~ 0
~WR~
Text Label 2850 5500 2    50   ~ 0
~RD~
Text HLabel 950  5100 0    50   Input ~ 0
PHI2e8
Text HLabel 5950 5200 2    50   Output ~ 0
R~CAS~
Wire Wire Line
	1650 5200 950  5200
Wire Wire Line
	1650 5400 1050 5400
Wire Wire Line
	950  5800 1650 5800
Text HLabel 950  6800 0    50   Input ~ 0
PHI2e8
Text HLabel 950  6600 0    50   Input ~ 0
PHI2e7
Text HLabel 950  5600 0    50   Input ~ 0
~IO1~
Text HLabel 950  5800 0    50   Input ~ 0
PHI2e5
Text HLabel 950  5200 0    50   Input ~ 0
PHI2e4
Text HLabel 950  5400 0    50   Input ~ 0
R~W~
Wire Wire Line
	1050 5900 1050 5400
Connection ~ 1050 5400
Wire Wire Line
	1050 5400 950  5400
Text HLabel 950  6500 0    50   Input ~ 0
Ref0
Wire Wire Line
	950  5600 2250 5600
Wire Wire Line
	2250 5600 2250 5700
Connection ~ 2250 5600
Wire Wire Line
	2250 5500 2250 5600
Text HLabel 5950 5600 2    50   Output ~ 0
Col~Row~
Text HLabel 5950 5500 2    50   Output ~ 0
RDQM
$Comp
L 74xx:74LS32 U13
U 2 2 606FF7D9
P 2550 5400
F 0 "U13" H 2550 5400 50  0000 C CNN
F 1 "74LVC32" H 2550 5600 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 2550 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 2550 5400 50  0001 C CNN
	2    2550 5400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U13
U 3 2 60701EDC
P 2550 5800
F 0 "U13" H 2550 5800 50  0000 C CNN
F 1 "74LVC32" H 2550 6000 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 2550 5800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 2550 5800 50  0001 C CNN
	3    2550 5800
	1    0    0    -1  
$EndComp
Text HLabel 950  6200 0    50   Input ~ 0
PHI2e3
Text HLabel 950  6300 0    50   Input ~ 0
Ref8
Connection ~ 3450 5600
Wire Wire Line
	4050 5200 5950 5200
Wire Wire Line
	5900 5600 5900 5500
Wire Wire Line
	5900 5500 5950 5500
Connection ~ 5900 5600
Wire Wire Line
	5900 5600 5950 5600
Wire Wire Line
	2850 5700 2850 5800
Wire Wire Line
	2850 5500 2850 5400
Wire Wire Line
	3450 5600 5900 5600
Wire Wire Line
	950  5100 3450 5100
Wire Wire Line
	3450 5300 3450 5600
$Comp
L 74xx:74LS00 U14
U 3 1 60F0D25B
P 1350 6000
F 0 "U14" H 1350 6000 50  0000 C CNN
F 1 "74LVC00" H 1350 6250 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 1350 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 1350 6000 50  0001 C CNN
	3    1350 6000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U14
U 2 1 606F6B04
P 1950 5900
F 0 "U14" H 1950 5900 50  0000 C CNN
F 1 "74LVC00" H 1950 6100 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 1950 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 1950 5900 50  0001 C CNN
	2    1950 5900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U15
U 2 1 6076A58B
P 3750 5200
F 0 "U15" H 3750 5200 50  0000 C CNN
F 1 "74LVC02" H 3750 5000 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 3750 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3750 5200 50  0001 C CNN
	2    3750 5200
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS00 U17
U 4 1 607FB721
P 4950 6200
F 0 "U17" H 4950 6200 50  0000 C CNN
F 1 "74LVC00" H 4950 6000 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 4950 6200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4950 6200 50  0001 C CNN
	4    4950 6200
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS00 U17
U 3 1 607B59BA
P 4350 6200
F 0 "U17" H 4350 6200 50  0000 C CNN
F 1 "74LVC00" H 4350 6000 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 4350 6200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4350 6200 50  0001 C CNN
	3    4350 6200
	1    0    0    1   
$EndComp
Wire Wire Line
	3450 6000 3450 5600
$Comp
L 74xx:74LS32 U16
U 2 1 607163AE
P 3750 6700
F 0 "U16" H 3750 6700 50  0000 C CNN
F 1 "74LVC32" H 3750 6950 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 3750 6700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3750 6700 50  0001 C CNN
	2    3750 6700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U17
U 1 1 6151D9BE
P 4350 6600
F 0 "U17" H 4350 6600 50  0000 C CNN
F 1 "74LVC00" H 4350 6800 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 4350 6600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4350 6600 50  0001 C CNN
	1    4350 6600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U17
U 2 1 6162A374
P 4950 6600
F 0 "U17" H 4950 6600 50  0000 C CNN
F 1 "74LVC00" H 4950 6800 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 4950 6600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4950 6600 50  0001 C CNN
	2    4950 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6500 950  6500
Wire Wire Line
	950  6600 3450 6600
Wire Wire Line
	950  6800 3450 6800
Wire Wire Line
	4650 6700 4650 6600
Wire Wire Line
	4650 6500 4650 6600
$Comp
L 74xx:74LS32 U13
U 4 1 607A5B37
P 3750 6100
F 0 "U13" H 3750 6100 50  0000 C CNN
F 1 "74LVC32" H 3750 5900 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 3750 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3750 6100 50  0001 C CNN
	4    3750 6100
	1    0    0    1   
$EndComp
Wire Wire Line
	4650 6200 4650 6100
Connection ~ 4650 6200
Wire Wire Line
	4650 6300 4650 6200
Text HLabel 5950 6300 2    50   Output ~ 0
R~CS~
$Comp
L 74xx:74LS02 U15
U 4 1 607C042F
P 5550 6300
F 0 "U15" H 5550 6300 50  0000 C CNN
F 1 "74LVC02" H 5550 6100 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 5550 6300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5550 6300 50  0001 C CNN
	4    5550 6300
	1    0    0    1   
$EndComp
Wire Wire Line
	950  6300 4050 6300
Wire Wire Line
	5850 6300 5950 6300
Connection ~ 4650 6600
Wire Wire Line
	950  6200 3450 6200
$Comp
L 74xx:74LS02 U15
U 1 1 60745CA8
P 5550 6800
F 0 "U15" H 5550 6800 50  0000 C CNN
F 1 "74LVC02" H 5550 7000 50  0000 C CNN
F 2 "stdpads:TSSOP-14_4.4x5mm_P0.65mm" H 5550 6800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5550 6800 50  0001 C CNN
	1    5550 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6700 5250 6600
Wire Wire Line
	5250 6600 5250 6400
Connection ~ 5250 6600
Wire Wire Line
	5250 6600 5300 6600
Wire Wire Line
	5300 6600 5350 6550
Text Label 5650 6550 2    50   ~ 0
Always
Wire Wire Line
	5350 6550 5650 6550
Wire Wire Line
	1650 6000 1650 7000
Connection ~ 1650 6000
Text Notes 3150 3700 0    50   ~ 0
MRS
Text Notes 2500 3700 0    50   ~ 0
PC all
Wire Wire Line
	2950 3700 3500 3700
Wire Wire Line
	2950 3600 3500 3600
Wire Wire Line
	2900 3700 2950 3600
Wire Wire Line
	2350 3700 2900 3700
Wire Wire Line
	2900 3600 2950 3700
Wire Wire Line
	2350 3600 2900 3600
Text Notes 3750 3700 0    50   ~ 0
NOP
Wire Wire Line
	8350 3700 8400 3700
Wire Wire Line
	8350 3600 8400 3600
Text Notes 6150 3700 0    50   ~ 0
NOP
Text Notes 1850 3700 2    50   ~ 0
Command (init)
Text Notes 1950 3700 0    50   ~ 0
NOP
Text Notes 7300 3700 0    50   ~ 0
PC all
Text Notes 4350 3700 0    50   ~ 0
NOP
Text Notes 6750 3700 0    50   ~ 0
NOP
Text Notes 5550 3700 0    50   ~ 0
NOP
Text Notes 4950 3700 0    50   ~ 0
NOP
Wire Wire Line
	8300 3700 8350 3600
Wire Wire Line
	7750 3700 8300 3700
Wire Wire Line
	8300 3600 8350 3700
Wire Wire Line
	7750 3600 8300 3600
Wire Wire Line
	7700 3700 7750 3600
Wire Wire Line
	7150 3700 7700 3700
Wire Wire Line
	7700 3600 7750 3700
Wire Wire Line
	6550 3700 7100 3700
Wire Wire Line
	6500 3700 6550 3600
Wire Wire Line
	5950 3700 6500 3700
Wire Wire Line
	6500 3600 6550 3700
Wire Wire Line
	5950 3600 6500 3600
Wire Wire Line
	5900 3700 5950 3600
Wire Wire Line
	5350 3700 5900 3700
Wire Wire Line
	5900 3600 5950 3700
Wire Wire Line
	5350 3600 5900 3600
Wire Wire Line
	5300 3700 5350 3600
Wire Wire Line
	4750 3700 5300 3700
Wire Wire Line
	5300 3600 5350 3700
Wire Wire Line
	4750 3600 5300 3600
Wire Wire Line
	4700 3700 4750 3600
Wire Wire Line
	4150 3700 4700 3700
Wire Wire Line
	4700 3600 4750 3700
Wire Wire Line
	4150 3600 4700 3600
Wire Wire Line
	4100 3700 4150 3600
Wire Wire Line
	3550 3700 4100 3700
Wire Wire Line
	4100 3600 4150 3700
Wire Wire Line
	3550 3600 4100 3600
Wire Wire Line
	3500 3700 3550 3600
Wire Wire Line
	3500 3600 3550 3700
Wire Wire Line
	2300 3700 2350 3600
Wire Wire Line
	1900 3700 2300 3700
Wire Wire Line
	2300 3600 2350 3700
Wire Wire Line
	1900 3600 2300 3600
Wire Wire Line
	7150 3600 7700 3600
Wire Wire Line
	7100 3700 7150 3600
Wire Wire Line
	7150 3700 7100 3600
Wire Wire Line
	7100 3600 6550 3600
Text Notes 7950 3700 0    50   ~ 0
AREF
Wire Wire Line
	1900 4200 2300 4200
Wire Wire Line
	2300 4200 2350 4300
Wire Wire Line
	7700 4300 7750 4200
Wire Wire Line
	7750 4200 8400 4200
Text Notes 2400 4600 0    50   ~ 0
Ref0
Wire Wire Line
	7100 4650 7150 4550
Text Notes 7200 4650 0    50   ~ 0
Ref1
Wire Wire Line
	1900 4600 2300 4600
Wire Wire Line
	2300 4600 2350 4500
Wire Wire Line
	5350 3750 7100 3750
Wire Wire Line
	8350 3750 8400 3750
Wire Wire Line
	3550 3750 4700 3750
Wire Wire Line
	8300 3850 8350 3750
Wire Wire Line
	7150 3850 8300 3850
Wire Wire Line
	7100 3750 7150 3850
Wire Wire Line
	5300 3850 5350 3750
Wire Wire Line
	4750 3850 5300 3850
Wire Wire Line
	4700 3750 4750 3850
Wire Wire Line
	3500 3850 3550 3750
Wire Wire Line
	2350 3850 3500 3850
Wire Wire Line
	2300 3750 2350 3850
Wire Wire Line
	1900 3750 2300 3750
Text Notes 1850 3850 2    50   ~ 0
R~CS~ (init)
Wire Wire Line
	8350 3900 8400 3900
Wire Wire Line
	5350 3900 7100 3900
Wire Wire Line
	8300 4000 8350 3900
Wire Wire Line
	7150 4000 8300 4000
Wire Wire Line
	7100 3900 7150 4000
Wire Wire Line
	5300 4000 5350 3900
Wire Wire Line
	4750 4000 5300 4000
Wire Wire Line
	4700 3900 4750 4000
Wire Wire Line
	3550 3900 4700 3900
Wire Wire Line
	3500 4000 3550 3900
Wire Wire Line
	2350 4000 3500 4000
Wire Wire Line
	2300 3900 2350 4000
Wire Wire Line
	1900 3900 2300 3900
Text Notes 1850 4000 2    50   ~ 0
R~RAS~ (init)
Wire Wire Line
	3550 4050 7100 4050
Text Notes 1850 4150 2    50   ~ 0
R~CAS~ (init)
Wire Wire Line
	1900 4050 2900 4050
Wire Wire Line
	2900 4050 2950 4150
Wire Wire Line
	2950 4150 3500 4150
Wire Wire Line
	3500 4150 3550 4050
Wire Wire Line
	7100 4050 7150 4150
Wire Wire Line
	7150 4150 8300 4150
Wire Wire Line
	8300 4150 8350 4050
Wire Wire Line
	8350 4050 8400 4050
Wire Wire Line
	1900 4650 7100 4650
Wire Wire Line
	2350 4500 8400 4500
Wire Wire Line
	7150 4550 8400 4550
Wire Notes Line
	950  3550 8450 3550
Text Notes 1850 4300 2    50   ~ 0
R~WE~ (init)
Wire Wire Line
	2350 4300 7700 4300
Text Notes 6750 3200 0    50   ~ 0
row address
Text Notes 4550 3200 0    50   ~ 0
row address
Text Notes 1850 3200 2    50   ~ 0
RA/DQM (idle)
Text Notes 6750 3350 0    50   ~ 0
row address
Text Notes 5400 3350 0    50   ~ 0
col. address
Text Notes 4550 3350 0    50   ~ 0
row address
Wire Wire Line
	1900 3250 5300 3250
Wire Wire Line
	5300 3250 5350 3350
Wire Wire Line
	1900 3350 5300 3350
Wire Wire Line
	5300 3350 5350 3250
Wire Wire Line
	5350 3250 5900 3250
Wire Wire Line
	5900 3250 5950 3350
Wire Wire Line
	5350 3350 5900 3350
Wire Wire Line
	5950 3350 8400 3350
Wire Wire Line
	5950 3250 8400 3250
Wire Wire Line
	5900 3350 5950 3250
Text Notes 1850 3350 2    50   ~ 0
RA/DQM (read)
Text Notes 6750 3500 0    50   ~ 0
row address
Text Notes 6000 3500 0    50   ~ 0
col. address
Text Notes 4550 3500 0    50   ~ 0
row address
Wire Wire Line
	1900 3400 5900 3400
Wire Wire Line
	5900 3400 5950 3500
Wire Wire Line
	1900 3500 5900 3500
Wire Wire Line
	5900 3500 5950 3400
Wire Wire Line
	5950 3400 6500 3400
Wire Wire Line
	6500 3400 6550 3500
Wire Wire Line
	5950 3500 6500 3500
Wire Wire Line
	6550 3500 8400 3500
Wire Wire Line
	6550 3400 8400 3400
Wire Wire Line
	6500 3500 6550 3400
Text Notes 1850 3500 2    50   ~ 0
RA/DQM (write)
Wire Wire Line
	1900 3100 8400 3100
Wire Wire Line
	1900 3200 8400 3200
Text Notes 1800 4650 2    50   ~ 0
Ref0/1
Text Notes 1850 4450 2    50   ~ 0
RA
Wire Wire Line
	1900 4450 2300 4450
Wire Wire Line
	2300 4450 2350 4350
Wire Wire Line
	2300 4450 2900 4450
Wire Wire Line
	2900 4450 2950 4350
Connection ~ 2300 4450
Wire Wire Line
	2350 4350 2900 4350
Wire Wire Line
	2900 4350 2950 4450
Text Notes 1900 4450 0    50   ~ 0
row == 0
Text Notes 2350 4450 0    50   ~ 0
“all”—A10 hi
Wire Wire Line
	2950 4350 3500 4350
Wire Wire Line
	3500 4350 3550 4450
Wire Wire Line
	2950 4450 3550 4450
Text Notes 3900 4450 0    50   ~ 0
row address == 0
Wire Wire Line
	3550 4450 8400 4450
Connection ~ 3550 4450
Text Notes 2950 4450 0    50   ~ 0
mode register
Text Notes 6400 6550 0    50   ~ 0
Always <= (PHI2e7 || PHI2e8) && Ref0\nRDWR  <= (PHI2e4 && IO1 && ~WE~) || (PHI2e5 && IO1 && WE)\n\nRCS   <= Always || (Ref8 && (PHI2e3 || RDWR))\nRAS   <= Always || PHI2e3\nCAS   <= PHI2e8 || RWCS\nWE    <= PHI2e5 || PHI2e7 || ~Ref1~\nDQM  <= RDWR\nAmux <= PHI2e4 || PHI2e5
$EndSCHEMATC
