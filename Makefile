# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yachebla <yachebla@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/28 14:07:52 by yachebla          #+#    #+#              #
#    Updated: 2023/01/28 14:07:53 by yachebla         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


SERVER_NAME = server

CLIENT_NAME = client

CC = cc

CFLAGS = -Wall -Wextra -Werror

SOURCES = minitalk_utilis.c

HEADER = minitalk.h

OBJECTS = $(SOURCES:.c=.o)

all: $(SERVER_NAME) $(CLIENT_NAME)

$(SERVER_NAME) : server.c $(HEADER)
	 		$(CC) $(CFLAGS) server.c $(SOURCES) -o server

$(CLIENT_NAME) : client.c $(HEADER)
			$(CC) $(CFLAGS) client.c $(SOURCES) -o client

clean:
	rm -rf $(OBJECTS)

fclean: clean
	rm -rf $(SERVER_NAME) $(CLIENT_NAME)

re: fclean all