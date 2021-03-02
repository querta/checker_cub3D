#!/bin/bash

sleeptime=2

if [[ $# -eq 0 ]] ; then
    printf "Запусти ./check с аргументом нужных карт (из файла):\n"
	printf "1 - RGB \n2 - map area \n3 - res\n"
	printf "4 - tex EA \n5 - tex NO \n6 - tex SO \n7 - tex WE\n"
    exit 1
fi

if [ "$1" = 1 ];
then
printf "\e[1;36m\
./valid_maps/valid_RGB_0xx.cub \e[0m\n"
	for ((i=0; i < 23; i++))
	do
		printf "$i: "
		if (( $i < 10 )); then
			./cub3D ./valid_maps/valid_RGB_00$i.cub &
		else
			./cub3D ./valid_maps/valid_RGB_0$i.cub &
		fi
		sleep $sleeptime
		pkill cub3D > /dev/null
	done
fi

if [ "$1" = 2 ];
then
printf "\e[1;36m\
./valid_maps/valid_map_area_0xx.cub \e[0m\n"
	for ((i=0; i < 13; i++))
	do
	pkill cub3D > /dev/null
	printf "$i: "
		if (( $i < 10 )); then 
			./cub3D ./valid_maps/valid_map_area_00$i.cub &
		else
			./cub3D ./valid_maps/valid_map_area_0$i.cub &
		fi
		sleep $sleeptime
		pkill cub3D > /dev/null
	# killall cub3D > /dev/null
	done
fi

if [ "$1" = 3 ];
then
printf "\e[1;36m\
./valid_maps/valid_res_0xx.cub \e[0m\n"
	for ((i=0; i < 22; i++))
	do
	printf "$i: "
		if (( $i < 10 )); then 
			./cub3D ./valid_maps/valid_res_00$i.cub &
		else
			./cub3D ./valid_maps/valid_res_0$i.cub &
		fi
	sleep $sleeptime
	killall cub3D > /dev/null
	done
fi

if [ "$1" = 4 ];
then
printf "\e[1;36m\
./valid_maps/valid_tex_0xx.cub \e[0m\n"
	for ((i=0; i < 51; i++))
	do
	printf "$i: "
		if (( $i < 10 )); then 
			./cub3D ./valid_maps/valid_tex_00$i.cub &
		else
			./cub3D ./valid_maps/valid_tex_0$i.cub &
		fi
		sleep $sleeptime
	killall cub3D > /dev/null
	done
fi
