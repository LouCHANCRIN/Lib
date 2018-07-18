LIB_NAME	=	lib.a

NAME		=	libft.a

NAME2		=	mat_lib.a

FLAG		=	-Wall -Wextra -Werror

#------------------------------------------------------------------------------#
#----------------------------------INCLUDE-------------------------------------#
#------------------------------------------------------------------------------#

I_FILE		=	libft.h\
				matrix_lib.h\

I_PATH		=	include

I_SRC		=	$(addprefix $(I_PATH)/, $(I_FILE))

#------------------------------------------------------------------------------#
#-----------------------------C_FILE_MATLIB------------------------------------#
#------------------------------------------------------------------------------#

C_FILE_MAT	=	mat_fill_matrix.cpp\
				mat_print_data.cpp\
				mat_transpose.cpp\
				mat_inv.cpp\
				mat_det.cpp\

C_PATH_MAT	=	matrix_src

C_SRC_MAT	=	$(addprefix $(C_PATH_MAT)/, $(C_FILE_MAT))

#------------------------------------------------------------------------------#
#-----------------------------O_FILE_MATLIB------------------------------------#
#------------------------------------------------------------------------------#

O_FILE_MAT	=	$(C_FILE_MAT:.cpp=.o)

O_PATH_MAT	=	mat_obj

O_SRC_MAT	=	$(addprefix $(O_PATH_MAT)/, $(O_FILE_MAT))

#------------------------------------------------------------------------------#
#-----------------------------C_FILE_LIBFT-------------------------------------#
#------------------------------------------------------------------------------#

C_FILE		=	ft_bzero.cpp\
				ft_isnumber.cpp\
				ft_ignore_space_tab.cpp\
				ft_strclen.cpp\
				ft_strnequ.cpp\
				ft_countcword.cpp\
				ft_memcmp.cpp\
				ft_memmove.cpp\
				ft_memset.cpp\
				ft_memdel.cpp\
				ft_memcpy.cpp\
				ft_memchr.cpp\
				ft_strclr.cpp\
				ft_strnew.cpp\
				ft_firstwordindex.cpp\
				ft_strcmp.cpp\
				ft_strnstr.cpp\
				ft_intlen.cpp\
				ft_strcpy.cpp\
				ft_strccpy.cpp\
				ft_strrchr.cpp\
				ft_isalnum.cpp\
				ft_strdel.cpp\
				ft_strrev.cpp\
				ft_isalpha.cpp\
				ft_strdup.cpp\
				ft_strsplit.cpp\
				ft_isascii.cpp\
				ft_strequ.cpp\
				ft_strstr.cpp\
				ft_isdigit.cpp\
				ft_putchar.cpp\
				ft_striter.cpp\
				ft_strsub.cpp\
				ft_isprint.cpp\
				ft_putchar_fd.cpp\
				ft_striteri.cpp\
				ft_strtrim.cpp\
				ft_itoa.cpp\
				ft_putendl.cpp\
				ft_strjoin.cpp\
				ft_strjoinfree.cpp\
				ft_tolower.cpp\
				ft_lastcharindex.cpp\
				ft_putendl_fd.cpp\
				ft_strlcat.cpp\
				ft_toupper.cpp\
				ft_lstadd.cpp\
				ft_putnbr.cpp\
				ft_strlen.cpp\
				ft_lstdel.cpp\
				ft_putnbr_fd.cpp\
				ft_lstdelone.cpp\
				ft_putstr.cpp\
				ft_strmap.cpp\
				ft_lstiter.cpp\
				ft_putstr_fd.cpp\
				ft_strmapi.cpp\
				ft_lstnew.cpp\
				ft_strcdup.cpp\
				ft_strncmp.cpp\
				ft_strncat.cpp\
				ft_strcat.cpp\
				ft_lstmap.cpp\
				ft_strchr.cpp\
				ft_atoi.cpp\
				ft_atoll.cpp\
				ft_strncpy.cpp\
				ft_printbit.cpp\
				ft_swap.cpp\
				ft_recursive_factorial.cpp\
				ft_sqrt.cpp\
				ft_uitoabase.cpp\
				ft_itoabase.cpp\
				ft_is_int.cpp\

C_PATH		=	libft_src

C_SRC		=	$(addprefix $(C_PATH)/, $(C_FILE))

#------------------------------------------------------------------------------#
#-------------------------------O_FILE_LIBFT-----------------------------------#
#------------------------------------------------------------------------------#

O_FILE		=	$(C_FILE:.cpp=.o)

O_PATH		=	libft_obj

O_SRC		=	$(addprefix $(O_PATH)/, $(O_FILE))

#------------------------------------------------------------------------------#
#--------------------------------REGLE-----------------------------------------#
#------------------------------------------------------------------------------#

all: $(NAME) $(NAME2)
	@ar -rc $(LIB_NAME) $(O_SRC) $(O_SRC_MAT)

#------------------------------------------------------------------------------#
#--------------------------------LIBFT-----------------------------------------#
#------------------------------------------------------------------------------#

$(NAME): $(O_PATH) $(O_SRC)
#	@ar -rc $(NAME) $(O_SRC)

$(O_PATH):
	@mkdir -p $(O_PATH)

$(addprefix $(O_PATH)/, %.o): $(addprefix $(C_PATH)/, %.cpp) $(I_PATH)
	g++ $(FLAG) -Iinclude -o $@ -c $<

#------------------------------------------------------------------------------#
#--------------------------------MAT_LIB---------------------------------------#
#------------------------------------------------------------------------------#

$(NAME2): $(O_PATH_MAT) $(O_SRC_MAT)
#	@ar -rc $(NAME2) $(O_SRC_MAT)

$(O_PATH_MAT):
	@mkdir -p $(O_PATH_MAT)

$(addprefix $(O_PATH_MAT)/, %.o): $(addprefix $(C_PATH_MAT)/, %.cpp) $(I_PATH)
	g++ $(FLAG) -Iinclude -o $@ -c $<

#------------------------------------------------------------------------------#
#--------------------------------CLEAN-----------------------------------------#
#------------------------------------------------------------------------------#

clean:
	@rm -Rf $(O_SRC)
	@rm -Rf $(O_PATH) 2>/dev/null || true
	@rm -Rf $(O_SRC_MAT)
	@rm -Rf $(O_PATH_MAT) 2>/dev/null || true

fclean: clean
	@rm -Rf $(LIB_NAME)

re: fclean all

.PHONY: clean fclean re all
