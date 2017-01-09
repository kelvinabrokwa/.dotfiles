# .bashrc

function repo() {
  # climb up until you find the root repo
  while [ ! -e ".git" ]; do
    cd ..
  done
  url=$(grep 'url' .git/config | sed 's/^.*= //g')
  if [[ $url != *"http"* ]]; then
    url=$(echo $url | sed 's/^.*://' | awk '{print "https://github.com/"$1}')
  fi
  open $url
}

function goog() {
  query=$(echo $1 | sed "s/ /+/g")
  open "https://www.google.com/search?q="$query
}

function mkcd() {
  mkdir $1 && cd $1
}

function lab() {
  cd /tmp/lab
  if [ -z $1 ]; then
    kill -INT $$
  fi
  max=0
  for n in $(ls); do
    (($n > $max)) && max=$n
  done
  new=$(($max + 1))
  mkdir $new
  cd $new
}

# airport
export airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"

alias issues="open https://github.com/issues/assigned"

alias docs="cd ~/Documents/ && ls"

alias desk="cd ~/Desktop/ && ls"

alias dir="echo $PWD"

alias vi="/Applications/MacVim.app/Contents/MacOS/Vim" # use macvim

alias huh="$airport -I && ping google.com"

alias ugh="sudo ifconfig en0 down && sudo ifconfig en0 up"

alias proj="cd ~/projects"

alias pi="ssh pi@192.168.0.200"

alias wmcs="ssh kelvin@bg1.cs.wm.edu"

alias ghpw="pbcopy < ~/.keys/.wm-cs-github.key"

alias m="make"

alias mv="mv -v"

alias cp="cp -v"

alias rm="rm -i -v"

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

alias kwm-start="brew services start kwm"

alias kwm-stop="brew services stop kwm"

# nvm
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

# z
# . ~/z.sh

PATH="$PATH:."
PATH=$PATH:$(npm bin)

# Go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/.go/bin
export PATH="$PATH:$GOBIN"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# LaTeX
export PATH="$PATH:/Library/TeX/texbin/"

# node modules
export PATH="$PATH:$(npm bin)"

