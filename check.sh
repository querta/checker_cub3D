#!/bin/bash

sleeptime=0.2

if [[ $# -eq 0 ]] ; then
    printf "Запусти ./check с аргументом нужных карт (из файла):\n"
	printf "1 - RGB \n2 - map area \n3 - res\n"
	printf "4 - tex EA \n5 - tex NO \n6 - tex SO \n7 - tex WE\n"
    exit 1
fi

if [ "$1" = 1 ];
then
printf "\e[1;36m\
./invalid_maps/invalid_RGB_0xx.cub \e[0m\n"
	for ((i=0; i < 43; i++))
	do
		printf "$i: "
		if (( $i < 10 )); then
			./cub3D ./invalid_maps/invalid_RGB_00$i.cub
		else
			./cub3D ./invalid_maps/invalid_RGB_0$i.cub
		fi
	sleep $sleeptime
	done
fi

if [ "$1" = 2 ];
then
printf "\e[1;36m\
./invalid_maps/invalid_map_area_0xx.cub \e[0m\n"
	for ((i=0; i < 28; i++))
	do
	printf "$i: "
		if (( $i < 10 )); then 
			./cub3D ./invalid_maps/invalid_map_area_00$i.cub
		else
			./cub3D ./invalid_maps/invalid_map_area_0$i.cub
		fi
		sleep $sleeptime
	done
fi

if [ "$1" = 3 ];
then
printf "\e[1;36m\
./invalid_maps/invalid_res_0xx.cub \e[0m\n"
	for ((i=0; i < 30; i++))
	do
	printf "$i: "
		if (( $i < 10 )); then 
			./cub3D ./invalid_maps/invalid_res_00$i.cub
		else
			./cub3D ./invalid_maps/invalid_res_0$i.cub
		fi
	done
fi

if [ "$1" = 4 ];
then
printf "\e[1;36m\
./invalid_maps/invalid_tex_EA_0xx.cub \e[0m\n"
	for ((i=0; i < 23; i++))
	do
	printf "$i: "
		if (( $i < 10 )); then 
			./cub3D ./invalid_maps/invalid_tex_EA_00$i.cub
		else
			./cub3D ./invalid_maps/invalid_tex_EA_0$i.cub
		fi
	sleep $sleeptime
	done
fi

if [ "$1" = 5 ];
then
printf "\e[1;36m\
./invalid_maps/invalid_tex_NO_0xx.cub \e[0m\n"
	for ((i=0; i < 22; i++))
	do
	printf "$i: "
		if (( $i < 10 )); then 
			./cub3D ./invalid_maps/invalid_tex_NO_00$i.cub
		else
			./cub3D ./invalid_maps/invalid_tex_NO_0$i.cub
		fi
	sleep $sleeptime
	done
fi

if [ "$1" = 6 ];
then
printf "\e[1;36m\
./invalid_maps/invalid_tex_SO_0xx.cub \e[0m\n"
	for ((i=0; i < 23; i++))
	do
	printf "$i: "
		if (( $i < 10 )); then 
			./cub3D ./invalid_maps/invalid_tex_SO_00$i.cub
		else
			./cub3D ./invalid_maps/invalid_tex_SO_0$i.cub
		fi
	sleep $sleeptime
	done
fi

if [ "$1" = 7 ];
then
printf "\e[1;36m\
./invalid_maps/invalid_tex_WE_0xx.cub \e[0m\n"
	for ((i=0; i < 23; i++))
	do
	printf "$i: "
		if (( $i < 10 )); then 
			./cub3D ./invalid_maps/invalid_tex_WE_00$i.cub
		else
			./cub3D ./invalid_maps/invalid_tex_WE_0$i.cub
		fi
	sleep $sleeptime
	done
fi