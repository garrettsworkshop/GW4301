EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L GW_Logic:74273 U?
U 1 1 605F5441
P 5200 2150
AR Path="/CF1C1573/605F5441" Ref="U?"  Part="1" 
AR Path="/605F5441" Ref="U?"  Part="1" 
F 0 "U?" H 5200 2750 50  0000 C CNN
F 1 "74LVC273" V 5200 2150 50  0000 C CNN
F 2 "" H 5200 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 5200 2100 50  0001 C CNN
	1    5200 2150
	1    0    0    -1  
$EndComp
Text Label 4500 2500 0    50   ~ 0
DotCk
$Comp
L power:+3V3 #PWR?
U 1 1 605F5448
P 5600 1700
AR Path="/CF1C1573/605F5448" Ref="#PWR?"  Part="1" 
AR Path="/605F5448" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5600 1550 50  0001 C CNN
F 1 "+3V3" H 5600 1850 50  0000 C CNN
F 2 "" H 5600 1700 50  0001 C CNN
F 3 "" H 5600 1700 50  0001 C CNN
	1    5600 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605F544E
P 5600 2600
AR Path="/CF1C1573/605F544E" Ref="#PWR?"  Part="1" 
AR Path="/605F544E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5600 2350 50  0001 C CNN
F 1 "GND" H 5600 2450 50  0000 C CNN
F 2 "" H 5600 2600 50  0001 C CNN
F 3 "" H 5600 2600 50  0001 C CNN
	1    5600 2600
	1    0    0    -1  
$EndComp
Text Label 3100 1800 0    50   ~ 0
PHI2r1
Text Label 4500 2100 0    50   ~ 0
PHI2e2
Text Label 4800 1900 2    50   ~ 0
PHI2e
Text Label 4500 2200 0    50   ~ 0
PHI2e3
Text Label 4500 2300 0    50   ~ 0
PHI2e4
Text Label 5600 2000 0    50   ~ 0
PHI2e1
Text Label 5600 2100 0    50   ~ 0
PHI2e2
Text Label 5600 2200 0    50   ~ 0
PHI2e3
Text Label 5600 2300 0    50   ~ 0
PHI2e4
Text Label 5600 2400 0    50   ~ 0
PHI2e5
Text Label 3100 2000 0    50   ~ 0
PHI2r2
$Comp
L power:+3V3 #PWR?
U 1 1 605F545F
P 7100 3250
AR Path="/CF1C1573/605F545F" Ref="#PWR?"  Part="1" 
AR Path="/605F545F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7100 3100 50  0001 C CNN
F 1 "+3V3" H 7100 3400 50  0000 C CNN
F 2 "" H 7100 3250 50  0001 C CNN
F 3 "" H 7100 3250 50  0001 C CNN
	1    7100 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605F5465
P 7100 4150
AR Path="/CF1C1573/605F5465" Ref="#PWR?"  Part="1" 
AR Path="/605F5465" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7100 3900 50  0001 C CNN
F 1 "GND" H 7100 4000 50  0000 C CNN
F 2 "" H 7100 4150 50  0001 C CNN
F 3 "" H 7100 4150 50  0001 C CNN
	1    7100 4150
	1    0    0    -1  
$EndComp
Text Label 5600 1800 0    50   ~ 0
PHI2r1
Text Label 4500 1800 0    50   ~ 0
PHI2r1
Text Label 5600 1900 0    50   ~ 0
PHI2r2
Text Label 3100 1700 0    50   ~ 0
PHI2
$Comp
L GW_Logic:74273 U?
U 1 1 605F546F
P 6700 3700
AR Path="/CF1C1573/605F546F" Ref="U?"  Part="1" 
AR Path="/605F546F" Ref="U?"  Part="1" 
F 0 "U?" H 6700 4300 50  0000 C CNN
F 1 "74LVC273" V 6700 3700 50  0000 C CNN
F 2 "" H 6700 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 6700 3650 50  0001 C CNN
	1    6700 3700
	1    0    0    -1  
