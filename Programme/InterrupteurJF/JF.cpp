#include "JF.h"
bool Jf::Ferme(int jour, int mois, int annee)
{
	bool jourFeriesConnues = false;
	bool ascension = false;
	bool boolWorkingClose = false;

	// Calcul jour de la semaine
	dates.tm_year = annee - 1900;
	dates.tm_mon = mois - 1;
	dates.tm_mday = jour;
	dates.tm_hour = dates.tm_min = dates.tm_sec = 0;
	mktime(&dates);
	jourDeSemaine = jours[dates.tm_wday];

	// teste jour de semaine
	//boolWorkingClose = ((jourDeSemaine == 6) || (jourDeSemaine == 7));

	if (boolWorkingClose == false)
	{
		/// Calcul du jour de p�ques (algorithme de Oudin (1940))

		//Calcul du nombre d'or - 1
		int intGoldNumber = ((annee) % 19);
		// Ann�e divis� par cent
		int intAnneeDiv100 = ((annee) / 100);
		// intEpacte est = 23 - Epacte (modulo 30)
		int intEpacte = ((intAnneeDiv100 - intAnneeDiv100 / 4 - (8 * intAnneeDiv100 + 13) / 25 + (19 * intGoldNumber) + 15) % 30);
		//Le nombre de jours � partir du 21 mars pour atteindre la pleine lune Pascale
		int intDaysEquinoxeToMoonFull = (intEpacte - (intEpacte / 28) * (1 - (intEpacte / 28) * (29 / (intEpacte + 1)) * ((21 - intGoldNumber) / 11)));
		//Jour de la semaine pour la pleine lune Pascale (0=dimanche)
		int intWeekDayMoonFull = (((annee)+(annee) / 4 + intDaysEquinoxeToMoonFull + 2 - intAnneeDiv100 + intAnneeDiv100 / 4) % 7);
		// Nombre de jours du 21 mars jusqu'au dimanche de ou avant la pleine lune Pascale (un nombre entre -6 et 28)
		int intDaysEquinoxeBeforeFullMoon = intDaysEquinoxeToMoonFull - intWeekDayMoonFull;
		// mois de p�ques
		int intMonthPaques = 3 + (intDaysEquinoxeBeforeFullMoon + 40) / 44;
		// jour de p�ques
		int intDayPaques = (intDaysEquinoxeBeforeFullMoon + 28 - 31 * (intMonthPaques / 4));

		// Lundi de p�ques
		bool dtMondayPaques = ((intMonthPaques == mois) && (intDayPaques + 1 == jour));

		// Ascension
		dates.tm_year = annee - 1900;
		dates.tm_mon = intMonthPaques - 1;
		dates.tm_mday = intDayPaques + 39;
		mktime(&dates);
		ascension = ((jour == dates.tm_mday) && (mois - 1 == dates.tm_mon));

		// Jour f�ri�s connus
		for (int i = 0; i < 15; i = i + 2)
		{
			if ((feries[i] == jour) && (feries[i + 1] == mois))
			{
				jourFeriesConnues = true;
				break;
			}
		}

		// test final 
		boolWorkingClose = (dtMondayPaques || (ascension) || (jourFeriesConnues));
	}
	return boolWorkingClose;
}
