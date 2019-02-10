
alias bl='source ~/.shellbookmarks'
source ~/.shellbookmarks
alias rb='rmbookmark'
alias lb='listbookmarks'
alias sb='source ~/prog/scripts/setbookmark'
alias b='source ~/prog/scripts/cdbookmark'

alias gtam='git commit -a -m "minor changes"'
alias gtamp='git commit -a -m "minor changes" & git push'
alias gta='git commit -a'

export PATH=$PATH:~/prog/scripts

alias l='ls -lh'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias md='mkdir'
alias rd='rmdir'

alias pf='perldoc -f'

export CLICOLOR=1
export LSCOLORS="eaEafaDaca"


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
		#TITLE="$USER@$HOST:"
		TITLE="$USER@$HOST: %-2d"
else
		#. /etc/zsh/zprofile
fi


if test $USER = "micha"
then
		US="$LCYAN%n"
fi

if test $USER = "root"
then
		US="$RED%n"
fi

#export PROMPT="$US$i1$AT$HO$PA$LI"
export PROMPT="$TITLESTART$TITLE$TITLEEND$US$i1$AT$HO$PA$LI"



