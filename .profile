# profile 

export profile_sourced=1

export PATH=$PATH:~/static/bin:~/scripts:~/git/tools:/usr/bin/vendor_perl
#export PATH=~/bin:$PATH:~/scripts:~/bin

source ~/scripts/alias.sh


BLACK="%{"$'\033[30m'"%}"
GRAY="%{"$'\033[01;30m'"%}"
LGREEN="%{"$'\033[01;32m'"%}"
GREEN="%{"$'\033[32m'"%}"
LRED="%{"$'\033[01;31m'"%}"
RED="%{"$'\033[31m'"%}"
YELLOW="%{"$'\033[01;33m'"%}"
BROWN="%{"$'\033[33m'"%}"
LBLUE="%{"$'\033[01;34m'"%}"
BLUE="%{"$'\033[34m'"%}"
BOLD="%{"$'\033[01;39m'"%}"
NORM="%{"$'\033[00m'"%}"
PINK="%{"$'\033[01;35m'"%}"
MAGENTA="%{"$'\033[00;35m'"%}"
LMAGENTA="%{"$'\033[01;35m'"%}"
CYAN="%{"$'\033[36m'"%}"
LCYAN="%{"$'\033[01;36m'"%}"
WHITE="%{"$'\033[01;37m'"%}"
LGRAY="%{"$'\033[37m'"%}"

# urxvt - 256 colors
YELLOW256="%{"$'\033[38;5;60m'"%}"
BROWN256="%{"$'\033[38;5;68m'"%}"


#US="$LCYAN$USER"
US="$GREEN%n"
i1=""
AT="$GREEN@"
HO="$LGREEN%m"
PA=" $LBLUE%~"
LI=" $ $NORM "



# set the title
if [ ! -z "$BASH" ]
then
		TITLESTART="%{"$'\033]0;'"%}"
		TITLEEND="%{"$'\007\033'"%}"
		TITLE="$USER@$HOST:"
  #else
		#. /etc/zsh/zprofile
fi

if test "$USERNAME" = "micha"
then
		US="$LGREEN"
    #echo -ne "\033]10;#ffffff\007";
    #echo -ne "\033]11;#000000\007";
else

if test "$USERNAME" = "root"
then
		US="$RED"
    #echo -ne "\033]11;#bb6f20\007";
    #echo -ne "\033]10;#000000\007";
fi
fi


if test "$HOST" = "Michaels-MacBook-Pro.local" 
then
		TITLE="$USER@${GREEN}osx-m $"
else
		TITLE="${US}$USER"
fi

#ZONE=""
#ifconfig veth1 2> /dev/null > /dev/null

#if [ $? = 0 ]; then
#		ZONE="%{$LGREEN%}@ns"
#else
#ifconfig veth2 2> /dev/null > /dev/null
#if [ $? = 0 ]; then
#		ZONE="%{$LGREEN%}@alp"
#fi
#fi

