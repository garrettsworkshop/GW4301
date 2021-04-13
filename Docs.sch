EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title "GW4301A"
Date "2020-09-18"
Rev "1.0"
Comp "Garrett's Workshop"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1250 4750 0    50   ~ 0
RCS  <= PHI2e7 || PHI2e8 || (Ref8 && (PHI2e3 || (PHI2e4 && IO1 && ~WE~) || (PHI2e5 && IO1 && WE)))\nRAS  <= PHI2e7 || PHI2e8 || PHI2e3\nCAS  <=             PHI2e8 ||                        (PHI2e4 && IO1 && ~WE~) || (PHI2e5 && IO1 && WE)\nWE   <= PHI2e7 || (PHI2e8 && Ref0)\nDQM  <= Ref8\nAmux <= PHI2e4 || PHI2e5\n\nAlwaysCS <= PHI2e7 || PHI2e8\nReadWriteCS <= (PHI2e4 && IO1 && ~WE~) || (PHI2e5 && IO1 && WE)\n\nRCS  <= AlwaysCS || (Ref8 && (PHI2e3 || ReadWriteCS))\nRAS  <= AlwaysCS || PHI2e3\nCAS  <= PHI2e8 || ReadWriteCS\nWE   <= PHI2e7 || (PHI2e8 && Ref0)\nDQM  <= Ref8\nAmux <= PHI2e4 || PHI2e5
Text Notes 2700 2200 0    50   ~ 0
AREF
Text Notes 2050 2200 0    50   ~ 0
PC all
Wire Wire Line
	2500 2200 3050 2200
Wire Wire Line
	2500 2100 3050 2100
Wire Wire Line
	2450 2200 2500 2100
Wire Wire Line
	1900 2200 2450 2200
Wire Wire Line
	2450 2100 2500 2200
Wire Wire Line
	1900 2100 2450 2100
Text Notes 2700 2050 0    50   ~ 0
AREF
Text Notes 2050 2050 0    50   ~ 0
PC all
Wire Wire Line
	2500 2050 3050 2050
Wire Wire Line
	2500 1950 3050 1950
Wire Wire Line
	2450 2050 2500 1950
Wire Wire Line
	1900 2050 2450 2050
Wire Wire Line
	2450 1950 2500 2050
Wire Wire Line
	1900 1950 2450 1950
Text Notes 3300 2200 0    50   ~ 0
NOP
Text Notes 3300 2050 0    50   ~ 0
NOP
Wire Wire Line
	7900 2200 7950 2200
Wire Wire Line
	7900 2100 7950 2100
Wire Wire Line
	7900 2050 7950 2050
Wire Wire Line
	7900 1950 7950 1950
Wire Wire Line
	1450 1800 3050 1800
Wire Wire Line
	3100 1900 5450 1900
Text Notes 1400 1900 2    50   ~ 0
PHI02r2
Wire Wire Line
	7900 1900 7950 1900
Wire Wire Line
	7850 1800 7900 1900
Wire Wire Line
	5500 1800 7850 1800
Wire Wire Line
	5450 1900 5500 1800
Wire Wire Line
	3050 1800 3100 1900
Text Notes 1400 1150 0    50   ~ 0
PHI2e6
Wire Notes Line
	1800 1150 1800 1050
Text Notes 2000 1150 0    50   ~ 0
PHI2e7
Text Notes 2550 1150 0    50   ~ 0
PHI2e8
Text Notes 6150 1150 0    50   ~ 0
PHI2e6
Text Notes 5550 1150 0    50   ~ 0
PHI2e5
Text Notes 4950 1150 0    50   ~ 0
PHI2e4
Text Notes 4350 1150 0    50   ~ 0
PHI2e3
Wire Wire Line
	1450 1650 2450 1650
Wire Wire Line
	2500 1750 4850 1750
Text Notes 1400 1750 2    50   ~ 0
PHI02r1
Wire Wire Line
	7300 1750 7950 1750
Wire Wire Line
	7250 1650 7300 1750
Wire Wire Line
	4900 1650 7250 1650
