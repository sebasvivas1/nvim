# Environment Variables
GOROOT="/usr/local/go"
GOPATH="$HOME/go"
GOBIN="$GOROOT/bin"
EXERCISM="$HOME/Exercism"
DENO_INSTALL="/home/joshua/.deno"
ANDROID_STUDIO="$HOME/android-studio"
NVIM="$HOME/Neovim"
FLUTTER="$HOME/Flutter"
SNAP="/var/lib/snapd/snap"
JAVA="/usr/lib/jvm/jdk1.8.0_231"
RUST="$HOME/.cargo/env"
PROTOC="$HOME/Protoc"
YARN_BIN="$HOME/.yarn/bin"
YARN_MODULES="$HOME/.config/yarn/global/node_modules/.bin"
EDITOR='nvim'
ZSH="/home/joshua/.oh-my-zsh"

# PATH
export PATH="$PATH:$GOROOT:$GOPATH:$GOBIN:$EXERCISM/bin:$DENO_INSTALL/bin:$PROTOC/bin:$ANDROID_STUDIO/bin:$NVIM/bin:$FLUTTER/bin:$JAVA/bin:$RUST:$PROTOC/bin:$SNAP/bin:$YARN_BIN:$YARN_MODULES:$EDITOR:$ZSH"

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

### Custom Features ###

# My own zsh theme
ZSH_THEME="jam" 

# Plugins
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# Aliases
alias v=neovim
alias c=clear
alias gh=printGithub
alias gl=printGitlab
alias zsh-config="nvim $HOME/.zshrc"
alias vim-config="nvim $HOME/.vimrc"
alias installed="dnf list installed"
alias studio="$ANDROID_STUDIO/bin/studio.sh"
alias files="nautilus . &"
alias off="shutdown -P now"
alias repos="cd /etc/yum.repos.d/"
alias f="fzf"
alias ondock="systemctl start docker"
alias upgrade="sudo dnf upgrade"

# Aliases Functions
function neovim {
  if [ $# -eq 0 ]; then
    nvim ./
  else
    nvim $1
  fi
}

function printGithub {
  echo 'Github'
  echo 'Github code'
}

function printGitlab {
  echo 'Gitlab'
  echo 'Gitlab code'
}


### Native Features ###

export UPDATE_ZSH_DAYS=7
ENABLE_CORRECTION="true"ng the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"
