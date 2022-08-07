##### Environment Variables #####
export ZSH="$HOME/.oh-my-zsh"

export NVIM="$HOME/Neovim" # Neovim
export EDITOR='nvim' # Terminal Editor

export ANDROID_STUDIO="$HOME/Library/android-studio" # Android Studio
export ANDROID_HOME="$HOME/Android/Sdk" # Android SDK
export ANDROID_SDK_ROOT="$HOME/Android/Sdk" # Android SDK Root
export ANDROID_ADV_HOME="$HOME/.android/avd" # Android AVD
export PATH="$PATH:$ANDROID_HOME/emulator" # Android Emulator
export PATH="$PATH:$ANDROID_HOME/tools" # Android Tools
export PATH="$PATH:$ANDROID_HOME/tools/bin" # Android Tools Bins
export PATH="$PATH:$ANDROID_HOME/platform-tools" # Android Platf. Tools

export JAVA_HOME="/usr/lib/jvm/adoptopenjdk-11-openj9" # JAVA
export PROTOC="$HOME/Library/Protoc" # Protoc
export PYTHON3="/usr/bin/python3" # Python 3

## NVM ##
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export GOROOT="/usr/local/go" # Instalaciòn de Go
export GOPATH="$HOME/Library/go" # Instalaciòn de los binarios de 3ros
GOBIN="$GOROOT/bin" # Binario de Go

# CARGO
export CARGO_HOME="$HOME/.cargo"
export CARGO_BIN="$CARGO_HOME/bin"

## PATH ##
export PATH="$PATH:$GOBIN:$PROTOC/bin:$ANDROID_STUDIO/bin:$NVIM/bin:$JAVA_HOME/bin:$GOPATH/bin:$PYTHON3:$ANDROID_HOME"

## Aliases ##
alias v=neovim
alias vim=neovim
alias c=clear
alias gl=gitlab
alias f="fzf --preview 'bat --color=always --style=numbers {}'"
alias matrix="npx matrix-rain"

alias compose="docker compose"
alias ondock="systemctl start docker"

alias files="nautilus . &"
alias off="shutdown -P now"

alias up="sudo dnf upgrade"
alias install=rpmInstall
alias installed="dnf list installed"

alias gitconfig="nvim $HOME/.gitconfig"
alias zshrc="nvim $HOME/.zshrc"
alias vimrc="nvim $HOME/.config/nvim/init.vim"
alias repos="cd /etc/yum.repos.d/"
alias reload="source /home/joshua/.zshrc"
alias sound="systemctl --user restart pipewire pipewire-pulse"

alias kubectl="minikube kubectl --"

# Aliases Functions
function neovim {
  if [ $# -eq 0 ]; then
    nvim ./
  else
    nvim $1
  fi
}

function rpmInstall {
  if [ $# -eq 0 ]; then
    echo "Invalid package"
  else
    rpm -Uvh $1
  fi
}

# function gitlab {
  # echo 'JoshDev Gitlab'
  # echo '' | xclip -selection clipboard
# }

setopt BANG_HIST
setopt EXTENDED_HISTORY          
setopt INC_APPEND_HISTORY        
setopt SHARE_HISTORY             
setopt HIST_EXPIRE_DUPS_FIRST    
setopt HIST_IGNORE_DUPS          
setopt HIST_IGNORE_ALL_DUPS      
setopt HIST_FIND_NO_DUPS         
setopt HIST_IGNORE_SPACE         
setopt HIST_SAVE_NO_DUPS         
setopt HIST_REDUCE_BLANKS        
setopt HIST_VERIFY               
setopt HIST_BEEP

HISTSIZE=5000
SAVEHIST=5000
ZSH_THEME="jam" # My own zsh theme
# ZSH_THEME="agnoster" # Default zsh theme ##

export UPDATE_ZSH_DAYS=7

plugins=(git zsh-autosuggestions)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ffa463,bg=NONE,bold"
bindkey '^ ' autosuggest-accept

source $ZSH/oh-my-zsh.sh
