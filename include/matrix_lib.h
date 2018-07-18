#ifndef MATRIX_LIB
# define MATRIX_LIB
# include "libft.h"
# include <fcntl.h>
# include <unistd.h>
# include <iostream>
# include <stdio.h>

using namespace	std;

typedef struct	s_data
{
	char		**name_value;
	float		**data;
	float		**T_data;
	float		*result;
	float		*theta;
	int			col;
	int			line;
}				t_data;

void			mat_print_data(t_data data);
float			mat_det(float **mat, int size);
float			**mat_inv(float **mat, int size);
float			**mat_transpose(float **data, int col, int line);
t_data			mat_fill_matrix(t_data data, char *str, char separator);
#endif
