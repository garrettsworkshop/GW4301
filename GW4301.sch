EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 4
Title "GW4301A"
Date "2020-09-18"
Rev "1.0"
Comp "Garrett's Workshop"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U3
U 1 1 5C7854FA
P 17350 1800
F 0 "U3" H 17350 2000 50  0000 C CNN
F 1 "LD1117S33" H 17350 1900 50  0000 C BNN
F 2 "stdpads:SOT-223" H 17350 2000 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 17450 1550 50  0001 C CNN
	1    17350 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x22_Counter_Clockwise J1
U 1 1 5D925932
P 1250 5050
F 0 "J1" H 1300 6267 50  0000 C CNN
F 1 "C64" H 1300 6176 50  0000 C CNN
F 2 "stdpads:AppleIIgsMemoryExpansion_Edge" H 1250 5050 50  0001 C CNN
F 3 "~" H 1250 5050 50  0001 C CNN
	1    1250 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5D929892
P 1050 4050
F 0 "#PWR0121" H 1050 3800 50  0001 C CNN
F 1 "GND" H 1050 3900 50  0000 C CNN
F 2 "" H 1050 4050 50  0001 C CNN
F 3 "" H 1050 4050 50  0001 C CNN
	1    1050 4050
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 5D92AD3D
P 950 4250
F 0 "#PWR0122" H 950 4100 50  0001 C CNN
F 1 "+5V" H 950 4400 50  0000 C CNN
F 2 "" H 950 4250 50  0001 C CNN
F 3 "" H 950 4250 50  0001 C CNN
	1    950  4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4250 1050 4250
Wire Wire Line
	1050 4250 1050 4150
Connection ~ 1050 4250
Text Label 1050 4350 2    50   ~ 0
~IRQ~
Text Label 1050 4450 2    50   ~ 0
R~W~
Text Label 1050 4550 2    50   ~ 0
DotClk
Text Label 1050 4650 2    50   ~ 0
~IO1~
Text Label 1050 4750 2    50   ~ 0
~GAME~
Text Label 1050 4850 2    50   ~ 0
~EXROM~
Text Label 1050 4950 2    50   ~ 0
~IO2~
Text Label 1050 5050 2    50   ~ 0
~ROML~
Text Label 1050 5150 2    50   ~ 0
BA
Text Label 1050 5250 2    50   ~ 0
~DMA~
Text Label 1050 5350 2    50   ~ 0
D7
Text Label 1050 5450 2    50   ~ 0
D6
Text Label 1050 5550 2    50   ~ 0
D5
Text Label 1050 5650 2    50   ~ 0
D4
Text Label 1050 5750 2    50   ~ 0
D3
Text Label 1050 5850 2    50   ~ 0
D2
Text Label 1050 5950 2    50   ~ 0
D1
Text Label 1050 6050 2    50   ~ 0
D0
$Comp
L power:GND #PWR0123
U 1 1 5D93E4A2
P 1050 6150
F 0 "#PWR0123" H 1050 5900 50  0001 C CNN
F 1 "GND" H 1050 6000 50  0000 C CNN
F 2 "" H 1050 6150 50  0001 C CNN
F 3 "" H 1050 6150 50  0001 C CNN
	1    1050 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5D93E7EE
P 1550 6150
F 0 "#PWR0124" H 1550 5900 50  0001 C CNN
F 1 "GND" H 1550 6000 50  0000 C CNN
F 2 "" H 1550 6150 50  0001 C CNN
F 3 "" H 1550 6150 50  0001 C CNN
	1    1550 6150
	1    0    0    -1  
$EndComp
Text Label 1550 4150 0    50   ~ 0
~ROMH~
Text Label 1550 4250 0    50   ~ 0
~RESET~
Text Label 1550 4350 0    50   ~ 0
~NMI~
Text Label 1550 4450 0    50   ~ 0
PHI2
Text Label 1550 4550 0    50   ~ 0
A15
Text Label 1550 4650 0    50   ~ 0
A14
Text Label 1550 4750 0    50   ~ 0
A13
Text Label 1550 4850 0    50   ~ 0
A12
Text Label 1550 4950 0    50   ~ 0
A11
Text Label 1550 5050 0    50   ~ 0
A10
Text Label 1550 5150 0    50   ~ 0
A9
Text Label 1550 5250 0    50   ~ 0
A8
Text Label 1550 5350 0    50   ~ 0
A7
Text Label 1550 5450 0    50   ~ 0
A6
Text Label 1550 5550 0    50   ~ 0
A5
Text Label 1550 5650 0    50   ~ 0
A4
Text Label 1550 5750 0    50   ~ 0
A3
Text Label 1550 5850 0    50   ~ 0
A2
Text Label 1550 5950 0    50   ~ 0
A1
Text Label 1550 6050 0    50   ~ 0
A0
$Comp
L power:GND #PWR0125
U 1 1 5D94B9C2
P 1550 4050
F 0 "#PWR0125" H 1550 3800 50  0001 C CNN
F 1 "GND" H 1550 3900 50  0000 C CNN
F 2 "" H 1550 4050 50  0001 C CNN
F 3 "" H 1550 4050 50  0001 C CNN
	1    1550 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	14650 1950 14650 2000
