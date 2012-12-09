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

# Customize to your needs...
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/MacGPG2/bin:/usr/local/zend/bin:/Users/Trustor/Documents/ECL/TDS8/D-3/be3_propel/phing-2.4.5/bin:/Library/PostgreSQL/9.0/bin:/usr/texbin:/usr/local/zend/share/ZendFramework/bin
# my own scripts
PATH=$PATH:/Users/Trustor/bin

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/zend/share/ZendFramework/lib

export EDITOR=vim

export LS_OPTIONS='-GAhl'
alias ls='ls $LS_OPTIONS'
alias rmm='macrm'
alias gitk="gitk --all &"
alias gac="git add .; git commit -v"
alias emacsc='emacsclient'

# Open files with the default system program
alias -s pdf="open "
alias -s avi="open "
alias -s mkv="open "
alias -s mp4="open "
alias -s 3gp="open "
alias -s srt="emacs "
alias -s tex="emacs "
