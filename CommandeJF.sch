EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Personnel:Transistor_TO92 TR1
U 1 1 63A006C4
P 7100 3650
F 0 "TR1" H 7291 3696 50  0000 L CNN
F 1 "2N2222A" H 7291 3605 50  0000 L CNN
F 2 "Transistor:TO-92" H 7300 3575 50  0001 L CIN
F 3 "" H 7100 3650 50  0001 L CNN
	1    7100 3650
	1    0    0    -1  
$EndComp
$Comp
L Personnel:RelaisSRD K1
U 1 1 63A00A45
P 7400 2900
F 0 "K1" H 7830 2946 50  0000 L CNN
F 1 "RelaisSRD" H 7830 2855 50  0000 L CNN
F 2 "Relay_THT:Relais_SRD" H 8670 2870 50  0001 C CNN
F 3 "https://gfinder.findernet.com/public/attachments/36/EN/S36EN.pdf" H 7400 2900 50  0001 C CNN
	1    7400 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3200 7200 3200
Wire Wire Line
	7200 3450 7200 3200
Connection ~ 7200 3200
$Comp
L power:GND #PWR0102
U 1 1 63A035C3
P 7200 3850
F 0 "#PWR0102" H 7200 3600 50  0001 C CNN
F 1 "GND" H 7205 3677 50  0000 C CNN
F 2 "" H 7200 3850 50  0001 C CNN
F 3 "" H 7200 3850 50  0001 C CNN
	1    7200 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 63A045DA
P 8550 2800
F 0 "J2" H 8630 2792 50  0000 L CNN
F 1 "Conn_01x02" H 8630 2701 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 8550 2800 50  0001 C CNN
F 3 "~" H 8550 2800 50  0001 C CNN
	1    8550 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 3200 7600 3200
$Comp
L power:+5V #PWR07
U 1 1 63A0D7B1
P 6000 5900
F 0 "#PWR07" H 6000 5750 50  0001 C CNN
F 1 "+5V" H 6015 6073 50  0000 C CNN
F 2 "" H 6000 5900 50  0001 C CNN
F 3 "" H 6000 5900 50  0001 C CNN
	1    6000 5900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 63A0DB04
P 6000 5450
F 0 "#PWR08" H 6000 5200 50  0001 C CNN
F 1 "GND" H 6005 5277 50  0000 C CNN
F 2 "" H 6000 5450 50  0001 C CNN
F 3 "" H 6000 5450 50  0001 C CNN
	1    6000 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 5800 6000 5800
Wire Wire Line
	6000 5800 6000 5900
Wire Wire Line
	5850 5550 6000 5550
Wire Wire Line
	6000 5450 6000 5550
Text GLabel 1750 3850 0    50   Input ~ 0
SDA
Text GLabel 1750 3750 0    50   Input ~ 0
SCL
Text GLabel 5200 5800 0    50   Input ~ 0
SCL
Text GLabel 5200 5550 0    50   Input ~ 0
SDA
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 63A11BC7
P 4850 6600
F 0 "J3" H 4930 6592 50  0000 L CNN
F 1 "Conn_01x04" H 4930 6501 50  0000 L CNN
F 2 "Connecteur_jst:JST_XH_B04B-XH-A_04x2.50mm_Straight" H 4850 6600 50  0001 C CNN
F 3 "~" H 4850 6600 50  0001 C CNN
	1    4850 6600
	1    0    0    -1  
$EndComp
Text GLabel 4650 6700 0    50   Input ~ 0
SCL
Text GLabel 4650 6800 0    50   Input ~ 0
SDA
$Comp
L power:+5V #PWR0103
U 1 1 63A12841
P 4200 6600
F 0 "#PWR0103" H 4200 6450 50  0001 C CNN
F 1 "+5V" H 4215 6773 50  0000 C CNN
F 2 "" H 4200 6600 50  0001 C CNN
F 3 "" H 4200 6600 50  0001 C CNN
	1    4200 6600
	1    0    0    1   
$EndComp
Wire Wire Line
	4200 6600 4650 6600
Text GLabel 4350 3850 2    50   Input ~ 0
SIG
Text GLabel 6200 3650 0    50   Input ~ 0
SIG
Wire Wire Line
	6650 3650 6900 3650
Wire Wire Line
	6450 3000 6450 3200
