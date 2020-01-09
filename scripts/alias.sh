# Shell alias list
# sorted by categories
alias listalias='highlight --style oxygenated ~/scripts/alias.sh' 

# Bookmarks
alias bl='source ~/.shellbookmarks'
source ~/.shellbookmarks
alias rb='rmbookmark'
alias lb='listbookmarks'
alias sb='source ~/scripts/setbookmark'
alias b='source ~/scripts/cdbookmark'

# Git
alias gtam='git commit -a -m "minor changes"'
alias gtamm='git commit -a -m "update"'
alias gtamp='git commit -a -m "minor changes" && git push'
alias gtammp='git commit -a -m "update" && git push'
alias gta='git commit -a'
alias gtma='git commit -a -m'
alias gts='git status -uno'
alias gtm='git commit -m '
alias gtc='git commit '

# Shell
alias ls='ls --color'
alias l='ls -lh'

# 
alias lr='less README* || less ?eadme*'


# goto last current dir. 
# Handy when opening or switching terminals
alias pp="cd `cat ~/.zshlp`"

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias md='mkdir'
alias rd='rmdir'

alias pf='perldoc -f'

alias vi='vim'




alias make=colormake.sh

# ever mistyped, and found yourself in your home?
# Now: hit p-
# and you'll be back .. ;)
alias p-="cd \$OLDPWD"


