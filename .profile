# profile 

export profile_sourced=1


export LC_ALL=C
export LANG=C
export EDITOR=vim
export VIMRUNTIME=$HOME/.vim
export ZDOTDIR=$HOME/.zsh
export PAGER=less

export HISTSIZE=10000
alias mini-gcc=/home/micha/prog/minilib/mini-gcc
alias gcc-static=/home/micha/git/gcc-static/gcc-static.pl

# read/write for owner and group. None for others.
umask 006

#export PATH=~/bin:$PATH:~/scripts:~/bin

source $HOME/scripts/alias.sh
# stack size. 64kB
#ulimit -s 64000

# memory size (1.2GB)
#ulimit -m 12582912
#ulimit -m 40000000
# data segment
#ulimit -d 12582912
#ulimit -d 12582912
# address space
#ulimit -v 12582912
# stack
#ulimit -s 65000

# weed out duplicate entries
#PATH=`echo -n $PATH| tr ':' '\n' | sort -r | uniq | tr '\n' ':' | sed -e 's/:$//' | sed -e 's.//./.g' | sed -e 's.::.:.g'`

# run starters first (e.g. sg palemoon palemoon, instead of palemoon

export PATH=$HOME/scripts/starter:$HOME/scripts:$HOME/static/bin:/local/bin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:~/git/tools:/usr/bin/vendor_perl:$HOME/static/bin/bb64

if [ 1 -eq `ps | tail -n 5 | sed -n -e '/ash/p' | wc -l` ] 
then
		export ASH=/bin/ash

BLACK="\033[30m"
GRAY="\033[01;30m"
LGREEN="\033[01;32m"
GREEN="\033[32m"
LRED="\033[01;31m"
RED="\033[31m"
YELLOW="\033[01;33m"
BROWN="\033[33m"
LBLUE="\033[01;34m"
BLUE="\033[34m"
BOLD="\033[01;39m"
NORM="\033[00m"
PINK="\033[01;35m"
MAGENTA="\033[00;35m"
LMAGENTA="\033[01;35m"
CYAN="\033[36m"
LCYAN="\033[01;36m"
WHITE="\033[01;37m"
LGRAY="\033[37m"


else
if [ ! -z $KSHUID ] # mksh
then

#BLACK="\033[30m"
#GRAY="\033[01;30m"
#LGREEN="\033[01;32m"
#GREEN="\033[32m"
#LRED="\033[01;31m"
#RED="\033[31m"
#YELLOW="\033[01;33m"
#BROWN="\033[33m"
#LBLUE="\033[01;34m"
#BLUE="\033[34m"
#BOLD="\033[01;39m"
#NORM="\033[00m"
#PINK="\033[01;35m"
#MAGENTA="\033[00;35m"
#LMAGENTA="\033[01;35m"
#CYAN="\033[36m"
#LCYAN="\033[01;36m"
#WHITE="\033[01;37m"
#LGRAY="\033[37m"
#
BLACK=""$'\033[30m'""
BGBLACK=""$'\033[40m'""
GRAY=""$'\033[01;30m'""
LGREEN=""$'\033[01;32m'""
GREEN=""$'\033[32m'""
BGGREEN=""$'\033[42m'""
LRED=""$'\033[01;31m'""
RED=""$'\033[31m'""
BGRED=""$'\033[41m'""
YELLOW=""$'\033[01;33m'""
BROWN=""$'\033[33m'""
BGYELLOW=""$'\033[43m'""
LBLUE=""$'\033[01;34m'""
BLUE=""$'\033[34m'""
BGBLUE=""$'\033[44m'""
PINK=""$'\033[01;35m'""
MAGENTA=""$'\033[00;35m'""
BGMAGENTA=""$'\033[45m'""
LMAGENTA=""$'\033[01;35m'""
CYAN=""$'\033[36m'""
BGCYAN=""$'\033[46m'""
LCYAN=""$'\033[01;36m'""
WHITE=""$'\033[01;37m'""
BGWHITE=""$'\033[47m'""
LGRAY=""$'\033[37m'""

NORM=""$'\033[0;0m'""
BOLD=""$'\033[1m'""
FAINT=""$'\033[2m'""
CURSIVE=""$'\033[3m'""
UNDERLINE=""$'\033[4m'""
BLINK=""$'\033[5m'""
INVERTED=""$'\033[7m'""
INVERSE=""$'\033[7m'""



