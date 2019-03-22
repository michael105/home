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
alias gtamm='git commit -a -m "minor changes"'
alias gtam='git commit -a -m "update"'
alias gtammp='git commit -a -m "minor changes" && git push'
alias gtamp='git commit -a -m "update" && git push'
alias gta='git commit -a'
alias gts='git status -uno'

# Shell
alias ls='ls --color'
alias l='ls -lh'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias md='mkdir'
alias rd='rmdir'

alias pf='perldoc -f'

alias vi='vim'



alias make=colormake.sh