Wire Wire Line
	14650 1700 14650 1750
Wire Wire Line
	14650 1700 14250 1700
Wire Wire Line
	14250 1700 14250 1750
Wire Wire Line
	14250 1950 14250 2000
Wire Wire Line
	14250 2000 14650 2000
Wire Wire Line
	13850 1100 13450 1100
Wire Wire Line
	13450 1100 13450 1150
Wire Wire Line
	13450 1350 13450 1400
Wire Wire Line
	13450 1400 13850 1400
$Comp
L power:+5V #PWR0104
U 1 1 5DB0E6DE
P 13450 1100
F 0 "#PWR0104" H 13450 950 50  0001 C CNN
F 1 "+5V" H 13450 1250 50  0000 C CNN
F 2 "" H 13450 1100 50  0001 C CNN
F 3 "" H 13450 1100 50  0001 C CNN
	1    13450 1100
	-1   0    0    -1  
$EndComp
Connection ~ 13450 1100
Wire Wire Line
	13850 1100 13850 1150
Wire Wire Line
	13850 1350 13850 1400
Wire Wire Line
	14650 1100 14650 1150
Wire Wire Line
	14650 1350 14650 1400
Wire Wire Line
	14250 1100 14250 1150
Wire Wire Line
	14250 1350 14250 1400
Wire Wire Line
	14250 1100 14650 1100
Wire Wire Line
	14250 1400 14650 1400
Wire Wire Line
	15050 1400 15050 1350
Wire Wire Line
	15050 1150 15050 1100
Wire Wire Line
	15450 1100 15450 1150
Wire Wire Line
	15450 1350 15450 1400
$Comp
L power:+3V3 #PWR0105
U 1 1 5DB2627E
P 14250 1100
F 0 "#PWR0105" H 14250 950 50  0001 C CNN
F 1 "+3V3" H 14250 1250 50  0000 C CNN
F 2 "" H 14250 1100 50  0001 C CNN
F 3 "" H 14250 1100 50  0001 C CNN
	1    14250 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	15850 1400 16250 1400
Wire Wire Line
	15450 1100 15850 1100
Wire Wire Line
	15450 1400 15850 1400
Wire Wire Line
	15850 1400 15850 1350
Connection ~ 15850 1400
Wire Wire Line
	15850 1150 15850 1100
Connection ~ 15850 1100
Wire Wire Line
	15850 1100 16250 1100
Wire Wire Line
	16250 1100 16250 1150
Wire Wire Line
	16250 1350 16250 1400
Connection ~ 14250 1100
$Comp
L power:GND #PWR0107
U 1 1 5DB414D4
P 16250 1400
F 0 "#PWR0107" H 16250 1150 50  0001 C CNN
F 1 "GND" H 16250 1250 50  0000 C CNN
F 2 "" H 16250 1400 50  0001 C CNN
F 3 "" H 16250 1400 50  0001 C CNN
	1    16250 1400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	15050 1100 15450 1100
Connection ~ 15450 1100
Wire Wire Line
	15050 1400 15450 1400
Connection ~ 15450 1400
$Comp
L Device:C_Small C1
U 1 1 5DC81FC4
P 13450 1250
F 0 "C1" H 13500 1300 50  0000 L CNN
F 1 "2u2" H 13500 1200 50  0000 L CNN
F 2 "stdpads:C_0805" H 13450 1250 50  0001 C CNN
F 3 "~" H 13450 1250 50  0001 C CNN
	1    13450 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5DC88DFE
P 13850 1250
F 0 "C2" H 13900 1300 50  0000 L CNN
F 1 "2u2" H 13900 1200 50  0000 L CNN
F 2 "stdpads:C_0805" H 13850 1250 50  0001 C CNN
F 3 "~" H 13850 1250 50  0001 C CNN
	1    13850 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5DC89E6A
P 14650 1250
F 0 "C5" H 14700 1300 50  0000 L CNN
F 1 "2u2" H 14700 1200 50  0000 L CNN
F 2 "stdpads:C_0805" H 14650 1250 50  0001 C CNN
F 3 "~" H 14650 1250 50  0001 C CNN
	1    14650 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5DC89E70
P 14250 1250
F 0 "C4" H 14300 1300 50  0000 L CNN
F 1 "2u2" H 14300 1200 50  0000 L CNN
F 2 "stdpads:C_0805" H 14250 1250 50  0001 C CNN
F 3 "~" H 14250 1250 50  0001 C CNN
	1    14250 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5DC8D877
P 15050 1250
F 0 "C6" H 15100 1300 50  0000 L CNN
F 1 "2u2" H 15100 1200 50  0000 L CNN
F 2 "stdpads:C_0805" H 15050 1250 50  0001 C CNN
F 3 "~" H 15050 1250 50  0001 C CNN
	1    15050 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5DC8D87D
P 15450 1250
F 0 "C7" H 15500 1300 50  0000 L CNN
F 1 "2u2" H 15500 1200 50  0000 L CNN
F 2 "stdpads:C_0805" H 15450 1250 50  0001 C CNN
F 3 "~" H 15450 1250 50  0001 C CNN
	1    15450 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5DC917AC
