( cat /proc/$1/cmdline && cat /proc/$1/io && \
		echo $RED status && \
		cat /proc/$1/status ) | sed -e 's/\t/ /g' | dzen2 -p -l 40 -e 'onstart=uncollapse,scrollhome;button5=scrolldown;key_Down=scrolldown;button4=scrollup;key_Up=scrollup;key_Page_Down=scrolldown:30;key_Page_Up=scrollup:30;key_Escape=exit;button3=exit;entertitle=grabkeys;enterslave=grabkeys;leaveslave=ungrabkeys'
