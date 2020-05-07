#!/bin/sh
#

OPTS='-bg #111111 -fg grey70 -p -l 30 -e onstart=uncollapse,scrollhome;button5=scrolldown;key_Down=scrolldown;button4=scrollup;key_Up=scrollup;key_Page_Down=scrolldown:30;key_Page_Up=scrollup:30;key_Escape=exit;button3=exit;entertitle=grabkeys;enterslave=grabkeys;leaveslave=ungrabkeys'

(echo "^fg(#323232)^bg(#5FBF77) Documentation (use: scrollwheel, arrow keys, PgUP/PgDown to scroll. Escape or right mouse button to quit) "; cat $HOME/.config/i3/scripts/help.txt) | dzen2 $OPTS