P 15850 1250
F 0 "C8" H 15900 1300 50  0000 L CNN
F 1 "2u2" H 15900 1200 50  0000 L CNN
F 2 "stdpads:C_0805" H 15850 1250 50  0001 C CNN
F 3 "~" H 15850 1250 50  0001 C CNN
	1    15850 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5DC917B2
P 16250 1250
F 0 "C9" H 16300 1300 50  0000 L CNN
F 1 "2u2" H 16300 1200 50  0000 L CNN
F 2 "stdpads:C_0805" H 16250 1250 50  0001 C CNN
F 3 "~" H 16250 1250 50  0001 C CNN
	1    16250 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5DC95100
P 14650 1850
F 0 "C11" H 14700 1900 50  0000 L CNN
F 1 "2u2" H 14700 1800 50  0000 L CNN
F 2 "stdpads:C_0805" H 14650 1850 50  0001 C CNN
F 3 "~" H 14650 1850 50  0001 C CNN
	1    14650 1850
	1    0    0    -1  
$EndComp
Connection ~ 16250 1400
$Comp
L power:+3V3 #PWR0112
U 1 1 5CC82E0E
P 17650 1800
F 0 "#PWR0112" H 17650 1650 50  0001 C CNN
F 1 "+3V3" H 17650 1950 50  0000 C CNN
F 2 "" H 17650 1800 50  0001 C CNN
F 3 "" H 17650 1800 50  0001 C CNN
	1    17650 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	14650 1100 15050 1100
Connection ~ 14650 1100
Connection ~ 15050 1100
Wire Wire Line
	15050 1400 14650 1400
Connection ~ 15050 1400
Connection ~ 14650 1400
Wire Wire Line
	14250 1400 13850 1400
Connection ~ 14250 1400
Connection ~ 13850 1400
$Comp
L power:GND #PWR0119
U 1 1 5E021D2F
P 15450 2000
F 0 "#PWR0119" H 15450 1750 50  0001 C CNN
F 1 "GND" H 15450 1850 50  0000 C CNN
F 2 "" H 15450 2000 50  0001 C CNN
F 3 "" H 15450 2000 50  0001 C CNN
	1    15450 2000
	-1   0    0    -1  
$EndComp
Connection ~ 14650 2000
$Comp
L Device:C_Small C12
U 1 1 5D9A3E72
P 15050 1850
F 0 "C12" H 15100 1900 50  0000 L CNN
F 1 "2u2" H 15100 1800 50  0000 L CNN
F 2 "stdpads:C_0805" H 15050 1850 50  0001 C CNN
F 3 "~" H 15050 1850 50  0001 C CNN
	1    15050 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 5D9A3E78
P 15450 1850
F 0 "C13" H 15500 1900 50  0000 L CNN
F 1 "2u2" H 15500 1800 50  0000 L CNN
F 2 "stdpads:C_0805" H 15450 1850 50  0001 C CNN
F 3 "~" H 15450 1850 50  0001 C CNN
	1    15450 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	14650 1700 15050 1700
Wire Wire Line
	15050 1700 15050 1750
Connection ~ 14650 1700
Wire Wire Line
	15050 1700 15450 1700
Wire Wire Line
	15450 1700 15450 1750
Connection ~ 15050 1700
Wire Wire Line
	14650 2000 15050 2000
Wire Wire Line
	15450 2000 15450 1950
Wire Wire Line
	15050 1950 15050 2000
Connection ~ 15050 2000
Wire Wire Line
	15050 2000 15450 2000
Connection ~ 15450 2000
$Comp
L power:+5V #PWR0135
U 1 1 5CC6DB21
P 17050 1800
F 0 "#PWR0135" H 17050 1650 50  0001 C CNN
F 1 "+5V" H 17050 1950 50  0000 C CNN
F 2 "" H 17050 1800 50  0001 C CNN
F 3 "" H 17050 1800 50  0001 C CNN
	1    17050 1800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 5CC73F9A
P 17350 2100
F 0 "#PWR0136" H 17350 1850 50  0001 C CNN
F 1 "GND" H 17350 1950 50  0000 C CNN
F 2 "" H 17350 2100 50  0001 C CNN
F 3 "" H 17350 2100 50  0001 C CNN
	1    17350 2100
	-1   0    0    -1  
$EndComp
$Sheet
S 13050 3550 700  350 
U CF1C1573
F0 "Docs" 50
F1 "Docs.sch" 50
$EndSheet
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5CC54EF4
P -3700 2750
F 0 "H1" H -3600 2801 50  0000 L CNN
F 1 " " H -3600 2710 50  0000 L CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H -3700 2750 50  0001 C CNN
F 3 "~" H -3700 2750 50  0001 C CNN
	1    -3700 2750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5CC55365
P -2700 2750
F 0 "H3" H -2600 2801 50  0000 L CNN
F 1 " " H -2600 2710 50  0000 L CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H -2700 2750 50  0001 C CNN
F 3 "~" H -2700 2750 50  0001 C CNN
	1    -2700 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5CC63622
