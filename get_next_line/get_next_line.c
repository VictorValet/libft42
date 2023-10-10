/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vvalet <vvalet@student.s19.be>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/20 14:56:19 by vvalet            #+#    #+#             */
/*   Updated: 2023/10/10 11:10:33 by vvalet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	new_buffer(int fd, char *buffer, char **line, int *i)
{
	int		bytes_read;
	char	*temp_line;

	bytes_read = read(fd, buffer, BUFFER_SIZE);
	if (bytes_read <= 0)
	{
		free(*line);
		*line = NULL;
		return (1);
	}
	buffer[bytes_read] = 0;
	temp_line = (char *)ft_calloc(ft_strlen(*line) + BUFFER_SIZE, sizeof(char));
	if (temp_line == NULL)
	{
		free(*line);
		*line = NULL;
		return (1);
	}
	ft_strlcpy(temp_line, *line, ft_strlen(*line) + 1);
	free(*line);
	*line = temp_line;
	*i = 0;
	return (0);
}

char	*find_line(int fd, char *buffer, int *i)
{
	int		j;
	char	*line;

	j = 0;
	if (buffer[0] == 0)
		return (NULL);
	line = (char *)ft_calloc(BUFFER_SIZE, sizeof(char));
	while (line != NULL)
	{
		if ((*i == BUFFER_SIZE || buffer[*i] == 0) 
			&& new_buffer(fd, buffer, &line, i) == 1)
			break ;
		line[j] = buffer[*i];
		(*i)++;
		if (line[j] == '\n')
			break ;
		j++;
	}
	return (line);
}

char	*get_next_line(int fd)
{
	static char		buffer[OPEN_MAX][BUFFER_SIZE + 1] = {{0}};		
	char			*line;
	int				bytes_read;
	int				index;

	if (fd < 0 || fd >= OPEN_MAX || BUFFER_SIZE < 1)
		return (NULL);
	if (buffer[fd][0] == 0)
	{
		bytes_read = read(fd, buffer[fd], BUFFER_SIZE);
		if (bytes_read <= 0)
			return (NULL);
		buffer[fd][BUFFER_SIZE] = 0;
	}
	index = 0;
	line = find_line(fd, buffer[fd], &index);
	ft_strlcpy(buffer[fd], &buffer[fd][index],
		ft_strlen(&buffer[fd][index]) + 1);
	return (line);
}
