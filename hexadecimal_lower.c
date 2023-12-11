/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   hexadecimal_lower.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbrousse <mbrousse@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/11 21:42:33 by mbrousse          #+#    #+#             */
/*   Updated: 2023/12/11 22:39:08 by mbrousse         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"

void	ft_rec(unsigned int nbr, char *base, unsigned int size)
{
	if (nbr >= size)
	{
		ft_rec(nbr / size, base, size);
		ft_rec(nbr % size, base, size);
	}
	else
		ft_putchar(base[nbr]);
}

void	ft_nbr_verif(int nbr, char *base, int size)
{
	if (nbr < 0)
	{
		write(1, "-", 1);
		ft_rec(nbr * -1, base, size);
	}
	else
		ft_rec(nbr, base, size);
}

void	ft_putnbr_base(int nbr, char *base)
{
	int	size;
	int	i;
	int	i_b;

	size = ft_strlen(base);
	if (size < 2)
		return ;
	i = -1;
	while (base[++i])
	{
		if (base[i] == '+' || base[i] == '-')
			return ;
		i_b = 1;
		while (base[i_b] && i != i_b)
		{
			if (base[i_b] == base[i])
				return ;
			i_b++;
		}
	}
	ft_nbr_verif(nbr, base, size);
}