P -2200 2850
F 0 "#PWR0132" H -2200 2600 50  0001 C CNN
F 1 "GND" H -2200 2700 50  0000 C CNN
F 2 "" H -2200 2850 50  0001 C CNN
F 3 "" H -2200 2850 50  0001 C CNN
	1    -2200 2850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5CC557BA
P -2200 2750
F 0 "H4" H -2300 2801 50  0000 R CNN
F 1 " " H -2300 2710 50  0000 R CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H -2200 2750 50  0001 C CNN
F 3 "~" H -2200 2750 50  0001 C CNN
	1    -2200 2750
	-1   0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5CC557B3
P -3200 2750
F 0 "H2" H -3300 2801 50  0000 R CNN
F 1 " " H -3300 2710 50  0000 R CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H -3200 2750 50  0001 C CNN
F 3 "~" H -3200 2750 50  0001 C CNN
	1    -3200 2750
	-1   0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID3
U 1 1 5CC7E95D
P -2700 2450
F 0 "FID3" H -2600 2496 50  0000 L CNN
F 1 "Fiducial" H -2600 2405 50  0000 L CNN
F 2 "stdpads:Fiducial" H -2700 2450 50  0001 C CNN
F 3 "~" H -2700 2450 50  0001 C CNN
	1    -2700 2450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID4
U 1 1 5CC7EABE
P -2200 2450
F 0 "FID4" H -2100 2496 50  0000 L CNN
F 1 "Fiducial" H -2100 2405 50  0000 L CNN
F 2 "stdpads:Fiducial" H -2200 2450 50  0001 C CNN
F 3 "~" H -2200 2450 50  0001 C CNN
	1    -2200 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2200 2850 -2700 2850
Connection ~ -2200 2850
Connection ~ -3200 2850
Wire Wire Line
	-3200 2850 -3700 2850
Connection ~ -2700 2850
Wire Wire Line
	-2700 2850 -3200 2850
$Comp
L Mechanical:Fiducial FID2
U 1 1 5CC7E60A
P -3200 2450
F 0 "FID2" H -3100 2496 50  0000 L CNN
F 1 "Fiducial" H -3100 2405 50  0000 L CNN
F 2 "stdpads:Fiducial" H -3200 2450 50  0001 C CNN
F 3 "~" H -3200 2450 50  0001 C CNN
	1    -3200 2450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID1
U 1 1 5CC4F6A4
P -3700 2450
F 0 "FID1" H -3600 2496 50  0000 L CNN
F 1 "Fiducial" H -3600 2405 50  0000 L CNN
F 2 "stdpads:Fiducial" H -3700 2450 50  0001 C CNN
F 3 "~" H -3700 2450 50  0001 C CNN
	1    -3700 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5DC950FA
P 14250 1850
F 0 "C10" H 14300 1900 50  0000 L CNN
F 1 "2u2" H 14300 1800 50  0000 L CNN
F 2 "stdpads:C_0805" H 14250 1850 50  0001 C CNN
F 3 "~" H 14250 1850 50  0001 C CNN
	1    14250 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61B35D6E
P 14250 1700
F 0 "#PWR?" H 14250 1550 50  0001 C CNN
F 1 "+3V3" H 14250 1850 50  0000 C CNN
F 2 "" H 14250 1700 50  0001 C CNN
F 3 "" H 14250 1700 50  0001 C CNN
	1    14250 1700
	1    0    0    -1  
$EndComp
Connection ~ 14250 1700
$Comp
L Power_Supervisor:MAX811LEUS-T U?
U 1 1 61B580C5
P 1500 7200
AR Path="/CF1C1573/61B580C5" Ref="U?"  Part="1" 
AR Path="/61B580C5" Ref="U?"  Part="1" 
F 0 "U?" H 1500 7450 50  0000 L CNN
F 1 "MAX811LEUS-T" H 1400 6950 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-143" H 1600 6900 50  0001 L CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX811-MAX812.pdf" H 1150 6500 50  0001 C CNN
	1    1500 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61B580CB
P 1500 6900
AR Path="/CF1C1573/61B580CB" Ref="#PWR?"  Part="1" 
AR Path="/61B580CB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1500 6750 50  0001 C CNN
F 1 "+3V3" H 1500 7050 50  0000 C CNN
F 2 "" H 1500 6900 50  0001 C CNN
F 3 "" H 1500 6900 50  0001 C CNN
	1    1500 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61B580D1
P 1500 7500
AR Path="/CF1C1573/61B580D1" Ref="#PWR?"  Part="1" 
AR Path="/61B580D1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1500 7250 50  0001 C CNN
F 1 "GND" H 1500 7350 50  0000 C CNN
F 2 "" H 1500 7500 50  0001 C CNN
F 3 "" H 1500 7500 50  0001 C CNN
	1    1500 7500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1100 7200 1100 6900
Wire Wire Line
	1100 6900 1500 6900
Connection ~ 1500 6900
$Comp
L 74xx:74LS74 U?
U 1 1 61B580E2
P 2800 7300
AR Path="/CF1C1573/61B580E2" Ref="U?"  Part="1" 
AR Path="/61B580E2" Ref="U?"  Part="1" 
F 0 "U?" H 2800 7300 50  0000 C CNN
F 1 "74LVC74PW" H 2800 6950 50  0000 C CNN
F 2 "" H 2800 7300 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 2800 7300 50  0001 C CNN
	1    2800 7300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U?
