echo Running xinitrc
echo DISPLAY: $DISPLAY
echo Args: $*
id
#export DISPLAY=:0
xhost +local:micha
#exec awesome
exec i3 
#exec urxvtd
#exec polybar example
#exec dockx
#exec startlxde
#exec startlxqt
#exec xmodmap .xmodmaprc

# blank screen after 30minutes
xset s 1800 1800