Wire Wire Line
	4850 1750 4900 1650
Wire Wire Line
	2450 1650 2500 1750
Text Notes 5700 2200 0    50   ~ 0
WR
Text Notes 5700 2050 0    50   ~ 0
NOP
Text Notes 1400 2200 2    50   ~ 0
Command (write)
Text Notes 1500 2200 0    50   ~ 0
NOP
Text Notes 7500 2200 0    50   ~ 0
AREF
Text Notes 6850 2200 0    50   ~ 0
PC all
Text Notes 3900 2200 0    50   ~ 0
NOP
Text Notes 6300 2200 0    50   ~ 0
NOP
Text Notes 5100 2200 0    50   ~ 0
NOP
Text Notes 4500 2200 0    50   ~ 0
ACT
Wire Wire Line
	7850 2200 7900 2100
Wire Wire Line
	7300 2200 7850 2200
Wire Wire Line
	7850 2100 7900 2200
Wire Wire Line
	7300 2100 7850 2100
Wire Wire Line
	7250 2200 7300 2100
Wire Wire Line
	6700 2200 7250 2200
Wire Wire Line
	7250 2100 7300 2200
Wire Wire Line
	6700 2100 7250 2100
Wire Wire Line
	6650 2200 6700 2100
Wire Wire Line
	6100 2200 6650 2200
Wire Wire Line
	6650 2100 6700 2200
Wire Wire Line
	6100 2100 6650 2100
Wire Wire Line
	6050 2200 6100 2100
Wire Wire Line
	5500 2200 6050 2200
Wire Wire Line
	6050 2100 6100 2200
Wire Wire Line
	5500 2100 6050 2100
Wire Wire Line
	5450 2200 5500 2100
Wire Wire Line
	4900 2200 5450 2200
Wire Wire Line
	5450 2100 5500 2200
Wire Wire Line
	4900 2100 5450 2100
Wire Wire Line
	4850 2200 4900 2100
Wire Wire Line
	4300 2200 4850 2200
Wire Wire Line
	4850 2100 4900 2200
Wire Wire Line
	4300 2100 4850 2100
Wire Wire Line
	4250 2200 4300 2100
Wire Wire Line
	3700 2200 4250 2200
Wire Wire Line
	4250 2100 4300 2200
Wire Wire Line
	3700 2100 4250 2100
Wire Wire Line
	3650 2200 3700 2100
Wire Wire Line
	3100 2200 3650 2200
Wire Wire Line
	3650 2100 3700 2200
Wire Wire Line
	3100 2100 3650 2100
Wire Wire Line
	3050 2200 3100 2100
Wire Wire Line
	3050 2100 3100 2200
Wire Wire Line
	1850 2200 1900 2100
Wire Wire Line
	1450 2200 1850 2200
Wire Wire Line
	1850 2100 1900 2200
Wire Wire Line
	1450 2100 1850 2100
Text Notes 1400 2050 2    50   ~ 0
Command (read/idle)
Text Notes 1500 2050 0    50   ~ 0
NOP
Text Notes 7500 2050 0    50   ~ 0
AREF
Text Notes 6850 2050 0    50   ~ 0
PC all
Text Notes 3900 2050 0    50   ~ 0
NOP
Text Notes 6300 2050 0    50   ~ 0
NOP
Text Notes 5100 2050 0    50   ~ 0
RD
Text Notes 4500 2050 0    50   ~ 0
ACT
Wire Wire Line
	7850 2050 7900 1950
Wire Wire Line
	7300 2050 7850 2050
Wire Wire Line
	7850 1950 7900 2050
Wire Wire Line
	7300 1950 7850 1950
Wire Wire Line
	7250 2050 7300 1950
Wire Wire Line
	6700 2050 7250 2050
Wire Wire Line
	7250 1950 7300 2050
Wire Wire Line
	6700 1950 7250 1950
Wire Wire Line
	6650 2050 6700 1950
Wire Wire Line
	6100 2050 6650 2050
Wire Wire Line
	6650 1950 6700 2050
Wire Wire Line
	6100 1950 6650 1950
