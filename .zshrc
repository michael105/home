#fpath=(/usr/local/share/zsh-completions $fpath)

# merging oh-my-zsh ..
#

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="junkfood"
#ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable auto-setting terminal title.
 DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=()

source $HOME/.oh-my-zsh/oh-my-zsh.sh

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

ISGITDIR=0
GITPROMPT=0

function gitprompt(){
		if [ $GITPROMPT -ne 0 ]; then
		branch=`git status -uno -b -s 2>/dev/null | sed -n -E '/^##/s/^## ([^.]*).*/\1/p' 2>/dev/null`
		if [ ! -z $branch ];then
				export ISGITDIR=1
				gitstat=`git status -uno -b -s 2>/dev/null`
				modcount=`echo -n $gitstat | wc -l` 
				upcount=`echo -n $gitstat | sed -ne 's/.*\[ahead //' -e 's/\]$//p'` 
				if [ $modcount -eq 0 ]; then
						branchp="%{$CYAN%}$branch (=)"
				fi
				if [ $modcount -gt 0 ]; then
						branchp="%{$ORANGE%}$branch ($modcount)"
				fi
				upc=""
				if [ ! -z $upcount ]; then
						upc="($upcount)"
				fi

				export PROMPT="%{$WHITE%}git$upc > $branchp%{$NORM%} $OLDPROMPT"
		else
				export ISGITDIR=0
				export PROMPT=$OLDPROMPT
		fi
		fi
}

#misc my settings, again
chpwd(){ 
		echo $PWD > ~/.zshlp 
		export PPWD=`echo $PWD | sed -e s./home/$USERNAME.~.` 
		# set windowtitle
		print -Pn "\e]2;$TTERM $USERNAME:$PPWD\a"
		# path history
		echo $PWD >> ~/.pathhistory
		if [ $(( `stat ~/.pathhistory --format=%s` > 200000 )) = 1 ]; then
		  uniq ~/.pathhistory | tac | sed -e 1000q | tac > ~/.pathhistory
		fi
		gitprompt
}
preexec(){
		# set windowtitle
		print -Pn '\e]2;$2\a'
}


# cd into last current dir
initchdir=`cat $HOME/.zshlp 2>/dev/null`

precmd(){
		if [ $initchdir ];  then # execute once after startup
				chdir $initchdir
				initchdir=''
		fi;
		# windowtitle
		print -Pn "\e]2;$TTERM $USERNAME:$PPWD\a"
		if [ $ISGITDIR ]; then
				gitprompt
		fi
				
}

# Colors, again. Colors defined top are defined for the prompt.
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

#bindkey "${terminfo[kcuu1]}" up-line-or-history # up
#bindkey "${terminfo[kcud1]}" down-line-or-history # down
#bindkey "${terminfo[kpp]}" up-line-or-beginning-search # page up
#bindkey "${terminfo[knp]}" up-line-or-beginning-search # page down


#if [ -z $profile_sourced ]
#then
# source config, common to all shells
source $HOME/.profile
#fi