$EndComp
Text Label 6300 4150 2    50   ~ 0
~BOD~r
Text Label 5600 2500 0    50   ~ 0
PHI2e6
$Comp
L 74xx:74LS74 U?
U 2 1 605F5477
P 5200 3100
AR Path="/CF1C1573/605F5477" Ref="U?"  Part="2" 
AR Path="/605F5477" Ref="U?"  Part="2" 
F 0 "U?" H 5200 3100 50  0000 C CNN
F 1 "74LVC74PW" H 5200 2750 50  0000 C CNN
F 2 "" H 5200 3100 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 5200 3100 50  0001 C CNN
	2    5200 3100
	1    0    0    -1  
$EndComp
Text Label 4500 3100 0    50   ~ 0
DotCk
Text Label 5500 3000 0    50   ~ 0
PHI2e7
Wire Wire Line
	4500 3000 4900 3000
Wire Wire Line
	4500 3100 4900 3100
Text Label 4500 2600 0    50   ~ 0
~BOD~r
Text Label 4500 3000 0    50   ~ 0
PHI2e6
Text Label 4500 2400 0    50   ~ 0
PHI2e5
Wire Wire Line
	4800 1700 3100 1700
Text Label 4500 2000 0    50   ~ 0
PHI2e1
Wire Wire Line
	4500 2000 4800 2000
Wire Wire Line
	4500 2100 4800 2100
Wire Wire Line
	4800 2200 4500 2200
Wire Wire Line
	4500 2300 4800 2300
Wire Wire Line
	4800 2400 4500 2400
Wire Wire Line
	4500 2500 4800 2500
Wire Wire Line
	4500 2600 4800 2600
Wire Wire Line
	4500 1800 4800 1800
Text Label 4500 3400 0    50   ~ 0
~BOD~r
Wire Wire Line
	5200 3400 4500 3400
Wire Wire Line
	5200 2800 4800 2800
$Comp
L power:+3V3 #PWR?
U 1 1 605F5491
P 4800 2800
AR Path="/CF1C1573/605F5491" Ref="#PWR?"  Part="1" 
AR Path="/605F5491" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4800 2650 50  0001 C CNN
F 1 "+3V3" H 4800 2950 50  0000 C CNN
F 2 "" H 4800 2800 50  0001 C CNN
F 3 "" H 4800 2800 50  0001 C CNN
	1    4800 2800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U?
U 2 1 605F5497
P 5200 3800
AR Path="/CF1C1573/605F5497" Ref="U?"  Part="2" 
AR Path="/605F5497" Ref="U?"  Part="2" 
F 0 "U?" H 5200 3800 50  0000 C CNN
F 1 "74LVC74PW" H 5200 3450 50  0000 C CNN
F 2 "" H 5200 3800 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 5200 3800 50  0001 C CNN
	2    5200 3800
	1    0    0    -1  
$EndComp
Text Label 4500 3800 0    50   ~ 0
DotCk
Text Label 5500 3700 0    50   ~ 0
PHI2e8
Wire Wire Line
	4500 3700 4900 3700
Wire Wire Line
	4500 3800 4900 3800
Text Label 4500 3700 0    50   ~ 0
PHI2e7
Text Label 4500 4100 0    50   ~ 0
~BOD~r
Wire Wire Line
	5200 4100 4500 4100
Wire Wire Line
	5200 3500 5600 3500
$Comp
L power:+3V3 #PWR?
U 1 1 605F54A5
P 5600 3500
AR Path="/CF1C1573/605F54A5" Ref="#PWR?"  Part="1" 
AR Path="/605F54A5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5600 3350 50  0001 C CNN
F 1 "+3V3" H 5600 3650 50  0000 C CNN
F 2 "" H 5600 3500 50  0001 C CNN
F 3 "" H 5600 3500 50  0001 C CNN
	1    5600 3500
	1    0    0    -1  
$EndComp
Text Label 6300 4050 2    50   ~ 0
PHI2e8
Text Label 7100 3450 0    50   ~ 0
Ref1
Text Label 7100 3550 0    50   ~ 0
Ref2
Text Label 7100 3650 0    50   ~ 0
Ref3
Text Label 7100 3750 0    50   ~ 0
Ref4
Text Label 7100 3850 0    50   ~ 0
Ref5
Text Label 7100 3950 0    50   ~ 0
Ref6
Text Label 7100 4050 0    50   ~ 0
Ref7
$Comp
L power:+3V3 #PWR?
U 1 1 605F54B3
P 6300 3250
AR Path="/CF1C1573/605F54B3" Ref="#PWR?"  Part="1" 
AR Path="/605F54B3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6300 3100 50  0001 C CNN
F 1 "+3V3" H 6300 3400 50  0000 C CNN
F 2 "" H 6300 3250 50  0001 C CNN
F 3 "" H 6300 3250 50  0001 C CNN
	1    6300 3250
	1    0    0    -1  