Wire Wire Line
	6050 2050 6100 1950
Wire Wire Line
	5500 2050 6050 2050
Wire Wire Line
	6050 1950 6100 2050
Wire Wire Line
	5500 1950 6050 1950
Wire Wire Line
	5450 2050 5500 1950
Wire Wire Line
	4900 2050 5450 2050
Wire Wire Line
	5450 1950 5500 2050
Wire Wire Line
	4900 1950 5450 1950
Wire Wire Line
	4850 2050 4900 1950
Wire Wire Line
	4300 2050 4850 2050
Wire Wire Line
	4850 1950 4900 2050
Wire Wire Line
	4300 1950 4850 1950
Wire Wire Line
	4250 2050 4300 1950
Wire Wire Line
	3700 2050 4250 2050
Wire Wire Line
	4250 1950 4300 2050
Wire Wire Line
	3700 1950 4250 1950
Wire Wire Line
	3650 2050 3700 1950
Wire Wire Line
	3100 2050 3650 2050
Wire Wire Line
	3650 1950 3700 2050
Wire Wire Line
	3100 1950 3650 1950
Wire Wire Line
	3050 2050 3100 1950
Wire Wire Line
	3050 1950 3100 2050
Wire Wire Line
	1850 2050 1900 1950
Wire Wire Line
	1450 2050 1850 2050
Wire Wire Line
	1850 1950 1900 2050
Wire Wire Line
	1450 1950 1850 1950
Text Notes 6300 2350 0    50   ~ 0
row address
Text Notes 5150 2350 0    50   ~ 0
column address
Text Notes 4100 2350 0    50   ~ 0
row address
Text Notes 1350 2350 2    50   ~ 0
RA
Wire Wire Line
	1450 2250 4850 2250
Wire Wire Line
	4850 2250 4900 2350
Wire Wire Line
	1450 2350 4850 2350
Wire Wire Line
	4850 2350 4900 2250
Wire Wire Line
	4900 2250 6050 2250
Wire Wire Line
	6050 2250 6100 2350
Wire Wire Line
	4900 2350 6050 2350
Wire Wire Line
	6100 2350 7950 2350
Wire Wire Line
	6100 2250 7950 2250
Wire Wire Line
	6050 2350 6100 2250
Connection ~ 6950 1600
Connection ~ 6900 1500
Wire Wire Line
	6900 1500 6950 1600
Connection ~ 2250 1600
Connection ~ 2200 1500
Wire Wire Line
	2200 1500 2250 1600
Wire Wire Line
	1950 1600 2000 1600
Connection ~ 2000 1600
Connection ~ 1950 1500
Wire Wire Line
	1950 1500 2000 1600
Connection ~ 2100 1600
Connection ~ 2050 1500
Wire Wire Line
	2050 1500 2100 1600
Wire Wire Line
	7150 1600 7950 1600
Connection ~ 7150 1600
Wire Wire Line
	7100 1500 7150 1600
Wire Wire Line
	7100 1600 7150 1600
Connection ~ 7100 1600
Wire Wire Line
	7050 1500 7100 1500
Connection ~ 7050 1500
Wire Wire Line
	7050 1500 7100 1600
Wire Wire Line
	7050 1600 7100 1600
Connection ~ 7050 1600
Wire Wire Line
	7000 1500 7050 1500
Connection ~ 7000 1500
Wire Wire Line
	7000 1500 7050 1600
Wire Wire Line
	7000 1600 7050 1600
Wire Wire Line
	6950 1600 7000 1600
Connection ~ 7000 1600
Wire Wire Line
	6950 1500 7000 1500
Wire Wire Line
	6900 1500 6950 1500
Connection ~ 6950 1500
Wire Wire Line
	6950 1500 7000 1600
Wire Wire Line
	6900 1600 6950 1600
Connection ~ 6900 1600
Wire Wire Line
	6850 1500 6900 1500
Connection ~ 6850 1500
Wire Wire Line
	6850 1500 6900 1600
Wire Wire Line
	6850 1600 6900 1600
