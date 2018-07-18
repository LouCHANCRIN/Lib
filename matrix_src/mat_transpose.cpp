#include "../include/matrix_lib.h"

float		**mat_transpose(float **data, int col, int line)
{
	int		a = 0;
	int		b;
	float	**T;

	if (!(T = (float**)malloc(sizeof(float*) * line)))
		return (NULL);
	while (a < line)
	{
		if (!(T[a] = (float*)malloc(sizeof(float) * col)))
			return (NULL);
		a++;
	}
	a = 0;
	while (a < col)
	{
		b = 0;
		while (b < line)
		{
			T[b][a] = data[a][b];
			b++;
		}
		a++;
	}
	return (T);
}
