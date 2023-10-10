/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_nb_len.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vvalet <vvalet@student.s19.be>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/06 14:43:59 by vvalet            #+#    #+#             */
/*   Updated: 2023/09/12 10:55:29 by vvalet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_nb_len(int n)
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