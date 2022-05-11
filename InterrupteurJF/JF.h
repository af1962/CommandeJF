#include <time.h>

class Jf
{
private:
	time_t timestamp;
	struct tm dates { 0 };
	int feries[16] = { 1,1,1,5,8,5,14,7,15,8,1,11,11,11,25,12 };
	int jours[7] = { 7, 1, 2, 3, 4, 5, 6 };
	int jourDeSemaine;

public:
	bool Ferme(int j, int m, int a);

};