$Comp
L Personnel:Diode_1N4148 D2
U 1 1 63A307F5
P 6450 2850
F 0 "D2" V 6450 2930 50  0000 L CNN
F 1 "Diode_1N4148" H 6450 2750 50  0001 C CNN
F 2 "pth_diodes:diode_do35" H 6450 2675 50  0001 C CNN
F 3 "" H 6450 2850 50  0001 C CNN
	1    6450 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 2800 8750 2500
Wire Wire Line
	8750 3200 8750 2900
Wire Wire Line
	3350 1650 3350 1600
$Comp
L Personnel:Trou T1
U 1 1 63A4C141
P 5400 1150
F 0 "T1" H 5478 1196 50  0000 L CNN
F 1 "Trou" H 5478 1105 50  0000 L CNN
F 2 "Formes:Rond" H 5400 1150 50  0001 C CNN
F 3 "" H 5400 1150 50  0001 C CNN
	1    5400 1150
	1    0    0    -1  
$EndComp
$Comp
L Personnel:Trou T3
U 1 1 63A4C3D5
P 5750 1150
F 0 "T3" H 5828 1196 50  0000 L CNN
F 1 "Trou" H 5828 1105 50  0000 L CNN
F 2 "Formes:Rond" H 5750 1150 50  0001 C CNN
F 3 "" H 5750 1150 50  0001 C CNN
	1    5750 1150
	1    0    0    -1  
$EndComp
$Comp
L Personnel:Trou T2
U 1 1 63A4C71E
P 5400 1350
F 0 "T2" H 5478 1396 50  0000 L CNN
F 1 "Trou" H 5478 1305 50  0000 L CNN
F 2 "Formes:Rond" H 5400 1350 50  0001 C CNN
F 3 "" H 5400 1350 50  0001 C CNN
	1    5400 1350
	1    0    0    -1  
$EndComp
$Comp
L Personnel:Trou T4
U 1 1 63A4CA73
P 5750 1350
F 0 "T4" H 5828 1396 50  0000 L CNN
F 1 "Trou" H 5828 1305 50  0000 L CNN
F 2 "Formes:Rond" H 5750 1350 50  0001 C CNN
F 3 "" H 5750 1350 50  0001 C CNN
	1    5750 1350
	1    0    0    -1  
$EndComp
$Comp
L Alimentation:MP1584 U101
U 1 1 64253A4D
P 2650 1800
F 0 "U101" H 2650 2261 60  0000 C CNN
F 1 "MP1584" H 2650 2171 39  0000 C CNN
F 2 "Convertisseur:MP1584" H 2650 2080 60  0000 C CNN
F 3 "" H 2650 2100 60  0000 C CNN
	1    2650 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1650 3350 1650
$Comp
L power:GND #PWR0105
U 1 1 642AD32E
P 3350 1600
F 0 "#PWR0105" H 3350 1350 50  0001 C CNN
F 1 "GND" H 3355 1427 50  0000 C CNN
F 2 "" H 3350 1600 50  0001 C CNN
F 3 "" H 3350 1600 50  0001 C CNN
	1    3350 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	8750 2500 7700 2500
Wire Wire Line
	7700 2500 7700 2600
Wire Wire Line
	2150 1650 2300 1650
$Comp
L Timer_RTC:DS3231 U1
U 1 1 642970FD
P 5550 5700
F 0 "U1" H 5525 6075 50  0000 C CNN
F 1 "DS3231" H 5525 5984 50  0000 C CNN
F 2 "Timer_RTC:RTC_DS3231" H 5650 5450 50  0001 C CNN
F 3 "" H 5620 5650 50  0001 C CNN
	1    5550 5700
	1    0    0    -1  
$EndComp
$Comp
L Arduino:Arduino_Nano_Socket XA1
U 1 1 64296E22
P 3050 4050
F 0 "XA1" H 3050 5287 60  0000 C CNN
F 1 "Arduino_Nano_Socket" H 3050 5181 60  0000 C CNN
F 2 "Arduino:Arduino_Nano_Module_sur_Socket" H 4850 7800 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-nano" H 4850 7800 60  0001 C CNN
	1    3050 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6429F8C5
P 4300 6500
F 0 "#PWR0104" H 4300 6250 50  0001 C CNN
F 1 "GND" H 4305 6327 50  0000 C CNN
F 2 "" H 4300 6500 50  0001 C CNN
F 3 "" H 4300 6500 50  0001 C CNN
	1    4300 6500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 642A9BAF
P 1550 4550
F 0 "#PWR0106" H 1550 4300 50  0001 C CNN
F 1 "GND" H 1555 4377 50  0000 C CNN
F 2 "" H 1550 4550 50  0001 C CNN
F 3 "" H 1550 4550 50  0001 C CNN
	1    1550 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 4550 1550 4550
