# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vvalet <vvalet@student.s19.be>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/08/02 18:36:20 by aminjauw          #+#    #+#              #
#    Updated: 2023/11/22 10:43:40 by vvalet           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libft.a

#------------------------------------PATH--------------------------------------

INCLUDE		=	include/

OBJS_PATH	=	objs/

#---------------------------------COMPILATION----------------------------------

CC			= 	cc

FLAGS	=	-Wall -Wextra -Werror -I${INCLUDE}

#---------------------------------SOURCE FILES---------------------------------

SRCS		=	ft_atoi.c\
				ft_bzero.c\
				ft_calloc.c\
				ft_isalnum.c\
				ft_isalpha.c\
				ft_isascii.c\
				ft_isdigit.c\
				ft_isprint.c\
				ft_isspace.c\
				ft_itoa.c\
				ft_memchr.c\
				ft_memcmp.c\
				ft_memcpy.c\
				ft_memmove.c\
				ft_memset.c\
				ft_putchar_fd.c\
				ft_putendl_fd.c\
				ft_putstr_fd.c\
				ft_putnbr_fd.c\
				ft_split.c\
				ft_strchr.c\
				ft_strdup.c\
				ft_striteri.c\
				ft_strjoin.c\
				ft_strjoins.c\
				ft_strlcat.c\
				ft_strlcpy.c\
				ft_strlen.c\
				ft_strmapi.c\
				ft_strncmp.c\
				ft_strnstr.c\
				ft_strrchr.c\
				ft_strtrim.c\
				ft_substr.c\
				ft_tolower.c\
				ft_toupper.c\
				ft_lstadd_back_bonus.c\
				ft_lstadd_front_bonus.c\
				ft_lstclear_bonus.c\
				ft_lstdelone_bonus.c\
				ft_lstiter_bonus.c\
				ft_lstlast_bonus.c\
				ft_lstmap_bonus.c\
				ft_lstnew_bonus.c\
				ft_lstsize_bonus.c\
				ft_ar_len.c\
				ft_ar_dup.c\
				ft_ar_addone.c\
				ft_ar_delone.c\
				ft_ar_replace.c\
				ft_ar_tolist.c\
				ft_ar_clear.c\
				ft_abs.c\
				ft_char_count.c\
				ft_in_set_char.c\
				ft_in_set_str.c\
				ft_sign.c\
				ft_nb_len.c\
				ft_printf/ft_convert.c\
				ft_printf/ft_printf.c\
				ft_printf/ft_putchar_value_fd.c\
				ft_printf/ft_putmem_hex_fd.c\
				ft_printf/ft_putnbr_value_fd.c\
				ft_printf/ft_putstr_value_fd.c\
				ft_printf/ft_putui_fd.c\
				ft_printf/ft_putui_hex_fd.c\
				ft_fprintf/ft_convertfd.c\
				ft_fprintf/ft_fprintf.c\
				get_next_line/get_next_line_utils.c\
				get_next_line/get_next_line.c

#-----------------------------------OBJECTS------------------------------------

OBJS_FILES	=	${SRCS:.c=.o}

OBJS		=	${addprefix ${OBJS_PATH}, ${OBJS_FILES}} 

#------------------------------------RULES-------------------------------------

all: ${NAME}

${OBJS_PATH}:
	mkdir -p ${OBJS_PATH}
	mkdir -p ${OBJS_PATH}ft_printf/
	mkdir -p ${OBJS_PATH}ft_fprintf/
	mkdir -p ${OBJS_PATH}get_next_line/

${OBJS_PATH}%.o: %.c
	${CC} ${FLAGS} -c $< -o $@

${NAME}: ${OBJS_PATH} ${OBJS}
	@echo "ar rcs ${NAME} OBJS"
	@ar rcs ${NAME} ${OBJS}

clean:
	@echo "rm -f OBJS"
	@rm -f ${OBJS}
	rm -Rf ${OBJS_PATH}

fclean: clean
	rm -f ${NAME}

re: fclean all

.PHONY: all clean fclean re