$EndComp
Text Label 6300 3450 2    50   ~ 0
Ref1
Text Label 6300 3550 2    50   ~ 0
Ref2
Text Label 6300 3650 2    50   ~ 0
Ref3
Text Label 6300 3750 2    50   ~ 0
Ref4
Text Label 6300 3850 2    50   ~ 0
Ref5
Text Label 6300 3950 2    50   ~ 0
Ref6
Text Label 7100 3350 0    50   ~ 0
Ref0
Text Label 6300 3350 2    50   ~ 0
Ref0
$Comp
L 74xx:74LS74 U?
U 2 1 605F54C1
P 5200 4500
AR Path="/CF1C1573/605F54C1" Ref="U?"  Part="2" 
AR Path="/605F54C1" Ref="U?"  Part="2" 
F 0 "U?" H 5200 4500 50  0000 C CNN
F 1 "74LVC74PW" H 5200 4150 50  0000 C CNN
F 2 "" H 5200 4500 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 5200 4500 50  0001 C CNN
	2    5200 4500
	1    0    0    -1  
$EndComp
Text Label 4500 4800 0    50   ~ 0
~BOD~r
Wire Wire Line
	5200 4800 4500 4800
Wire Wire Line
	5200 4200 5600 4200
$Comp
L power:+3V3 #PWR?
U 1 1 605F54CA
P 5600 4200
AR Path="/CF1C1573/605F54CA" Ref="#PWR?"  Part="1" 
AR Path="/605F54CA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5600 4050 50  0001 C CNN
F 1 "+3V3" H 5600 4350 50  0000 C CNN
F 2 "" H 5600 4200 50  0001 C CNN
F 3 "" H 5600 4200 50  0001 C CNN
	1    5600 4200
	1    0    0    -1  
$EndComp
Text Label 4500 4500 0    50   ~ 0
PHI2e8
Wire Wire Line
	4500 4500 4900 4500
Text Label 3800 4300 0    50   ~ 0
Ref7
Text Label 5500 4400 0    50   ~ 0
Ref8
Wire Wire Line
	4600 4400 4900 4400
$Comp
L 74xx:74LS32 U?
U 1 1 605F54D5
P 4300 4400
AR Path="/CF1C1573/605F54D5" Ref="U?"  Part="1" 
AR Path="/605F54D5" Ref="U?"  Part="1" 
F 0 "U?" H 4300 4400 50  0000 C CNN
F 1 "74LS02" H 4300 4200 50  0000 C CNN
F 2 "" H 4300 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 4300 4400 50  0001 C CNN
	1    4300 4400
	1    0    0    -1  
$EndComp
Text Label 3800 4500 0    50   ~ 0
Ref8
Wire Wire Line
	3800 4300 4000 4300
Wire Wire Line
	3800 4500 4000 4500
Wire Wire Line
	3100 1800 4000 1800
Wire Wire Line
	4600 1900 4800 1900
$Comp
L 74xx:74LS02 U?
U 1 2 605F54E0
P 4300 1900
AR Path="/CF1C1573/605F54E0" Ref="U?"  Part="1" 
AR Path="/605F54E0" Ref="U?"  Part="1" 
F 0 "U?" H 4300 1900 50  0000 C CNN
F 1 "74LS02" H 4300 1700 50  0000 C CNN
F 2 "" H 4300 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 4300 1900 50  0001 C CNN
	1    4300 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2000 3400 2000
$Comp
L 74xx:74LS04 U?
U 1 1 605F54E7
P 3700 2000
AR Path="/CF1C1573/605F54E7" Ref="U?"  Part="1" 
AR Path="/605F54E7" Ref="U?"  Part="1" 
F 0 "U?" H 3650 2000 50  0000 C CNN
F 1 "74LS04" H 3700 1800 50  0000 C CNN
F 2 "" H 3700 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3700 2000 50  0001 C CNN
	1    3700 2000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
