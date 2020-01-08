
my @k = split("", qw/qwertzuiopasdfghjklyxcvbnm,.-/ );

#goto l;

foreach ( @k ){ 
		print "bindsym Mod2+$_ exec i3-msg [ con_mark=\"$_\" ] focus | ".
		"sed -e '/false/e echo \"No mark [$_]\" | ".
    "dzen2 -w 100 -x 1300 -y 35 -p 3 -bg darkred -fg lightyellow -fn BOLD:Bold:pixelsize=13\' " .
		"-e '/true/e echo \"Mark [$_]\" | dzen2 -w 100 -x 1300 -y 35 -p 2 -fn BOLD:Bold:pixelsize=12 -bg green -fg darkblue'\n";
}

l:
foreach ( @k ){
		print "bindsym mod3+mod2+$_ exec i3-msg mark $_ && echo \"Set Mark [$_]\" | dzen2 -w 100 -x 1300 -y 35 -p 2  -fn BOLD:Bold:pixelsize=12 -bg green -fg darkblue\n";
}
