/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_string.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dcorenti <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/08 15:37:41 by dcorenti          #+#    #+#             */
/*   Updated: 2022/01/08 16:51:48 by dcorenti         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

int	ft_print_string(char *str)
{
	int	char_count;

	char_count = 0;
	if (!str)
		str = "(null)";
	char_count = ft_putstr(str);
	return (char_count);
}