else
# definind color for zsh prompt

BGBLACK="%{"$'\033[40m'"%}"
BLACK="%{"$'\033[30m'"%}"
GRAY="%{"$'\033[01;30m'"%}"
LGREEN="%{"$'\033[01;32m'"%}"
BGGREEN="%{"$'\033[42m'"%}"
GREEN="%{"$'\033[32m'"%}"
LRED="%{"$'\033[01;31m'"%}"
BGRED="%{"$'\033[41m'"%}"
RED="%{"$'\033[31m'"%}"
YELLOW="%{"$'\033[01;33m'"%}"
BGBROWN="%{"$'\033[43m'"%}"
BROWN="%{"$'\033[33m'"%}"
LBLUE="%{"$'\033[01;34m'"%}"
BGBLUE="%{"$'\033[44m'"%}"
BLUE="%{"$'\033[34m'"%}"

BOLD="%{"$'\033[01;39m'"%}"
CURSIVE="%{"$'\033[03;39m'"%}"
UNDERLINE="%{"$'\033[04;39m'"%}"
NORM="%{"$'\033[00m'"%}"
INVERSE="%{"$'\033[07m'"%}"
INVERTED="%{"$'\033[07m'"%}"

PINK="%{"$'\033[01;35m'"%}"
MAGENTA="%{"$'\033[00;35m'"%}"
BGMAGENTA="%{"$'\033[00;45m'"%}"
LMAGENTA="%{"$'\033[01;35m'"%}"
CYAN="%{"$'\033[36m'"%}"
BGCYAN="%{"$'\033[46m'"%}"
LCYAN="%{"$'\033[01;36m'"%}"
WHITE="%{"$'\033[01;37m'"%}"
BGWHITE="%{"$'\033[47m'"%}"
LGRAY="%{"$'\033[37m'"%}"

ORANGE="%{"$'\033[38;5;214m'"%}"
fi
fi

# urxvt - 256 colors
YELLOW256="%{"$'\033[38;5;60m'"%}"
BROWN256="%{"$'\033[38;5;68m'"%}"


#US="$LCYAN$USER"
US="$GREEN"
i1=""
AT="$GREEN@"
HO="$LGREEN%m"
PA=" $LBLUE%~"
LI=" $ $NORM "

root=0

if [ "$KSHUID" = "0" ]; then
		root=1
fi
if test "$USERNAME" = "root"; then
		root=1
fi



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

if [ $root ]
then
		US="$RED"
    #echo -ne "\033]11;#bb6f20\007";
    #echo -ne "\033]10;#000000\007";
else 
		US="$GREEN"
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
export PZONE=$ZZ
if [ ! -z $ZONE ] #within a netns
then
		if [ $ZONE = "alp" ]; then
				export PZONE="$YELLOW@$ZZ"
				ZONE="%{$YELLOW%}@$ZONE"
		else
				export PZONE="$CYAN@$ZZ"
				ZONE="%{$LCYAN%}@$ZONE"

		fi
else # chroot?
		if [ -f /zone ]; then
				ZONE="$NORM@`cat /zone`"
				export PZONE=$ZONE
		#else
		#if [ -f /arch ]; then
				#ZONE="%{$BLUE%}@arch"
		#fi
		fi
fi

gitdir=""
GITP=""
if [ ! -z $GIT_DIR ]
then
  export GITPROMPT=1
	GP="$WHITE"""
fi

if [ ! -z $ASH ] # 
then
		export PS1='\033[0;37mash$NORM $US$USER$PZONE$LBLUE `pwd | sed -e s./home/micha.~.` $CYAN$ $NORM'
fi


if [ ! -z $KSHUID ] # set by mksh
then
		#export PS1='mksh: $GREEN$USER$YELLOW@$ZZ$LBLUE $PWD $NORM'
		if [ $KSHUID -eq 0 ]; then # root
				#export PS1='mksh:$RED root$ZONE$BLUE $PWD $RED# $NORM '
				export PS1='$WHITE${GIT_DIR:+vcsh: $PINK${GIT_DIR/*\//} }mksh:$NORM$RED root$NORM$YELLOW$PZONE$LBLUE ${PWD/${HOME%/}/\~} $RED# $NORM'
