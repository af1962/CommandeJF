
#include <Adafruit_SSD1306.h>
#include <RTClib.h>
#include <Adafruit_GFX.h>
#include <Wire.h>
#include "JF.h"

#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 32 

#define pinJF 7
#define pinClock 13

Adafruit_SSD1306 oled(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, -1);
RTC_DS3231 rtc;
Jf jf;

DateTime now;

String
timeHeure,
timeMn,
timeSec,
timeJour,
timeMois,
timeAnnee,
timeDate;

int
jour,
mois,
annee,
heure,
minute;

bool
deuxPoints,
jourClose;

void setup()
{
    Serial.begin(9600);

    pinMode(pinJF, OUTPUT);
    pinMode(pinClock,OUTPUT);

    // initialize OLED display with address 0x3C for 128x64
    if (!oled.begin(SSD1306_SWITCHCAPVCC, 0x3C))
    {
        Serial.println(F("SSD1306 allocation failed"));
        while (true);
    }

    delay(2000);         
    oled.clearDisplay();          // clear

    oled.setTextSize(2);          // text taille
    oled.setTextColor(WHITE);     // text couleur
    oled.setCursor(0, 10);        // position texte

    // SETUP RTC MODULE
    if (!rtc.begin())
    {
        Serial.println("Couldn't find RTC");
        Serial.flush();
        while (true);
    }

    // A décommenter lors du 1er téléversement puis recommenter et téléverser de nouveau
    // rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
    
    // January 21, 2014 at 3am you would call:
    // rtc.adjust(DateTime(2022, 5, 25, 23, 59, 50));
    timeHeure.reserve(10);
    timeDate.reserve(10);
    deuxPoints = true;
}

void loop()
{
    Horloge();
    Affichage(timeHeure, timeDate);
    deuxPoints = !deuxPoints;
    digitalWrite(pinJF, jourClose);   
    delay(1000);  
}

// R�cup�ration de la date et de l'heure
void Horloge()
{
   now = rtc.now();

    // Heure
    timeHeure = "";
    timeHeure = Format(String(now.hour()));
    // double point clignotant
    if (deuxPoints == true)
    {
        timeHeure += ":";
        digitalWrite(pinClock,HIGH);
    }
    else
    {
        timeHeure += " ";
        digitalWrite(pinClock,LOW);
    }
    timeMn = "";
    timeMn = Format(String(now.minute()));
    timeHeure += timeMn + timeSec;

    // Date
    timeJour = "";
    timeJour = Format(String(now.day()));
    timeJour += '/';
    timeMois = "";
    timeMois = Format(String(now.month()));
    timeMois += '/';
    timeAnnee = "";
    timeAnnee = String(now.year());
    timeDate = timeJour + timeMois + timeAnnee;

    // Teste jour f�ri�
    jour = now.day();
    mois = now.month();
    annee = now.year();
    jourClose = jf.Ferme(jour, mois, annee);
}

// Affichage � l'�cran
void Affichage(String th, String td)
{
    oled.clearDisplay(); 
    oled.setCursor(40, 0);
    oled.println(th);           // Heure
    oled.setCursor(5, 18);
    oled.println(td);           // Date
    oled.display();
}


// Format d'affichage
String Format(String texte)
{
    if (texte.length() == 1)
    {
        texte = "0" + texte;
    }
    return texte;
}
