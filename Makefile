# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marvin <marvin@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/07/18 15:55:30 by marvin            #+#    #+#              #
#    Updated: 2024/07/18 15:55:30 by marvin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftgetnextline.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
AR = ar -rcs
RM = rm -rf
SRC = ./src/get_next_line_utils.c \
      ./src/get_next_line.c

OBJS = ${SRC:.c=.o}

$(NAME): $(OBJS)
	cd ./libft && make
	$(AR) $(NAME) $(OBJS)

all: $(NAME)

bonus: $(OBJS)
	$(AR) $(NAME) $(OBJS)

clean:
	cd ./libft && make clean
	$(RM) $(OBJS)

fclean: clean
	cd ./libft && make fclean
	$(RM) $(NAME)

re: fclean all
	cd ./libft && make re