#export PROMPT='%{$WHITE%}${GIT_DIR:+vcsh: $PINK${${GIT_DIR/*\//}%.git} }%{$NORM%}\
		else
				#export PS1='mksh: $GREEN$USER$ZONE $BLUE$PWD $CYAN$ $NORM'
				export PS1='$WHITE${GIT_DIR:+vcsh: $PINK${GIT_DIR/*\//} }$NORM mksh:$NORM$LGREEN $USER$PZONE $LBLUE${PWD/${HOME%/}/\~} $CYAN$ $NORM'
		fi

fi




#export PROMPT="$TITLESTART$TITLE$TITLEEND$US$i1$AT$HO$PA$LI"
#export OPROMPT="$TITLESTART$TITLE$TITLEEND$US$i1$AT$HO$PA$LI"
export OPROMPT='%{$US%}$USER$ZONE %{$BLUE%}$PWD %(!.%{$RED%}.%{$CYAN%})$ %f'

#
#if [ ! -z $KSHUID ] # set by mksh
#then
#		#export PS1='mksh: $GREEN $USER$YELLOW@$ZZ$LBLUE $PWD $NORM'
#		#export PS1=$PROMPT
#		if [ $KSHUID -eq 0 ]; then
#				export PS1='mksh:$RED root$ZONE$BLUE $PWD $RED# $NORM '
#		else
#				export PS1='mksh: $GREEN$USER$ZONE $BLUE$PWD $CYAN$ $NORM'
#		fi
#fi
#



#export PROMPT='%{$WHITE%}`test -n "$GIT_DIR" && (echo -n $GIT_DIR | sed -e "sx.*/x%{$WHITE%}vcsh:%{$NORM$PINK%} x" -e "sx\..*x x")`%{$NORM%}\
export PROMPT='%{$WHITE%}${GIT_DIR:+vcsh: $PINK${${GIT_DIR/*\//}%.git} }%{$NORM%}\
%{$US%}$USERNAME$ZONE %{$BLUE%}$PPWD %(!.%{$RED%}.%{$CYAN%})$ %f'

export OLDPROMPT=$PROMPT
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
#export PATH=$PATH:~/static/bin:~/scripts:~/git/tools:/usr/bin/vendor_perl
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
BLACK=""$'\033[30m'""
BGBLACK=""$'\033[40m'""
GRAY=""$'\033[01;30m'""
LGREEN=""$'\033[01;32m'""
GREEN=""$'\033[32m'""
BGGREEN=""$'\033[42m'""
LRED=""$'\033[01;31m'""
RED=""$'\033[31m'""
BGRED=""$'\033[41m'""
YELLOW=""$'\033[01;33m'""
BROWN=""$'\033[33m'""
BGYELLOW=""$'\033[43m'""
LBLUE=""$'\033[01;34m'""
BLUE=""$'\033[34m'""
BGBLUE=""$'\033[44m'""
PINK=""$'\033[01;35m'""
MAGENTA=""$'\033[00;35m'""
BGMAGENTA=""$'\033[45m'""
LMAGENTA=""$'\033[01;35m'""
CYAN=""$'\033[36m'""
BGCYAN=""$'\033[46m'""
LCYAN=""$'\033[01;36m'""
WHITE=""$'\033[01;37m'""
BGWHITE=""$'\033[47m'""
LGRAY=""$'\033[37m'""

NORM=""$'\033[0;0m'""
BOLD=""$'\033[1m'""
FAINT=""$'\033[2m'""
CURSIVE=""$'\033[3m'""
UNDERLINE=""$'\033[4m'""
BLINK=""$'\033[5m'""
INVERTED=""$'\033[7m'""
INVERSE=""$'\033[7m'""

ORANGE=""$'\033[38;5;214m'""

export CLICOLOR=1


# path history, menu
# better would be smenu ('smenu -c -n')
export BEMENU_BACKEND=curses
alias ph='chdir `uniq $HOME/.pathhistory | tac | bemenu || echo $PWD`'

# cmd history, menu
alias ch='zsh -c "`sed -e "s/^:.*:0;//" $HOME/.zsh_history | tac | bemenu`"'
alias pc='zsh -c "`sed -e "s/^:.*:0;//" $HOME/.zsh_history | tac | bemenu`"'

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

if [ -e "$HOME/.pprofile" ] 
then
		source $HOME/.pprofile
fi


TT=UUU
