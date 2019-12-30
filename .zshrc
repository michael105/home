
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
else
		#. /etc/zsh/zprofile
fi

if [ $HOST = "Michaels-MacBook-Pro.local" ]
then
		TITLE="$USER@osx-m: %-2d"
else
		TITLE="$USER@$HOST d: %-2d"
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
export OPROMPT="$TITLESTART$TITLE$TITLEEND$US$i1$AT$HO$PA$LI"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


#misc my settings, again


# set the title
if [ ! -z "$BASH" ]
then
		TITLESTART="%{"$'\033]0;'"%}"
		TITLEEND="%{"$'\007\033'"%}"
		TITLE="$USER@$HOST:"
else
		#. /etc/zsh/zprofile
fi

if test $USER = "micha"
then
		US="$LCYAN"
    echo -ne "\033]10;#ffffff\007";
    echo -ne "\033]11;#000000\007";

fi

if test $USER = "root"
then
		US="$RED"
    echo -ne "\033]11;#bb6f20\007";
    echo -ne "\033]10;#000000\007";
fi



if [ $HOST = "Michaels-MacBook-Pro.local" ]
then
		TITLE="$USER@${GREEN}osx-m $"
else
		TITLE="${US}$USER"
fi

export PROMPT="$TITLESTART$TITLE$TITLEEND$US$i1$AT$HO$PA$LI"
export OPROMPT="$TITLESTART$TITLE$TITLEEND$US$i1$AT$HO$PA$LI"




###export PROMPT="$US$i1$AT$HO$PA$LI"
#${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)
#
#export PROMPT="$TITLESTART$TITLE$TITLEEND$US$i1$AT$HO$PA$LI${ret_status}%{$fg[cyan]%}%{$reset_color%} $(git_prompt_info)"
#export PROMPT="%{$fg[cyan]%}%{$reset_color%} $US $TITLESTART$TITLE$TITLEEND $PA$LI"



#export LESSOPEN="/usr/bin/lesspipe.sh %s" 
export LESSOPEN="|/usr/bin/lesspipe.sh %s" LESS_ADVANCED_PREPROCESSOR=1

export PATH=$PATH:~/static/bin:~/scripts:~/git/tools:/usr/bin/vendor_perl
#export PATH=~/bin:$PATH:~/scripts:~/bin
export CLICOLOR=1
export LSCOLORS="eaEafaDaca"

source ~/scripts/alias.sh

export PATH=$PATH:~/scripts
#export PATH=~/bin:$PATH:~/scripts:~/bin


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
