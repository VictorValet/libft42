NAME	=	libft.a

INCLUDE	=	include/

SRCS	=	ft_atoi.c \
			ft_bzero.c \
			ft_calloc.c \
			ft_isalnum.c \
			ft_isalpha.c \
			ft_isascii.c \
			ft_isdigit.c \
			ft_isprint.c \
			ft_itoa.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_memcpy.c \
			ft_memmove.c \
			ft_memset.c \
			ft_putchar_fd.c \
			ft_putendl_fd.c \
			ft_putstr_fd.c \
			ft_putnbr_fd.c \
			ft_split.c \
			ft_strchr.c \
			ft_strdup.c \
			ft_striteri.c \
			ft_strjoin.c \
			ft_strlcat.c \
			ft_strlcpy.c \
			ft_strlen.c \
			ft_strmapi.c \
			ft_strncmp.c \
			ft_strnstr.c \
			ft_strrchr.c \
			ft_strtrim.c \
			ft_substr.c \
			ft_tolower.c \
			ft_toupper.c \
			ft_lstadd_back_bonus.c \
			ft_lstadd_front_bonus.c \
			ft_lstclear_bonus.c \
			ft_lstdelone_bonus.c \
			ft_lstiter_bonus.c \
			ft_lstlast_bonus.c \
			ft_lstmap_bonus.c \
			ft_lstnew_bonus.c \
			ft_lstsize_bonus.c \
			ft_arclear.c \
			ft_arlen.c \
			ft_abs.c \
			ft_char_count.c \
			ft_sign.c \
			ft_printf/ft_convert.c \
			ft_printf/ft_printf.c \
			ft_printf/ft_putchar_value_fd.c \
			ft_printf/ft_putmem_hex_fd.c \
			ft_printf/ft_putnbr_value_fd.c \
			ft_printf/ft_putstr_value_fd.c \
			ft_printf/ft_putui_fd.c \
			ft_printf/ft_putui_hex_fd.c \
			ft_fprintf/ft_convertfd.c \
			ft_fprintf/ft_fprintf.c \
			get_next_line/get_next_line_utils.c \
			get_next_line/get_next_line.c \

OBJS= 		${SRCS:.c=.o}

CC= 		cc -Wall -Wextra -Werror -I${INCLUDE}

all:		${NAME}

${NAME}:	${OBJS}
		ar rcs ${NAME} ${OBJS}

clean:
		rm -f ${OBJS}

fclean:		clean
		rm -f ${NAME}

re:			fclean all

.PHONY: all clean fclean re bonus