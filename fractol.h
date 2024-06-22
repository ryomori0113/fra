/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fract-lo.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ryomori <ryomori@student.42tokyo.jp>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/22 10:20:49 by ryomori           #+#    #+#             */
/*   Updated: 2024/06/22 11:26:12 by ryomori          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FRACTOL_H
# define FRACTOL_H

#include <mlx.h>
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <limits.h>
#include <unistd.h>
#include "Libft/libft.h"

# define MANDEL 1
# define JULIA 2

typedef struct s_list
{
	void			*mlx;
	void			*win;
	struct s_list	*img;
	char			addr;
	int				heignt;
	int				width;
	int				color;
	int				status;
	double			cre;
	double			cim;
	double			depth;
	double			x;
	double			y;
	int				ver;
	int				hor;
	double			mag;
	int				bit_pixel;
	int				endian;
	int				line_len;
}	t_list


#endif