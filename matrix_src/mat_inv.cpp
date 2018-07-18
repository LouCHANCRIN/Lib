#include "../include/matrix_lib.h"

float			**mat_inv(float **mat, int size)
{
	float	det;

	det = mat_det(mat, size);
	printf("%f\n", det);
	if (size == 1)
		return (mat);
	return (mat);
}

int		main(void)
{
	int		a = 0;
	int		b;
	char	*str;
	float	**mat;
	float	**invmat;
	int		size;

	size = 4;

	if (!(mat = (float**)malloc(sizeof(float*) * size)))
		return (0);
	while (a < size)
	{
		if (!(mat[a] = (float*)malloc(sizeof(float) * size)))
			return (0);
		a++;
	}
	a = 0;
	while (a < size)
	{
		b = 0;
		while (b < size)
		{
		//	str = ft_read('\n');
		//	mat[a][b] = atof(str);
		//	free(str);
			scanf("%f", &mat[a][b]);
			b++;
		}
		a++;
	}
	invmat = mat_inv(mat, size);
	a = 0;
	while (a < size)
	{
		b = 0;
		while (b < size)
		{
			printf("% 12f", invmat[a][b]);
			b++;
		}
		printf("\n");
		a++;
	}
	return (0);
}
