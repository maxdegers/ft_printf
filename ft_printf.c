/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbrousse <mbrousse@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/11 10:35:48 by mbrousse          #+#    #+#             */
/*   Updated: 2023/12/14 11:21:20 by mbrousse         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"
#include <stdarg.h>

static int	table(const char c, va_list args)
{
	int	print_c;

	print_c = 0;
	if (c == 'c')
		print_c += ft_putchar(va_arg(args, int));
	else if (c == 's')
		print_c += ft_putstr(va_arg(args, char *));
	else if (c == 'p')
		print_c += ft_putpoint(va_arg(args, unsigned long long));
	else if (c == 'd' || c == 'i')
		print_c += ft_putnbr(va_arg(args, int));
	else if (c == 'u')
		print_c += ft_(va_arg(args, unsigned int));
	else if (c == 'x')
		print_c += ft_puthexadecimal(va_arg(args, unsigned int), "0123456789");
	else if (c == 'X')
		print_c += ft_puthexadecimal(va_arg(args, unsigned int));
	else if (c == '%')
		print_c += ft_putpercent();
	return (print_c);
}

int	ft_printf(const char *str, ...)
{
	int		i;
	va_list	args;
	int		print_c;

	i = 0;
	print_c = 0;
	va_start(args, str);
	while (str[i])
	{
		if (str[i] == '%')
		{
			print_c += table(str[i + 1], args);
			i++;
		}
		else
			print_c += ft_putchar(str[i]);
		i++;
	}
	va_end(args);
	return (print_c);
}