U 2 1 61B580E8
P 3700 7300
AR Path="/CF1C1573/61B580E8" Ref="U?"  Part="2" 
AR Path="/61B580E8" Ref="U?"  Part="2" 
F 0 "U?" H 3700 7300 50  0000 C CNN
F 1 "74LVC74PW" H 3700 6950 50  0000 C CNN
F 2 "" H 3700 7300 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 3700 7300 50  0001 C CNN
	2    3700 7300
	1    0    0    -1  
$EndComp
Text Label 2000 7200 0    50   ~ 0
~BOD~
Wire Wire Line
	3100 7200 3400 7200
Wire Wire Line
	3300 7600 3700 7600
Wire Wire Line
	2400 7600 2800 7600
Wire Wire Line
	2400 7200 2500 7200
Wire Wire Line
	2400 7200 2400 7600
Wire Wire Line
	3400 7300 3200 7300
Wire Wire Line
	3200 7700 2300 7700
Wire Wire Line
	2300 7700 2300 7300
Wire Wire Line
	3200 7300 3200 7700
Wire Wire Line
	2300 7300 2500 7300
$Comp
L 74xx:74LS74 U?
U 1 1 61B580FF
P 4600 7300
AR Path="/CF1C1573/61B580FF" Ref="U?"  Part="1" 
AR Path="/61B580FF" Ref="U?"  Part="1" 
F 0 "U?" H 4600 7300 50  0000 C CNN
F 1 "74LVC74PW" H 4600 6950 50  0000 C CNN
F 2 "" H 4600 7300 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 4600 7300 50  0001 C CNN
	1    4600 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 7600 4200 7600
Wire Wire Line
	4300 7300 4100 7300
Wire Wire Line
	4100 7300 4100 7700
Wire Wire Line
	4100 7700 3200 7700
Connection ~ 3200 7700
Wire Wire Line
	4000 7200 4300 7200
Text Label 4900 7200 0    50   ~ 0
~BOD~r
Text Label 4900 7400 0    50   ~ 0
BODr
Connection ~ 2300 7300
Wire Wire Line
	2000 7300 2300 7300
Text Label 2000 7300 0    50   ~ 0
DotCk
Connection ~ 2400 7200
Wire Wire Line
	1900 7200 2400 7200
Wire Wire Line
	1500 6900 2800 6900
Wire Wire Line
	2800 6900 2800 7000
Wire Wire Line
	2800 6900 3300 6900
Wire Wire Line
	3300 6900 3300 7600
Connection ~ 2800 6900
Wire Wire Line
	3300 6900 3700 6900
Wire Wire Line
	3700 6900 3700 7000
Connection ~ 3300 6900
Connection ~ 3700 6900
Wire Wire Line
	3700 6900 4200 6900
Wire Wire Line
	4600 6900 4600 7000
Wire Wire Line
	4200 7600 4200 6900
Connection ~ 4200 6900
Wire Wire Line
	4200 6900 4600 6900
NoConn ~ 3100 7400
NoConn ~ 4000 7400
$Comp
L power:+3V3 #PWR?
U 1 1 61B7620F
P -1450 7250
AR Path="/CF1C1573/61B7620F" Ref="#PWR?"  Part="1" 
AR Path="/61B7620F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -1450 7100 50  0001 C CNN
F 1 "+3V3" H -1450 7400 50  0000 C CNN
F 2 "" H -1450 7250 50  0001 C CNN
F 3 "" H -1450 7250 50  0001 C CNN
	1    -1450 7250
	1    0    0    -1  
$EndComp
Connection ~ -1450 5350
Wire Wire Line
	-1450 5350 -1450 5450
$Comp
L power:+3V3 #PWR?
U 1 1 61B6BB96
P -1450 5350
AR Path="/CF1C1573/61B6BB96" Ref="#PWR?"  Part="1" 
AR Path="/61B6BB96" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -1450 5200 50  0001 C CNN
F 1 "+3V3" H -1450 5500 50  0000 C CNN
F 2 "" H -1450 5350 50  0001 C CNN
F 3 "" H -1450 5350 50  0001 C CNN
	1    -1450 5350
	1    0    0    -1  
$EndComp
Connection ~ -1450 7650
Wire Wire Line
	-1450 7650 -1450 7550
$Comp
L power:GND #PWR?
U 1 1 61B6349A
P -1450 7650
F 0 "#PWR?" H -1450 7400 50  0001 C CNN
F 1 "GND" H -1450 7500 50  0000 C CNN
F 2 "" H -1450 7650 50  0001 C CNN
F 3 "" H -1450 7650 50  0001 C CNN
	1    -1450 7650
	1    0    0    -1  
$EndComp
$Comp
L GW_RAM:SDRAM-16Mx16-TSOP2-54 U?
U 1 1 61B60676
P -950 6350
F 0 "U?" H -950 7500 50  0000 C CNN
F 1 "W9864G6KH" V -950 6350 50  0000 C CNN
F 2 "stdpads:Winbond_TSOPII-54" H -950 4700 50  0001 C CIN
F 3 "" H -950 6100 50  0001 C CNN
	1    -950 6350
	1    0    0    -1  
