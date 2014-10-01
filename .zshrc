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
plugins=(git svn mercurial)

source $ZSH/oh-my-zsh.sh

# Autocomplete
zstyle -e ':completion:*:hosts' hosts 'reply=(
  ${=${(f)"$(cat /etc/hosts(|)(N) <<(ypcat hosts 2>/dev/null))"}%%\#*}
  ${=${${${${(@M)${(f)"$(cat ~/.ssh/config 2>/dev/null)"}:#Host *}#Host }:#*\**}:#*\?*}}
  ${=${${${${(@M)${(f)"$(cat /etc/ssh/ssh_config 2>/dev/null)"}:#host *}#host }:#*\**}:#*\?*}}
)'
# a ajouter pour l'autocomplete sur le known_hosts
# ${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) 2>/dev/null)"}%%[#| ]*}//,/ }
fpath=(~/.oh-my-zsh/completion $fpath) 

# Customize to your needs...
# my own scripts
PATH=$PATH:/space/home/tchamley/bin

export EDITOR=vim
export PATH=$PATH:/usr/local/bin

export LS_OPTIONS='-Ghl'
alias l='ls $LS_OPTIONS'
alias gac="git add .; git commit -v"
alias ssh="/bin/bash /space/home/tchamley/bin/ssh"
alias ipadm=\	'dig AXFR adm oxalide.infra.infra-01.adm | egrep -i'
alias ipipmi=\	'dig AXFR ipmi oxalide.infra.infra-01.adm | egrep -i'
# Proxy HTTP
export http_proxy="http://httpproxy.pa3.oxalide.net:3128"
export https_proxy=$http_proxy
