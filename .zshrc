# Environment Variables
GOPATH="/usr/local/go"
GOBIN="/usr/local/go/bin"
EXERCISM="$HOME/Exercism"
DENO_INSTALL="/home/joshua/.deno"
ANDROID_STUDIO="$HOME/AndroidStudio"

# PATH
export PATH="$PATH:$GOPATH:$GOBIN:$EXERCISM/bin:$DENO_INSTALL/bin:$PROTOC/bin:$ANDROID_STUDIO/bin"

# Yarn Global
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Editor Global
export EDITOR='nvim'

# Postgre Path
export PGDATA="/var/lib/pgsql/data"
export PGPORT=5432
export PGLOG="/var/lib/pgsql/pgstartup.log"

# Path to your oh-my-zsh installation.
export ZSH="/home/joshua/.oh-my-zsh"

### Features ###

# My own zsh theme
ZSH_THEME="jam" 

# Plugins
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Aliases
alias v=neovim
alias c=clear
alias gh=printGithub
alias config-zsh="nvim $HOME/.zshrc"
alias config-vim="nvim $HOME/.vimrc"
alias installed="dnf list installed"
alias studio="$HOME/AndroidStudio/bin/studio.sh"
alias files="nautilus ."
alias off="shutdown -P now"
alias repos="cd /etc/yum.repos.d/"
alias runmongo="sudo mongod --dbpath /var/lib/mongo --port 27017"
alias onpostgre="sudo systemctl start postgresql && sudo systemctl start pgadmin4"
alias offpostgre="sudo systemctl stop postgresql && sudo systemctl stop pgadmin4"

# Functions
function neovim {
  if [ $# -eq 0 ]; then
    nvim ./
  else
    nvim $1
  fi
}

function printGithub {
  echo 'Github'
  echo 'My Github Hash'
}

### If an option is activated relocate in ### Features ### section ###
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
