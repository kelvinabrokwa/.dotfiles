
# Path to your oh-my-zsh installation.
export ZSH=/Users/kelvinabrokwa/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
#ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"

source "$(npm root -g)/mapbox-cli/mapbox.sh"

function repo() {
  if [ "$1" == "-k" ]; then
    open https://github.com/kelvinabrokwa/$2
  elif [ "$2" == "-i" ]; then
    open https://github.com/mapbox/$1/issues
  elif [ ! -z "$1" ]; then
    open https://github.com/mapbox/$1
  else
    grep 'url' .git/config | sed 's/^.*://g' | awk '{print "https://github.com/"$1}' | xargs open
  fi
}

function goog() {
  query=$(echo $1 | sed "s/ /+/g")
  open "https://www.google.com/search?q="$query
}

function mkcd() {
  mkdir $1 && cd $1
}

function st2() {
  if [ -z $1 ]; then
    open -a "Sublime Text 2" .
  else
    open -a "Sublime Text 2" $1
  fi
}

alias issues="open https://github.com/issues/assigned"

alias repos="cd ~/Documents/Git/ && ls"

alias docs="cd ~/Documents/ && ls"

alias desk="cd ~/Desktop/ && ls"

alias dir="echo $PWD"

alias vi="mvim"

alias gs="git status"

alias pi="ssh pi@192.168.0.13" # ssh into raspberry pi

export NVM_DIR="/Users/kelvinabrokwa/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

. ~/z.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

