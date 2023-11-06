# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mel-bouh <mel-bouh@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/03 16:05:43 by mel-bouh          #+#    #+#              #
#    Updated: 2023/11/06 17:41:07 by mel-bouh         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc -Wall -Wextra -Werror
NAME = libft.a
SRC = ft_isdigit.c ft_putchar_fd.c ft_strlcpy.c ft_tolower.c \
		ft_atoi.c ft_isprint.c ft_putendl_fd.c ft_strlen.c ft_toupper.c \
		ft_bzero.c ft_memchr.c ft_putstr_fd.c ft_strncmp.c ft_split.c\
		ft_calloc.c ft_memcmp.c ft_strchr.c ft_strnstr.c ft_striteri.c\
		ft_isalnum.c ft_memcpy.c ft_strdup.c ft_strrchr.c ft_strtrim.c\
		ft_isalpha.c ft_memmove.c ft_strjoin.c ft_substr.c ft_strmapi.c\
		ft_isascii.c ft_memset.c ft_strlcat.c ft_putnbr_fd.c ft_itoa.c
BSRC = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
	ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
OBJT = $(SRC:.c=.o)
BOBJT = $(BSRC:.c=.o)
HEADER = libft.h
all = $(NAME)

$(NAME): $(OBJT)
	ar rcs $(NAME) $(OBJT)
	make clean

bonus: $(OBJT) $(BOBJT)
	ar rcs $(NAME) $(OBJT) $(BOBJT)
	make clean

$(OBJT): $(SRC)
	$(CC) -I $(HEADER) -c $(SRC)

clean:
	rm -rf $(OBJT) $(BOBJT)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re