Connection ~ 6850 1600
Wire Wire Line
	6800 1500 6850 1500
Connection ~ 6800 1500
Wire Wire Line
	6800 1500 6850 1600
Wire Wire Line
	6800 1600 6850 1600
Wire Wire Line
	6750 1600 6800 1600
Connection ~ 6800 1600
Wire Wire Line
	6750 1500 6800 1500
Connection ~ 6750 1500
Wire Wire Line
	6750 1500 6800 1600
Wire Wire Line
	6700 1500 6750 1500
Connection ~ 6700 1500
Wire Wire Line
	6700 1500 6750 1600
Wire Notes Line
	7800 1150 7800 1050
Wire Wire Line
	1450 1350 1850 1350
Wire Wire Line
	1500 1200 1450 1200
Wire Wire Line
	1500 1300 1500 1200
Wire Notes Line
	2400 1150 2400 1050
Text Notes 7350 1150 0    50   ~ 0
PHI2e8
Wire Notes Line
	7200 1150 7200 1050
Text Notes 6750 1150 0    50   ~ 0
PHI2e7
Wire Notes Line
	6600 1150 6600 1050
Wire Notes Line
	6000 1150 6000 1050
Wire Notes Line
	5400 1150 5400 1050
Wire Notes Line
	4800 1150 4800 1050
Wire Notes Line
	4200 1150 4200 1050
Text Notes 3750 1150 0    50   ~ 0
PHI2e2
Wire Notes Line
	3600 1150 3600 1050
Text Notes 3150 1150 0    50   ~ 0
PHI2e1
Wire Notes Line
	3000 1150 3000 1050
Connection ~ 2350 1600
Wire Wire Line
	2300 1500 2350 1600
Wire Wire Line
	2300 1600 2350 1600
Wire Wire Line
	2250 1600 2300 1600
Connection ~ 2300 1600
Wire Wire Line
	2250 1500 2300 1500
Wire Wire Line
	2200 1500 2250 1500
Connection ~ 2250 1500
Wire Wire Line
	2250 1500 2300 1600
Connection ~ 4700 1500
Wire Wire Line
	4650 1600 4700 1600
Connection ~ 4650 1600
Wire Wire Line
	4650 1600 4700 1500
Wire Wire Line
	4650 1500 4700 1500
Connection ~ 4650 1500
Wire Wire Line
	4600 1600 4650 1600
Connection ~ 4600 1600
Wire Wire Line
	4600 1600 4650 1500
Wire Wire Line
	4600 1500 4650 1500
Connection ~ 4600 1500
Wire Wire Line
	4550 1600 4600 1600
Connection ~ 4550 1600
Wire Wire Line
	4550 1600 4600 1500
Wire Wire Line
	4550 1500 4600 1500
Connection ~ 4550 1500
Wire Wire Line
	4500 1600 4550 1600
Connection ~ 4500 1600
Wire Wire Line
	4500 1600 4550 1500
Wire Wire Line
	4500 1500 4550 1500
Connection ~ 4500 1500
Wire Wire Line
	4450 1600 4500 1600
Connection ~ 4450 1600
Wire Wire Line
	4450 1600 4500 1500
Wire Wire Line
	4450 1500 4500 1500
Connection ~ 4450 1500
Wire Wire Line
	4400 1600 4450 1600
Connection ~ 4400 1600
Wire Wire Line
	4400 1600 4450 1500
Wire Wire Line
	4400 1500 4450 1500
Wire Wire Line
	4350 1500 4400 1500
Connection ~ 4400 1500
Wire Wire Line
	4350 1600 4400 1600
Connection ~ 4350 1600
Wire Wire Line
	4350 1600 4400 1500
Wire Wire Line
	4750 1500 6700 1500
Wire Wire Line
	4700 1500 4750 1500
Connection ~ 4750 1500
Wire Wire Line
	4700 1600 4750 1500
Wire Wire Line
	4300 1600 4350 1600
Wire Wire Line
	2350 1600 4300 1600
Connection ~ 4300 1600
Wire Wire Line
	4300 1600 4350 1500
