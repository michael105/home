#!/bin/zsh
for a in {30..49}; do (for b in {0..4}; do echo -n "\033[$b;03;$a""m" " $b;$a ";done;); echo "\033[0;37m";  done



echo 
echo 256 Color mode
for a in {0..16}
do 
		(for b in {0..15}
		do 
				(( color = a * 16 + b )) 
				printf "\033[38;5;$color""m %03d"  $color
		done
		) 
		echo "\033[0;30m"  
done

echo

for a in {0..16} #
do 
		(for b in {0..15}
		do 
				(( color = a * 16 + b )) 
				printf "\033[48;5;$color""m %03d"  $color
		done
		) 
		echo "\033[0;30m"  
done






