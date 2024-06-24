# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ryomori <ryomori@student.42tokyo.jp>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/24 12:42:23 by ryomori           #+#    #+#              #
#    Updated: 2024/06/24 13:21:52 by ryomori          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fractol

SRCS = main.c fractol.c mk_fractol.c

OBJS = $(SRCS:.c=.o)
CC	= cc
CFLAGS = -Wall -Wextra -Werror -g -I./libft
RM = rm -fr
AR = ar rcs

MINILIBX	=	libmlx.dylib

LIBFT_DIR	=	libft
LIBFT		=	$(LIBFT_DIR)/libft.a

all: $(NAME)

$(NAME): $(OBJS) $(LIBFT) $(MINILIBX)
	$(CC) $(OBJS) $(CFLAGS) $(MINILIBX) $(LIBFT) -o $@


.c.o:
	$(CC) $(CFLAGS) -o $@ -c $<

$(LIBFT):
	@make -C $(LIBFT_DIR) all

clean:
	@make -C $(LIBFT_DIR) clean
	$(RM) $(NAME)

fclean:	clean
	@make -C $(LIBFT_DIR) fclean
	$(RM) $(NAME)

re: fclean all