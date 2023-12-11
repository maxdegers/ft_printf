# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbrousse <mbrousse@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/11 10:32:01 by mbrousse          #+#    #+#              #
#    Updated: 2023/12/11 21:50:26 by mbrousse         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SOURCES =	ft_printf.c\
			character.c\
			hexadecimal_lower.c\
			pointer.c\
			decimal.c\
			hexadecimal_upper.c\
			string.c\
			integer.c\
			percent.c\
			unsigned.c

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