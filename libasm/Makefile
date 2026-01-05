SRCS = ft_strcmp.s ft_strcpy.s ft_strlen.s
OBJS = ${SRCS:.s=.o}
NAME = libasm.a
CC = nasm -felf64
AR = ar rc

.phony : all re clean fclean bonus 

all : ${NAME}

${NAME} : ${OBJS}
	${AR} ${NAME} ${OBJS}

.s.o:
	${CC} -o $@ $?

clean :
	rm -f ${OBJS}

fclean :
	make clean
	rm -f ${NAME}

re : 
	make fclean
	make all
