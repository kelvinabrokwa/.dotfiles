# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin" 

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


# Open tmux at start
tmux attach &> /dev/null
if [[ ! $TERM =~ screen ]]; then
  exec tmux
fi

function mkcd() {
  mkdir $1 && cd $1
}

function sb2() {
  open -a 'Sublime Text 2' $1
}

alias l="ls -al"

alias repos="cd ~/Documents/Git && ls"

alias desk="cd ~/Desktop && ls"

alias gs="git status"

alias hub="open https://github.com"

function parse_git_branch { 
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
}

export PS1="\[\e[33;1m\]\t\[\e[0m\] \w \[\e[31;1m\]\$(parse_git_branch)\[\e[0m\]\$ "

# Google shit! Isn't that exiting?!
function goog() {
  query=$(echo $1 | sed 's/ /+/g')
  open 'https://www.google.com/search?q='$query
}
