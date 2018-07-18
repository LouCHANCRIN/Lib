#include "../include/matrix_lib.h"

static float	mat_det_size3_2(float **mat, int size)
{
	int		a;
	int		x;
	int		col;
	int		line;
	float	det = 1;
	float	tmp = 0;

	a = size - 1;
	while (a >= 0)
	{
		line = 0;
		col = a;
		x = 0;
		det = 1;
		while (x < size)
		{
			det = det * mat[line][col];
			line++;
			col--;
			if (line == size)
				line = 0;
			if (col == -1)
				col = size - 1;
			x++;
		}
		tmp = tmp - det;
		a--;
	}
	return (tmp);
}

static float	mat_det_size3(float **mat, int size)
{
	int		a = 0;
	int		x;
	int		col;
	int		line;
	float	det = 1;
	float	tmp = 0;

	while (a < size)
	{
		line = 0;
		col = a;
		x = 0;
		det = 1;
		while (x < size)
		{
			det = det * mat[line][col];
			line++;
			col++;
			if (line == size)
				line = 0;
			if (col == size)
				col = 0;
			x++;
		}
		tmp = tmp + det;
		a++;
	}
	return (tmp + mat_det_size3_2(mat, size));
}

static float	det_matrix_2(float**mat, int size)
{
	float		det;

	det = mat[size - 2][size - 2] * mat[size - ?];
}

static float	mat_det_big(float **mat, int size)
{


float			mat_det(float **mat, int size)
{
	float	det;
	if (size == 3)
		det = mat_det_size3(mat, size);
	else
		det = mat_det_big(mat, size);
	printf("final det = %f\n", det);
	return (det);
}