$EndComp
Text Label -450 6250 0    50   ~ 0
RD6
Text Label -450 6350 0    50   ~ 0
RD5
Text Label -450 6450 0    50   ~ 0
RD4
Text Label -450 6550 0    50   ~ 0
RD3
Text Label -450 6650 0    50   ~ 0
RD2
Text Label -450 6750 0    50   ~ 0
RD1
Text Label -450 6850 0    50   ~ 0
RD0
NoConn ~ -450 5350
NoConn ~ -450 5450
NoConn ~ -450 5550
NoConn ~ -450 5650
NoConn ~ -450 5750
NoConn ~ -450 5850
NoConn ~ -450 5950
NoConn ~ -450 6050
$Comp
L power:+3V3 #PWR?
U 1 1 61FBA8DD
P -200 6950
AR Path="/CF1C1573/61FBA8DD" Ref="#PWR?"  Part="1" 
AR Path="/61FBA8DD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -200 6800 50  0001 C CNN
F 1 "+3V3" H -200 7100 50  0000 C CNN
F 2 "" H -200 6950 50  0001 C CNN
F 3 "" H -200 6950 50  0001 C CNN
	1    -200 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	-200 6950 -450 6950
Text Label -250 7050 2    50   ~ 0
RDQM
Text Label -250 7350 2    50   ~ 0
R~CS~
Text Label -250 7450 2    50   ~ 0
R~WE~
Wire Wire Line
	-450 7050 -250 7050
Wire Wire Line
	-250 7350 -450 7350
Wire Wire Line
	-250 7450 -450 7450
Wire Wire Line
	-250 7550 -450 7550
Wire Wire Line
	-250 7650 -450 7650
Wire Wire Line
	-1450 7350 -1550 7350
Wire Wire Line
	-1550 7350 -1550 7850
Wire Wire Line
	-1550 7850 -250 7850
Text Label -250 7550 2    50   ~ 0
R~CAS~
Text Label -250 7650 2    50   ~ 0
R~RAS~
Text Label -250 7850 2    50   ~ 0
RCLK
$Comp
L GW_Logic:74257 U?
U 1 1 61B5819E
P -3500 7600
AR Path="/CF1C1573/61B5819E" Ref="U?"  Part="1" 
AR Path="/61B5819E" Ref="U?"  Part="1" 
F 0 "U?" H -3500 8100 50  0000 C CNN
F 1 "74LVC257" V -3500 7600 50  0000 C CNN
F 2 "" H -3500 7350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H -3500 7350 50  0001 C CNN
	1    -3500 7600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61B581AA
P -3100 7250
AR Path="/CF1C1573/61B581AA" Ref="#PWR?"  Part="1" 
AR Path="/61B581AA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -3100 7100 50  0001 C CNN
F 1 "+3V3" H -3100 7400 50  0000 C CNN
F 2 "" H -3100 7250 50  0001 C CNN
F 3 "" H -3100 7250 50  0001 C CNN
	1    -3100 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3100 7950 -3100 7850
$Comp
L power:GND #PWR?
U 1 1 61B581B9
P -3100 7950
AR Path="/CF1C1573/61B581B9" Ref="#PWR?"  Part="1" 
AR Path="/61B581B9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -3100 7700 50  0001 C CNN
F 1 "GND" H -3100 7800 50  0000 C CNN
F 2 "" H -3100 7950 50  0001 C CNN
F 3 "" H -3100 7950 50  0001 C CNN
	1    -3100 7950
	1    0    0    -1  
$EndComp
Connection ~ -3100 7950
Text Label -1900 7650 2    50   ~ 0
RA0
Text Label -1900 7550 2    50   ~ 0
RA1
Text Label -1900 7450 2    50   ~ 0
RA2
Text Label -1900 7350 2    50   ~ 0
RA3
Text Label -4000 7950 0    50   ~ 0
A0
Text Label -4000 7750 0    50   ~ 0
A1
Text Label -4000 7550 0    50   ~ 0
A2
Text Label -4000 7350 0    50   ~ 0
A3
Text Label -4000 6750 0    50   ~ 0
A4
Text Label -4000 6550 0    50   ~ 0
A5
Text Label -4000 6350 0    50   ~ 0
A6
Text Label -4000 6150 0    50   ~ 0
A7
Text Label -1900 6150 2    50   ~ 0
RA7
Text Label -1900 6250 2    50   ~ 0
RA6
Text Label -1900 6350 2    50   ~ 0
RA5
Text Label -1900 6450 2    50   ~ 0
RA4
Text Label -4000 7850 0    50   ~ 0
B0
Text Label -4000 7650 0    50   ~ 0
B1
Text Label -4000 7450 0    50   ~ 0
B2
Text Label -4000 7250 0    50   ~ 0
B3
Text Label -4000 6650 0    50   ~ 0
B4
Text Label -4000 6450 0    50   ~ 0
B5
Text Label -4000 6250 0    50   ~ 0
B6
Text Label -4000 6050 0    50   ~ 0
B7
Text Label -1900 6050 2    50   ~ 0
RA8
Text Label -1900 5950 2    50   ~ 0
RA9
Text Label -4000 5750 0    50   ~ 0
W0
Text Label -4000 5650 0    50   ~ 0
W1
Text Label -1900 5650 2    50   ~ 0
RA10
Text Label -1900 5450 2    50   ~ 0
RA11
Text Label -4000 5550 0    50   ~ 0
W2
Text Label -4000 5450 0    50   ~ 0
W3
Text Label -1900 5350 2    50   ~ 0
RBA0
Text Label -1650 7050 0    50   ~ 0
RBA1
Text Label -4000 5350 0    50   ~ 0
W4
Text Label -4000 5250 0    50   ~ 0
W5
Wire Wire Line
	-2800 6950 -4000 6950