Wire Wire Line
	4300 6500 4650 6500
$Comp
L power:+12V #PWR0109
U 1 1 642D754B
P 1750 4950
F 0 "#PWR0109" H 1750 4800 50  0001 C CNN
F 1 "+12V" H 1765 5123 50  0000 C CNN
F 2 "" H 1750 4950 50  0001 C CNN
F 3 "" H 1750 4950 50  0001 C CNN
	1    1750 4950
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 642D8DC8
P 1400 4850
F 0 "#PWR0110" H 1400 4700 50  0001 C CNN
F 1 "+5V" H 1415 5023 50  0000 C CNN
F 2 "" H 1400 4850 50  0001 C CNN
F 3 "" H 1400 4850 50  0001 C CNN
	1    1400 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4850 1400 4850
$Comp
L power:+12V #PWR0101
U 1 1 642DAF70
P 6450 2450
F 0 "#PWR0101" H 6450 2300 50  0001 C CNN
F 1 "+12V" H 6465 2623 50  0000 C CNN
F 2 "" H 6450 2450 50  0001 C CNN
F 3 "" H 6450 2450 50  0001 C CNN
	1    6450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2600 6450 2600
Wire Wire Line
	6450 2600 6450 2700
Wire Wire Line
	6450 2600 6450 2450
Connection ~ 6450 2600
$Comp
L Personnel:R R101
U 1 1 642E1014
P 6500 3650
F 0 "R101" V 6293 3650 50  0000 C CNN
F 1 "R1.2k" V 6384 3650 50  0000 C CNN
F 2 "Resistance:R_025W" V 6430 3650 50  0001 C CNN
F 3 "~" H 6500 3650 50  0001 C CNN
	1    6500 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 3650 6350 3650
$Comp
L Personnel:CP C101
U 1 1 642EAB77
P 950 4800
F 0 "C101" H 832 4754 50  0000 R CNN
F 1 "CP47µF" H 832 4845 50  0000 R CNN
F 2 "capacitors:CP_5x11mm_hor" H 988 4650 50  0001 C CNN
F 3 "~" H 950 4800 50  0001 C CNN
	1    950  4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 4550 950  4550
Wire Wire Line
	950  4550 950  4650
Connection ~ 1550 4550
Wire Wire Line
	950  4950 1750 4950
Connection ~ 1750 4950
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 642A48E8
P 1300 1750
F 0 "J1" H 1380 1742 50  0000 L CNN
F 1 "Conn_01x04" H 1380 1651 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-4-5.08_1x04_P5.08mm_Horizontal" H 1300 1750 50  0001 C CNN
F 3 "~" H 1300 1750 50  0001 C CNN
	1    1300 1750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR0108
U 1 1 6426DB69
P 2150 1650
F 0 "#PWR0108" H 2150 1400 50  0001 C CNN
F 1 "GND1" H 2155 1477 50  0000 C CNN
F 2 "" H 2150 1650 50  0001 C CNN
F 3 "" H 2150 1650 50  0001 C CNN
	1    2150 1650
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 642A8F62
P 3100 2000
F 0 "#PWR0107" H 3100 1850 50  0001 C CNN
F 1 "+12V" H 3115 2173 50  0000 C CNN
F 2 "" H 3100 2000 50  0001 C CNN
F 3 "" H 3100 2000 50  0001 C CNN
	1    3100 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 1900 3100 1900
Wire Wire Line
	3100 1900 3100 2000
Wire Wire Line
	1500 1650 2150 1650
Connection ~ 2150 1650
Wire Wire Line
	1500 1750 1550 1750
Wire Wire Line
	1550 1750 1550 1850
Wire Wire Line
	1550 1850 1500 1850
Wire Wire Line
	1500 1950 2200 1950
Wire Wire Line
	2300 1950 2300 1900
$Comp
L power:+24V #PWR0111
U 1 1 642C6AFB
P 2200 1950
F 0 "#PWR0111" H 2200 1800 50  0001 C CNN
F 1 "+24V" H 2215 2123 50  0000 C CNN
F 2 "" H 2200 1950 50  0001 C CNN
F 3 "" H 2200 1950 50  0001 C CNN
	1    2200 1950
	-1   0    0    1   
$EndComp
Connection ~ 2200 1950
Wire Wire Line
	2200 1950 2300 1950
$EndSCHEMATC
