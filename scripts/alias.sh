# Shell alias list
# sorted by categories
alias listalias='highlight --style oxygenated ~/scripts/alias.sh' 

alias vim=vim

# 
alias aik=aiksaurus

alias set-musl='source $HOME/scripts/set-musl.sh'

# Bookmarks
alias bl='source ~/.shellbookmarks'
source ~/.shellbookmarks 2>/dev/null
alias rb='rmbookmark'
alias lb='listbookmarks'
alias lm='source ~/scripts/listbookmarksbemenu'
alias sb='source ~/scripts/setbookmark'
alias b='source ~/scripts/cdbookmark'
#export BEMENU_BACKEND=curses

# apk ( if exists )
if [[ -e "/sbin/apk" ]]; then 
		alias al="apk list"
		alias ail="apk info -L"
		alias ai="apk info"
		alias aa="apk add -i"
		alias aA="apk add"
fi

# Git
alias gtam='git commit -a -m "(minor)"'
alias gtamm='git commit -a -m "(update)"'
alias gtamp='git commit -a -m "(minor)" && git push'
alias gtammp='git commit -a -m "(update)" && git push'
alias gta='git commit -a'
alias gtma='git commit -a -m'
alias gts='git status -uno -b -s'
alias gtm='git commit -m '
alias gtc='git commit '
alias gtda='git commit -m "(minor) `date`" -a'

# Shell
alias ls='ls --color'
alias l='ls -lh'
alias la='ls -lah'

# 
alias lr='less README* || less ?eadme*'


# goto last current dir. 
# Handy when opening or switching terminals
alias pp='cd `cat ~/.zshlp`'
#alias p+='cd `cat ~/.zshlp`'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias md='mkdir'
alias rd='rmdir'

alias pf='perldoc -f'

alias vi='vim'


alias make=colormake.sh

# p- -> go to last dir
alias p-="cd \$OLDPWD"

# iptables
alias il="iptables -L -v"
alias ia="iptables -A"
alias isave=iptables-save
alias irest=iptables-restore

# network namespaces
alias alp='ip netns exec alp'
alias ns='ip netns exec ns'


