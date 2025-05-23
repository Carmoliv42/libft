NAME = libft.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror
SCRS =	ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
		ft_isdigit.c ft_isprint.c ft_memchr.c ft_memcpy.c ft_memmove.c \
		ft_memset.c ft_strchr.c ft_strlcat.c ft_strlcpy.c ft_strlen.c \
		ft_strncmp.c ft_strrchr.c ft_tolower.c ft_toupper.c ft_memcmp.c \
		ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c \
		ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
		ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
		ft_putnbr_fd.c \

BSCRS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c \
		ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
		ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c \

OBJS = $(SCRS:.c=.o)
BOBJS = $(BSCRS:.c=.o)
AR = ar rcs 
#MAIN_SRC = ft_strlcat.c
#EXEC = a.out

$(EXEC): $(MAIN_SRC) $(NAME)
	$(CC) $(CFLAGS) $(MAIN_SRC) $(NAME) -o $(EXEC)

$(NAME): $(OBJS) $(BOBJS)
	$(AR) $(NAME) $(OBJS) $(BOBJS)

all: $(NAME) $(EXEC)
bonus: $(NAME)
run: $(EXEC)
	./$(EXEC)

clean:
	rm -rf $(OBJS) $(BOBJS)

fclean: clean
	rm -rf $(NAME) $(EXEC)

re: fclean all