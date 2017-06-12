#include "function.h"

int Check(int D)
{
	if (D == 0) {
		return 0;
	}
	if (D < 0) {
		return 1;
	}
	if (D > 0) {
		return 2;
	}
	return 0;
}

int Discriment(int a,int b, int c)
{
	int D = b*b - 4 * a * c;
	return D;
}
