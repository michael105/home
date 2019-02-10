
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

fpath=(/usr/local/share/zsh-completions $fpath)

# merging oh-my-zsh ..
#

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/micha/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


#misc my settings, again

#export PROMPT="$US$i1$AT$HO$PA$LI"
export PROMPT="$TITLESTART$TITLE$TITLEEND$US$i1$AT$HO$PA$LI"


export CLICOLOR=1
export LSCOLORS="eaEafaDaca"

export LESSOPEN="|/usr/local/bin/lesspipe.sh %s" LESS_ADVANCED_PREPROCESSOR=1


