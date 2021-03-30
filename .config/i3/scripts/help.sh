#!/bin/sh
#

OPTS='-bg #111111 -fg white -p -l 30 -e onstart=uncollapse,scrollhome,grabkeys;button5=scrolldown;key_Down=scrolldown;button4=scrollup;key_Up=scrollup;key_Page_Down=scrolldown:30;key_Page_Up=scrollup:30;key_Escape=exit;button3=exit;entertitle=grabkeys;enterslave=grabkeys'
#OPTS='-fn "xft:Monospace:Bold:pixelsize=14:Bold" -bg #111111 -fg white -p -l 30 -e onstart=uncollapse,scrollhome,grabkeys;button5=scrolldown;key_Down=scrolldown;button4=scrollup;key_Up=scrollup;key_Page_Down=scrolldown:30;key_Page_Up=scrollup:30;key_Escape=exit;button3=exit;entertitle=grabkeys;enterslave=grabkeys'

(echo "^fg(#000000)^bg(#004AB7) i3 keys (scrollwheel, arrow keys, PgUP/PgDown scroll; Esc or right mouse button quit) "; cat $HOME/.config/i3/scripts/help.txt.dzen) | ~/.config/i3/scripts/dzen2 $OPTS 
#usleep 200000
#xdotool windowfocus `xwininfo -tree -root | sed -ne '/"dzen sl/p' | sed -ne 's/^ *//;s/ .*//;1p'`