Wire Wire Line
	-4000 7650 -3900 7650
Wire Wire Line
	-4000 7750 -3900 7750
Wire Wire Line
	-4000 7850 -3900 7850
Wire Wire Line
	-4000 7950 -3900 7950
Wire Wire Line
	-4000 7250 -3900 7250
Wire Wire Line
	-4000 7350 -3900 7350
Wire Wire Line
	-4000 7450 -3900 7450
Wire Wire Line
	-4000 7550 -3900 7550
Wire Wire Line
	-2900 7750 -3100 7750
Connection ~ -2900 7050
Wire Wire Line
	-2900 7050 -4000 7050
Wire Wire Line
	-2900 7050 -2900 7750
Wire Wire Line
	-1900 7650 -3100 7650
Wire Wire Line
	-3100 7550 -1900 7550
Wire Wire Line
	-1900 7450 -3100 7450
Wire Wire Line
	-3100 7350 -1900 7350
Wire Wire Line
	-1900 6450 -3100 6450
Wire Wire Line
	-3100 6250 -1900 6250
Text Label -4000 6950 0    50   ~ 0
ModeReg
Text Label -4000 7050 0    50   ~ 0
Amux
$Comp
L 74xx:74LS32 U?
U 1 1 61D0C1BF
P -2400 5650
AR Path="/CF1C1573/61D0C1BF" Ref="U?"  Part="1" 
AR Path="/61D0C1BF" Ref="U?"  Part="1" 
F 0 "U?" H -2400 5650 50  0000 C CNN
F 1 "74LS02" H -2400 5450 50  0000 C CNN
F 2 "" H -2400 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H -2400 5650 50  0001 C CNN
	1    -2400 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2900 6050 -1900 6050
Wire Wire Line
	-1900 5950 -2800 5950
Wire Wire Line
	-2900 5750 -2900 6050
Wire Wire Line
	-2800 5650 -2800 5950
Wire Wire Line
	-2700 5750 -2700 5850
Wire Wire Line
	-2700 5850 -4000 5850
Wire Wire Line
	-2900 6550 -2900 7050
Wire Wire Line
	-2800 6350 -3100 6350
Connection ~ -3100 6750
$Comp
L power:GND #PWR?
U 1 1 61B581B2
P -3100 6750
AR Path="/CF1C1573/61B581B2" Ref="#PWR?"  Part="1" 
AR Path="/61B581B2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -3100 6500 50  0001 C CNN
F 1 "GND" H -3100 6600 50  0000 C CNN
F 2 "" H -3100 6750 50  0001 C CNN
F 3 "" H -3100 6750 50  0001 C CNN
	1    -3100 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4000 6350 -3900 6350
Wire Wire Line
	-4000 6250 -3900 6250
Wire Wire Line
	-4000 6150 -3900 6150
Wire Wire Line
	-4000 6050 -3900 6050
$Comp
L power:+3V3 #PWR?
U 1 1 61B581A4
P -3100 6050
AR Path="/CF1C1573/61B581A4" Ref="#PWR?"  Part="1" 
AR Path="/61B581A4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -3100 5900 50  0001 C CNN
F 1 "+3V3" H -3100 6200 50  0000 C CNN
F 2 "" H -3100 6050 50  0001 C CNN
F 3 "" H -3100 6050 50  0001 C CNN
	1    -3100 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3100 6650 -3100 6750
Wire Wire Line
	-4000 6650 -3900 6650
Wire Wire Line
	-4000 6750 -3900 6750
Wire Wire Line
	-4000 6450 -3900 6450
Wire Wire Line
	-4000 6550 -3900 6550
Wire Wire Line
	-3100 6550 -2900 6550
$Comp
L GW_Logic:74257 U?
U 1 1 61B58198
P -3500 6400
AR Path="/CF1C1573/61B58198" Ref="U?"  Part="1" 
AR Path="/61B58198" Ref="U?"  Part="1" 
F 0 "U?" H -3500 6900 50  0000 C CNN
F 1 "74LVC257" V -3500 6400 50  0000 C CNN
F 2 "" H -3500 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H -3500 6150 50  0001 C CNN
	1    -3500 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3100 6150 -1900 6150
Wire Wire Line
	-1900 5650 -2100 5650
Wire Wire Line
	-4000 5750 -2900 5750
