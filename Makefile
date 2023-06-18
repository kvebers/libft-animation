NAME	= libft-animation
CFLAGS	= -Wall -Wextra -Werror
CC		= cc
SRC	=	main.c
RM = 	rm -f
SRC_O	= $(SRC:%.c=%.o)

all:  $(NAME)

$(NAME): $(SRC_O)
	make -C ./libft
	$(CC) $(CFLAGS) $(SRC_O) libft/libft.a -o $(NAME)

clean:
	@make clean -C libft/
	- @$(RM) $(SRC_O)

fclean: clean
	@make fclean -C libft/
	- @$(RM) ${NAME}

re: fclean all

.PHONY: clean fclean all re vis