# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: abeznik <abeznik@student.codam.nl>           +#+                      #
#                                                    +#+                       #
#    Created: 2021/10/03 15:23:47 by abeznik       #+#    #+#                  #
#    Updated: 2021/10/05 19:15:46 by abeznik       ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME	=	libftprintf.a

SOURCES	=	ft_printf.c $\
			pf_conversions.c $\
			pf_hex_conv.c $\
			pf_hexlong_conv.c $\
			pf_format_print.c $\
			pf_u_print.c $\
			pf_utoa.c $\

SRC_DIR	=	srcs

UTILS	=	ft_intlen.c \
			ft_putchar.c \
			ft_putnbr.c \
			ft_putstr.c \
			ft_strlen.c \
			ft_tolower.c \

UTL_DIR	=	utils

OBJ_DIR	=	obj

TST_DIR	=	tester

HEADER	=	includes

SRCS 	=	$(addprefix $(SRC_DIR)/,$(SOURCES))
OBJ_S 	=	$(patsubst %, $(OBJ_DIR)/srcs/%, $(SOURCES:.c=.o))

UTLS	=	$(addprefix $(UTL_DIR)/,$(UTILS))
OBJ_U 	=	$(patsubst %, $(OBJ_DIR)/utils/%, $(UTILS:.c=.o))

CC		=	gcc
RM		=	rm -f
FLAGS	=	-Werror -Wextra -Wall

all:		$(NAME)

$(NAME):	$(OBJ_S) $(OBJ_U)
	ar cr $(NAME) $(OBJ_S) $(OBJ_U)

$(OBJ_DIR)/srcs/%.o: $(SRC_DIR)/%.c
	@mkdir -p obj/srcs
	$(CC) -c $(FLAGS) -I $(HEADER) -o $@ $<

$(OBJ_DIR)/utils/%.o: $(UTL_DIR)/%.c
	@mkdir -p obj/utils
	$(CC) -c $(FLAGS) -I $(HEADER) -o $@ $<

norme:
	norminette ./$(SRC_DIR)
	norminette ./$(UTL_DIR)
	norminette ./$(HEADER)

test:	all
	$(CC) $(NAME) $(TST_DIR)/pf_tester.c 
	./a.out

leaks:	all
	$(CC) -g $(NAME) $(TST_DIR)/pf_leaks.c
	./a.out

debug:	all
	$(CC) -g3 $(SRCS) $(UTLS) $(TST_DIR)/pf_tester.c
	lldb a.out

debug1:	all
	$(CC) -g3 $(SRCS) $(UTLS) $(TST_DIR)/pf_main.c
	lldb a.out

clean:
	$(RM) $(OBJ_S) $(OBJ_U)
	rm -rf $(OBJ_DIR)

fclean: clean
	$(RM) $(NAME)

del:	fclean
	$(RM) *.out
	$(RM) *.o
	rm -rf *.dSYM

re: fclean all

coffee:
	@clear
	@echo ""
	@echo "                   ("
	@echo "	                     )     ("
	@echo "               ___...(-------)-....___"
	@echo '           .-""       )    (          ""-.'
	@echo "      .-''''|-._             )         _.-|"
	@echo '     /  .--.|   `""---...........---""`   |'
	@echo "    /  /    |                             |"
	@echo "    |  |    |                             |"
	@echo "     \  \   |                             |"
	@echo "      '\ '\ |                             |"
	@echo "        '\ '|                             |"
	@echo "        _/ /\                             /"
	@echo "       (__/  \                           /"
	@echo '    _..---""` \                         /`""---.._'
	@echo " .-'           \                       /          '-."
	@echo ":               '-.__             __.-'              :"
	@echo ':                  ) ""---...---"" (                :'
	@echo "\'._                '"--...___...--"'              _.'"
	@echo '   \""--..__                              __..--""/'
	@echo "     '._     """----.....______.....----"""         _.'"
	@echo '         ""--..,,_____            _____,,..--"""'''
	@echo '                      """------"""'
	@sleep 0.5
	@clear
	@echo ""
	@echo "                 ("
	@echo "	                  )      ("
	@echo "               ___..(.------)--....___"
	@echo '           .-""       )   (           ""-.'
	@echo "      .-''''|-._      (       )        _.-|"
	@echo '     /  .--.|   `""---...........---""`   |'
	@echo "    /  /    |                             |"
	@echo "    |  |    |                             |"
	@echo "     \  \   |                             |"
	@echo "      '\ '\ |                             |"
	@echo "        '\ '|                             |"
	@echo "        _/ /\                             /"
	@echo "       (__/  \                           /"
	@echo '    _..---""` \                         /`""---.._'
	@echo " .-'           \                       /          '-."
	@echo ":               '-.__             __.-'              :"
	@echo ':                  ) ""---...---"" (                :'
	@echo "\'._                '"--...___...--"'              _.'"
	@echo '   \""--..__                              __..--""/'
	@echo "     '._     """----.....______.....----"""         _.'"
	@echo '         ""--..,,_____            _____,,..--"""'''
	@echo '                      """------"""'
	@sleep 0.5
	@clear
	@echo ""
	@echo "               ("
	@echo "	                  )     ("
	@echo "               ___..(.------)--....___"
	@echo '           .-""      )    (           ""-.'
	@echo "      .-''''|-._      (       )        _.-|"
	@echo '     /  .--.|   `""---...........---""`   |'
	@echo "    /  /    |                             |"
	@echo "    |  |    |                             |"
	@echo "     \  \   |                             |"
	@echo "      '\ '\ |                             |"
	@echo "        '\ '|                             |"
	@echo "        _/ /\                             /"
	@echo "       (__/  \                           /"
	@echo '    _..---""` \                         /`""---.._'
	@echo " .-'           \                       /          '-."
	@echo ":               '-.__             __.-'              :"
	@echo ':                  ) ""---...---"" (                :'
	@echo "\'._                '"--...___...--"'              _.'"
	@echo '   \""--..__                              __..--""/'
	@echo "     '._     """----.....______.....----"""         _.'"
	@echo '         ""--..,,_____            _____,,..--"""'''
	@echo '                      """------"""'
	@sleep 0.5
	@clear
	@echo ""
	@echo "             (         ) "
	@echo "	              )        ("
	@echo "               ___)...----)----....___"
	@echo '           .-""      )    (           ""-.'
	@echo "      .-''''|-._      (       )        _.-|"
	@echo '     /  .--.|   `""---...........---""`   |'
	@echo "    /  /    |                             |"
	@echo "    |  |    |                             |"
	@echo "     \  \   |                             |"
	@echo "      '\ '\ |                             |"
	@echo "        '\ '|                             |"
	@echo "        _/ /\                             /"
	@echo "       (__/  \                           /"
	@echo '    _..---""` \                         /`""---.._'
	@echo " .-'           \                       /          '-."
	@echo ":               '-.__             __.-'              :"
	@echo ':                  ) ""---...---"" (                :'
	@echo "\'._                '"--...___...--"'              _.'"
	@echo '   \""--..__                              __..--""/'
	@echo "     '._     """----.....______.....----"""         _.'"
	@echo '         ""--..,,_____            _____,,..--"""'''
	@echo '                      """------"""'
	@echo "Mmmmmh your coffee is so hot right now *puts hands around it*"

.PHONY: fclean re all clean