Wire Wire Line
	-4000 5650 -2800 5650
Wire Wire Line
	-4000 5550 -2700 5550
Wire Wire Line
	-4000 5450 -1900 5450
Wire Wire Line
	-4000 5350 -1900 5350
Wire Wire Line
	-4000 5250 -1900 5250
Text Label -4000 5850 0    50   ~ 0
All
Wire Wire Line
	-2800 6750 -2800 6950
Wire Wire Line
	-2800 6550 -2800 6350
Wire Wire Line
	-1900 6350 -2200 6350
$Comp
L 74xx:74LS32 U?
U 1 1 61B581EC
P -2500 6650
AR Path="/CF1C1573/61B581EC" Ref="U?"  Part="1" 
AR Path="/61B581EC" Ref="U?"  Part="1" 
F 0 "U?" H -2500 6650 50  0000 C CNN
F 1 "74LS02" H -2500 6450 50  0000 C CNN
F 2 "" H -2500 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H -2500 6650 50  0001 C CNN
	1    -2500 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2200 6350 -2200 6650
Text Label -450 6150 0    50   ~ 0
RD7
$Comp
L power:GND #PWR?
U 1 1 622AA489
P -1850 6850
F 0 "#PWR?" H -1850 6600 50  0001 C CNN
F 1 "GND" H -1845 6677 50  0000 C CNN
F 2 "" H -1850 6850 50  0001 C CNN
F 3 "" H -1850 6850 50  0001 C CNN
	1    -1850 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1850 6850 -1450 6850
Wire Wire Line
	-1650 7050 -1450 7050
Text Label -1900 5250 2    50   ~ 0
RBA1
Text Label -1650 6950 0    50   ~ 0
RBA0
Text Label -1650 6750 0    50   ~ 0
RA11
Text Label -1650 6650 0    50   ~ 0
RA10
Wire Wire Line
	-1650 6750 -1450 6750
Wire Wire Line
	-1450 6650 -1650 6650
Text Label -1650 6350 0    50   ~ 0
RA7
Text Label -1650 6250 0    50   ~ 0
RA6
Text Label -1650 6150 0    50   ~ 0
RA5
Text Label -1650 6050 0    50   ~ 0
RA4
Text Label -1650 6450 0    50   ~ 0
RA8
Text Label -1650 6550 0    50   ~ 0
RA9
Wire Wire Line
	-1450 6950 -1650 6950
Wire Wire Line
	-1650 6550 -1450 6550
Wire Wire Line
	-1450 6450 -1650 6450
Wire Wire Line
	-1650 6350 -1450 6350
Wire Wire Line
	-1450 6250 -1650 6250
Wire Wire Line
	-1650 6150 -1450 6150
Wire Wire Line
	-1450 6050 -1650 6050
Text Label -1650 5650 0    50   ~ 0
RA0
Text Label -1650 5750 0    50   ~ 0
RA1
Text Label -1650 5850 0    50   ~ 0
RA2
Text Label -1650 5950 0    50   ~ 0
RA3
Wire Wire Line
	-1650 5950 -1450 5950
Wire Wire Line
	-1450 5850 -1650 5850
Wire Wire Line
	-1650 5750 -1450 5750
Wire Wire Line
	-1450 5650 -1650 5650
$Sheet
S 4950 2600 800  600 
U 623D37E8
F0 "Bank" 50
F1 "Bank.sch" 50
F2 "~RST~" I L 4950 2700 50 
F3 "BankSel" I L 4950 2800 50 
F4 "~WE~" I L 4950 3100 50 
F5 "~BankSel~" I L 4950 2900 50 
F6 "A[15..0]" I L 4950 3000 50 
F7 "W[5..0]" O R 5750 2800 50 
F8 "B[7..0]" O R 5750 2700 50 
$EndSheet
$Sheet
S 5000 2050 650  350 
U 605D20C2
F0 "State" 50
F1 "State.sch" 50
$EndSheet
$Comp
L 74xx:74LS00 U?
U 1 1 605FFE43
P 5000 4500
F 0 "U?" H 5000 4825 50  0000 C CNN
F 1 "74AHCT00" H 5000 4734 50  0000 C CNN
F 2 "" H 5000 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 5000 4500 50  0001 C CNN
	1    5000 4500
	1    0    0    -1  
$EndComp
Text Label 4700 4600 2    50   ~ 0
R~W~
$Comp
L 74xx:74LS00 U?
U 1 2 6063E68A
P 4300 4400
F 0 "U?" H 4300 4725 50  0000 C CNN
F 1 "74AHCT00" H 4300 4634 50  0000 C CNN
F 2 "" H 4300 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 4300 4400 50  0001 C CNN
	1    4300 4400
	1    0    0    -1  
$EndComp
Text Label 4000 4300 2    50   ~ 0
~IO1~
Text Label 4000 4500 2    50   ~ 0
~IO2~
Wire Wire Line
	5300 4500 5750 4500
Text Label 4600 4400 0    50   ~ 0
US
Wire Wire Line
	4600 4400 4700 4400
Text Notes 4800 5150 0    50   ~ 0
~A AND B~\n\n~A~ OR ~B~
$EndSCHEMATC