Wire Wire Line
	2200 1600 2250 1600
Connection ~ 2200 1600
Wire Wire Line
	2150 1500 2200 1500
Connection ~ 2150 1500
Wire Wire Line
	2150 1500 2200 1600
Wire Wire Line
	2150 1600 2200 1600
Wire Wire Line
	2100 1600 2150 1600
Connection ~ 2150 1600
Wire Wire Line
	2100 1500 2150 1500
Wire Wire Line
	2050 1500 2100 1500
Connection ~ 2100 1500
Wire Wire Line
	2100 1500 2150 1600
Wire Wire Line
	2050 1600 2100 1600
Wire Wire Line
	2000 1600 2050 1600
Connection ~ 2050 1600
Wire Wire Line
	2000 1500 2050 1500
Wire Wire Line
	1950 1500 2000 1500
Connection ~ 2000 1500
Wire Wire Line
	2000 1500 2050 1600
Wire Wire Line
	1900 1450 4250 1450
Wire Wire Line
	1900 1500 1950 1500
Wire Wire Line
	1450 1500 1900 1500
Connection ~ 1900 1500
Wire Wire Line
	1900 1500 1950 1600
Text Notes 1400 1600 2    50   ~ 0
PHI2
Text Notes 1400 1450 2    50   ~ 0
PHI0
Text Notes 1400 1300 2    50   ~ 0
DotCk (8 MHz)
Wire Wire Line
	6700 1450 7950 1450
Wire Wire Line
	6650 1350 6700 1450
Wire Wire Line
	4300 1350 6650 1350
Wire Wire Line
	7800 1200 7950 1200
Wire Wire Line
	7800 1300 7800 1200
Wire Wire Line
	7500 1300 7800 1300
Wire Wire Line
	7500 1200 7500 1300
Wire Wire Line
	7200 1200 7500 1200
Wire Wire Line
	7200 1300 7200 1200
Wire Wire Line
	6900 1300 7200 1300
Wire Wire Line
	6900 1200 6900 1300
Wire Wire Line
	6600 1200 6900 1200
Wire Wire Line
	6600 1300 6600 1200
Wire Wire Line
	6300 1300 6600 1300
Wire Wire Line
	6300 1200 6300 1300
Wire Wire Line
	6000 1200 6300 1200
Wire Wire Line
	6000 1300 6000 1200
Wire Wire Line
	5700 1300 6000 1300
Wire Wire Line
	4250 1450 4300 1350
Wire Wire Line
	1850 1350 1900 1450
Wire Wire Line
	5700 1200 5700 1300
Wire Wire Line
	5400 1200 5700 1200
Wire Wire Line
	5400 1300 5400 1200
Wire Wire Line
	5100 1300 5400 1300
Wire Wire Line
	5100 1200 5100 1300
Wire Wire Line
	4800 1200 5100 1200
Wire Wire Line
	4800 1300 4800 1200
Wire Wire Line
	4500 1300 4800 1300
Wire Wire Line
	4500 1200 4500 1300
Wire Wire Line
	4200 1200 4500 1200
Wire Wire Line
	4200 1300 4200 1200
Wire Wire Line
	3900 1300 4200 1300
Wire Wire Line
	3900 1200 3900 1300
Wire Wire Line
	3600 1200 3900 1200
Wire Wire Line
	3600 1300 3600 1200
Wire Wire Line
	3300 1300 3600 1300
Wire Wire Line
	3300 1200 3300 1300
Wire Wire Line
	3000 1200 3300 1200
Wire Wire Line
	3000 1300 3000 1200
Wire Wire Line
	2700 1300 3000 1300
Wire Wire Line
	2700 1200 2700 1300
Wire Wire Line
	2100 1300 2100 1200
Wire Wire Line
	2400 1200 2700 1200
Wire Wire Line
	2400 1300 2400 1200
Wire Wire Line
	2100 1300 2400 1300
Wire Wire Line
	1800 1200 2100 1200
Wire Wire Line
	1800 1300 1800 1200
Wire Wire Line
	1500 1300 1800 1300
$EndSCHEMATC
