/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: olydden <olydden@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/18 18:45:17 by olydden           #+#    #+#             */
/*   Updated: 2020/11/18 19:09:15 by olydden          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H
# define BUFFER_SIZE 32
# include <unistd.h>
# include <fcntl.h>
# include <stdlib.h>

char		*ft_strchr(const char *s, int c);
char		*ft_strjoin(char const *s1, char const *s2);
size_t		ft_strlen(const char *str);
char		*ft_strdup(const char *str);
void		ft_strclr(char *s);
size_t		ft_strlcpy(char *dst, const char *src, size_t size);
int			get_next_line(int fd, char **line);
#endif
