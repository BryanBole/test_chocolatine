##
## EPITECH PROJECT, 2023
## test_chocolatine
## File description:
## Makefile
##

NAME = mysh

SRC = main.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME):	$(OBJ)
	gcc -o $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

tests_run:
	gcc -o $(NAME) tests/test.c -lcriterion --coverage 

.PHONY: all clean tests_run