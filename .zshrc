# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git svn)

source $ZSH/oh-my-zsh.sh
export PATH="/home/ARBFUND/ryan/apps/maven/maven/bin:$PATH:/opt/java/64/jdk1.7.0_25/bin"
export JAVA_HOME="/opt/java/64/jdk1.7.0_25"

autoload -U promptinit
promptinit
prompt redhat

alias cw='cd ~/dev/cwan'
alias cwu='pushd . && cd ~/dev/cwan && svn up && popd'
alias update='sudo apt-get update && sudo apt-get upgrade -y'
alias m2='cd ~/.m2/repository'
alias cm2='cd ~/.m2/repository && rm -rf * && cd -'
alias de='cd ~/Desktop'
alias lks='ls'
alias svnuinf='svn update --set-depth infinity .'
alias svnuimm='svn update --set-depth immediates .'
alias svnue='svn update --set-depth empty .'
alias uack='curl http://betterthangrep.com/ack-standalone > ~/bin/ack && chmod 0755 ~/bin/ack'
alias cls='clear'
alias lah='ll -ah'
alias grep='nocorrect grep '
alias cp='nocorrect cp '
alias mv='nocorrect mv'
alias mkdir='nocorrect mkdir'

psa() {
	ps aux | grep $1 | grep -v grep
}
alias psa='nocorrect psa '
