/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftprintf.h                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbrousse <mbrousse@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/11 10:31:49 by mbrousse          #+#    #+#             */
/*   Updated: 2023/12/11 22:15:15 by mbrousse         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTPRINTF_H
# define LIBFTPRINTF_H

# include <unistd.h>

int		ft_strlen(char *str);

void	ft_putchar(char c);
void	ft_putstr(char *str);
void	ft_putnbr(int n);

#endif