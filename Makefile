LIBFT = ./libft/libft.a

NAME = libftprintf.a

SRCS =      srcs/ft_printf.c 						\
			srcs/ft_utils.c	 					\
			srcs/ft_print_var.c					\
			srcs/ft_print_int.c					\
			srcs/ft_print_char.c 				\
			srcs/ft_print_string.c 				\
			srcs/ft_print_hexa.c 				\
			srcs/ft_print_pointer.c 			\
			srcs/ft_print_unsigned_int.c 		\
			srcs/ft_print_pourcent.c			\
			srcs/ft_itoa_hexa.c 				\
			srcs/ft_itoa_unsigned.c 					
		
# SURPL_O = 	ft_printf.o 						\
# 			ft_utils.o							\
# 			ft_print_var.o						\
# 			ft_print_int.o						\
# 			ft_print_char.o 					\
# 			ft_print_string.o 					\
# 			ft_print_hexa.o 					\
# 			ft_print_pointer.o 					\
# 			ft_print_unsigned_int.o 			\
# 			ft_print_pourcent.o					\
# 			ft_itoa_hexa.o 						\
# 			ft_itoa_unsigned.o 					

CC = gcc

FLAGS = -c -Wall -Wextra -Werror

INCLUDES = -I./includes

OBJS = $(SRCS:.c=.o)

$(NAME): $(OBJS)
	$(MAKE) -C ./libft
	cp libft/libft.a $(NAME)
	$(CC) $(FLAGS) $(INCLUDES) $(SRCS)
	rm *.o
	ar -rcs $(NAME) $(OBJS)

all : $(NAME)

clean :
	$(MAKE) clean -C ./libft
# rm -rf $(SURPL_O) 
	rm -rf $(OBJS)

fclean : clean
	$(MAKE) fclean -C ./libft
	rm -rf $(NAME)

re : fclean all