ZONE=`ip netns identify`
ZZ=$ZONE
if [ ${#ZONE} -gt 0 ] #within a netns
then
		if [ $ZONE = "alp" ]; then
				ZONE="%{$LCYAN%}@$ZONE"
		else
				ZONE="%{$YELLOW%}@$ZONE"
		fi
fi


#export PROMPT="$TITLESTART$TITLE$TITLEEND$US$i1$AT$HO$PA$LI"
#export OPROMPT="$TITLESTART$TITLE$TITLEEND$US$i1$AT$HO$PA$LI"
export OPROMPT='%{$US%}$USER$ZONE %{$BLUE%}$PWD %(!.%{$RED%}.%{$CYAN%})$ %f'

export PROMPT='%{$US%}$USERNAME$ZONE %{$BLUE%}$PPWD %(!.%{$RED%}.%{$CYAN%})$ %f'

if [ ! -z $KSHUID ] # set by mksh
then
		export PS1='mksh: $GREEN $USER$YELLOW@$ZZ$LBLUE $PWD $NORM'
fi


export PPWD=`echo $PWD | sed -e s./home/$USERNAME.~.` 
# set windowtitle
#print -Pn "\e]2;urxvt: $PPWD\a"

###export PROMPT="$US$i1$AT$HO$PA$LI"
#${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)
#
#export PROMPT="$TITLESTART$TITLE$TITLEEND$US$i1$AT$HO$PA$LI${ret_status}%{$fg[cyan]%}%{$reset_color%} $(git_prompt_info)"
#export PROMPT="%{$fg[cyan]%}%{$reset_color%} $US $TITLESTART$TITLE$TITLEEND $PA$LI"



#export LESSOPEN="/usr/bin/lesspipe.sh %s" 
export LESSOPEN="|/usr/bin/lesspipe.sh %s" LESS_ADVANCED_PREPROCESSOR=1

#export PATH=~/static/bin:~/static/bin/tb64:~/static/bin/bb64/~/scripts:~/git/tools:/usr/bin/vendor_perl
export PATH=$PATH:~/static/bin:~/scripts:~/git/tools:/usr/bin/vendor_perl
#export PATH=~/bin:$PATH:~/scripts:~/bin



if [ $TERM = "rxvt-unicode" ]
then
		export TTERM="urxvt"
else
		export TTERM=$TERM
fi



# Colors, again. Colors defined above are defined for the prompt.
#

BLACK=""$'\033[30m'""
GRAY=""$'\033[01;30m'""
LGREEN=""$'\033[01;32m'""
GREEN=""$'\033[32m'""
LRED=""$'\033[01;31m'""
RED=""$'\033[31m'""
YELLOW=""$'\033[01;33m'""
BROWN=""$'\033[33m'""
LBLUE=""$'\033[01;34m'""
BLUE=""$'\033[34m'""
BOLD=""$'\033[01;39m'""
NORM=""$'\033[00m'""
PINK=""$'\033[01;35m'""
MAGENTA=""$'\033[00;35m'""
LMAGENTA=""$'\033[01;35m'""
CYAN=""$'\033[36m'""
LCYAN=""$'\033[01;36m'""
WHITE=""$'\033[01;37m'""
LGRAY=""$'\033[37m'""

export CLICOLOR=1


# path history, menu
# better would be smenu ('smenu -c -n')
export BEMENU_BACKEND=curses
alias ph='chdir `uniq ~/.pathhistory | tac | bemenu || echo $PWD`'

# cmd history, menu
alias ch='sed -e "s/^:.*:0;//" ~/.zsh_history | tac | bemenu'

# LSCOLORS seems to be abandoned
# dircolors shows the usage of the var LS_COLORS



#   LSCOLORS:
#    The color designators are as follows:
#
#                       a     black
#                       b     red
#                       c     green
#                       d     brown
#                       e     blue
#                       f     magenta
#                       g     cyan
#                       h     light grey
#                       A     bold black, usually shows up as dark grey
#                       B     bold red
#                       C     bold green
#                       D     bold brown, usually shows up as yellow
#                       E     bold blue
#                       F     bold magenta
#                       G     bold cyan
#                       H     bold light grey; looks like bright white
#                       x     default foreground or background
#
#                 Note that the above are standard ANSI colors.  The actual display may differ depending on the color capabilities of the terminal in
#                 use.
#
#                 The order of the attributes are as follows:
#
#                       1.   directory
#                       2.   symbolic link
#                       3.   socket
#                       4.   pipe
#                       5.   executable
#                       6.   block special
#                       7.   character special
#                       8.   executable with setuid bit set
#                       9.   executable with setgid bit set
#                       10.  directory writable to others, with sticky bit
#                       11.  directory writable to others, without sticky bit
#
#                 The default is "exfxcxdxbxegedabagacad", i.e. blue foreground and default background for regular directories, black foreground and red
#									background for setuid executables, etc.
#               "1 2 3 4 5 6 7 8 9 0 1"  (attribute order)
export LSCOLORS="eaEafaDaca"


# the guard
