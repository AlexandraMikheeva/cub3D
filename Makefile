# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: olydden <olydden@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/11 19:50:06 by olydden           #+#    #+#              #
#    Updated: 2020/11/18 19:34:20 by olydden          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = cub3D

CC = gcc

HEADER = includes

FLAGS_C = -g -O3 -Wall -Wextra -Werror

FLAGS_MLX = -lmlx -lm -framework OpenGL -framework AppKit

DIR_LIBFT = libft

DIR_S = srcs

DIR_O = objs

SOURCES =	main.c\
			parser.c\
			bmp.c\
			parse_map.c\
			parse_line.c\
			utils_00.c\
			utils_01.c\
			sort.c\
			walls.c\
			sprites.c\
			floor.c\
			set.c\
			utils_02.c\
			move.c\
			screen.c\
			utils_03.c\

SRCS = $(addprefix $(DIR_S)/, $(SOURCES))

OBJS = $(addprefix $(DIR_O)/, $(SOURCES:.c=.o))

all: $(NAME)

$(NAME): $(OBJS)
	@make -C $(DIR_LIBFT)
	@$(CC) -o $@ $^ $(FLAGS_MLX) $(DIR_LIBFT)/libft.a

$(DIR_O)/%.o: $(DIR_S)/%.c $(HEADER)/cub.h
	@mkdir -p $(DIR_O)
	@$(CC) $(FLAGS_C) -I $(HEADER) -o $@ -c $<

clean:
	@rm -f $(OBJS) screenshot.bmp
	@rm -rf $(DIR_O)
	@make clean -C $(DIR_LIBFT)

fclean: clean
	@rm -f $(NAME)
	@make fclean -C $(DIR_LIBFT)

re: fclean all

.PHONY: fclean re all clean
