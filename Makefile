# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbrousse <mbrousse@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/11 10:32:01 by mbrousse          #+#    #+#              #
#    Updated: 2023/12/11 22:06:20 by mbrousse         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SOURCES =	character.c\
			decimal.c\
			ft_printf.c\
			hexadecimal_lower.c\
			hexadecimal_upper.c\
			integer.c\
			percent.c\
			pointer.c\
			string.c\
			unsigned.c\
			ft_printf_utils.c

# BONUS_SOURCES =

OBJECTS = ${SOURCES:.c=.o}

# BONUS_OBJECTS= ${BONUS_SOURCES:.c=.o}

HEADER_FILE = libftprintf.h

NAME = libftprintf.a

CC = cc

FLAGS =  -Wall -Wextra -Werror

%.o:%.c  ${HEADER_FILE}
	${CC} ${FLAGS} -c $< -o $@

${NAME}: ${OBJECTS} Makefile
	ar -rc ${NAME} ${OBJECTS}

all: ${NAME}

clean:
	rm -f ${OBJECTS} 
# ${BONUS_OBJECTS}

fclean: clean
	rm -f ${NAME}

re: fclean all

# bonus : 
# 	@make SOURCES="$(SOURCES) $(BONUS_SOURCES)"


.PHONY: all clean fclean re 
# bonus