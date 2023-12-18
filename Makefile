# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbrousse <mbrousse@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/11 10:32:01 by mbrousse          #+#    #+#              #
#    Updated: 2023/12/18 13:17:23 by mbrousse         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SOURCES =	ft_printf.c\
			hexadecimal.c\
			pointer.c\
			ft_printf_utils.c

OBJECTS = ${SOURCES:.c=.o}

HEADER_FILE = ft_printf.h

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

fclean: clean
	rm -f ${NAME}

re: fclean all

.PHONY: all clean fclean re
