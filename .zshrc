# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mrtrustor"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew docker osx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# my own scripts

export EDITOR=vim
export GOPATH=$HOME/go
export PATH=~/bin:$GOPATH/bin:/usr/local/bin:/opt/local/bin:/usr/local/opt/go/libexec/bin:$PATH
export AWS_DEFAULT_PROFILE=perso
export VAULT_ADDR=https://vault.oxalide.net

export LS_OPTIONS='-Ghl'
alias l='ls $LS_OPTIONS'
alias gac="git add .; git commit -v"
alias octave-cli="~/bin/start-octave.sh"
alias octave-gui="docker run --rm --name octave_gui -p 8083:8083 -v $HOME/.octaverc:/root/.octaverc -v /Users/MrTrustor/Documents/Infomatique/machine-learning:/scripts epflsti/octave-x11-novnc-docker"
alias octave-gui-stop="docker stop octave_gui"
alias vim="nvim"
alias hugo="docker run --rm mrtrustor/hugo:0.16"

# AWS CLI autocomplete
source /usr/local/share/zsh/site-functions/_aws

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/MrTrustor/bin/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/MrTrustor/bin/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/MrTrustor/bin/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/MrTrustor/bin/google-cloud-sdk/completion.zsh.inc'
fi
