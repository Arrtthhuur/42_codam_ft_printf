/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   utils.h                                            :+:    :+:            */
/*                                                     +:+                    */
/*   By: abeznik <abeznik@student.codam.nl>           +#+                     */
/*                                                   +#+                      */
/*   Created: 2021/09/28 15:53:54 by abeznik       #+#    #+#                 */
/*   Updated: 2021/10/04 21:44:23 by anonymous     ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#ifndef UTILS_H
# define UTILS_H

# include "libftprintf.h"

# include <stdlib.h>

size_t	ft_intlen(long n);

char	*ft_itoa(int n);

void	ft_putchar(char c);

void	ft_putnbr(int nb);

void	ft_putstr(char *str);

size_t	ft_strlen(const char *s);

int		ft_tolower(int c);

#endif
