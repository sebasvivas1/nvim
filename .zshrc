##### Environment Variables #####

## Oh My Zsh Variable ##
export ZSH="$HOME/.oh-my-zsh"

## Neovim ##
export NVIM="$HOME/Neovim"

## Terminal Editor ##
export EDITOR='nvim'

## Android ##
export ANDROID_STUDIO="$HOME/Library/AndroidStudio"
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export ANDROID_ADV_HOME="$HOME/.android/avd"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

## JAVA ##
export JAVA="/usr/lib/jvm/jdk1.8.0_231"

## PROTOC ##
export PROTOC="$HOME/Library/Protoc"

## PYTHON3 ##
export PYTHON3="/usr/bin/python3"

## NVM ##
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

## Yarn ##
YARN_BIN="$HOME/.yarn/bin"
YARN_MODULES="$HOME/.config/yarn/global/node_modules/.bin"

## Go - Golang ##
export GOROOT="/usr/local/go" # Instalaciòn de Go
export GOPATH="$HOME/Library/go" # Instalaciòn de los binarios de 3ros
GOBIN="$GOROOT/bin" # Binario de Go

## PATH ##
export PATH="$PATH:$YARN_BIN:$YARN_MODULES:$GOBIN:$PROTOC/bin:$ANDROID_STUDIO/bin:$NVIM/bin:$JAVA/bin:$GOPATH/bin:$PYTHON3"

##### Custom Features #####

# My own zsh theme
ZSH_THEME="jam"

## Default zsh theme ##
# ZSH_THEME="agnoster"

# Plugins
plugins=(git zsh-autosuggestions)

# Plugins Config
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#876300,bg=NONE,bold"
bindkey '^ ' autosuggest-accept

## Aliases ##
alias v=neovim
alias c=clear
alias glc=printGitlab
alias pg=printPersonalGitlab
alias zshconfig="nvim $HOME/.zshrc"
alias vimconfig="nvim $HOME/.config/nvim/init.vim"
alias installed="dnf list installed"
alias files="nautilus . &"
alias off="shutdown -P now"
alias repos="cd /etc/yum.repos.d/"
alias f="fzf"
alias ondock="systemctl start docker"
alias upgrade="sudo dnf upgrade"
alias matrix="npx matrix-rain"
alias reload="source /home/joshua/.zshrc"
alias install=rpmInstall

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

function printGitlab {
  echo '300Dev Gitlab'
  echo 'Gitlab Code' | xclip -selection clipboard
}

function printPersonalGitlab {
  echo 'Personal Gitlab'
  echo 'Personal Gitlab Code' | xclip -selection clipboard
}


### Native Features ###

export UPDATE_ZSH_DAYS=7
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh
