#!/bin/zsh
for a in {30..49}; do (for b in {0..4}; do echo -n "\033[$b;03;$a""m" " $b;$a ";done;); echo "\033[0;37m";  done

