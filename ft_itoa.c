/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vvalet <vvalet@student.s19.be>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/04 17:20:46 by vvalet            #+#    #+#             */
/*   Updated: 2023/07/14 15:02:47 by vvalet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>

static int	nb_len(int n)
{
	int	len;

	len = 1;
	if (n < 0)
		len++;
	while (n > 9 || n < -9)
	{
		len++;
		n /= 10;
	}
	return (len);
}

char	*ft_itoa(int n)
{
	int		index;
	int		neg;
	char	*a;

	index = nb_len(n);
	neg = 1;
	if (n < 0)
		neg *= -1;
	a = (char *)malloc(nb_len(n) + 1);
	if (!a)
		return (NULL);
	a[index] = 0;
	index--;
	while (index >= 0)
	{
		if (n < 0)
			a[index] = -(n % 10) + '0';
		else
			a[index] = (n % 10) + '0';
		n /= 10;
		index--;
	}
	if (neg < 0)
		a[0] = '-';
	return (a);
}
