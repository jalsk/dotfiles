# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

plugins=(git svn)

source $ZSH/oh-my-zsh.sh
export PATH="/home/ARBFUND/ryan/apps/maven/maven/bin:$PATH:/opt/java/64/jdk1.7.0_25/bin"
export JAVA_HOME="/opt/java/64/jdk1.7.0_25"

autoload -U promptinit
promptinit
prompt redhat

alias update='sudo apt-get update && sudo apt-get upgrade -y'
alias m2='cd ~/.m2/repository'
alias cm2='cd ~/.m2/repository && rm -rf * && cd -'
alias de='cd ~/Desktop'
alias svnuinf='svn update --set-depth infinity .'
alias svnuimm='svn update --set-depth immediates .'
alias svnue='svn update --set-depth empty .'
alias uack='curl http://betterthangrep.com/ack-standalone > ~/bin/ack && chmod 0755 ~/bin/ack'
alias cls='clear'
alias lah='ll -ah'
alias grep='nocorrect grep '
alias cp='nocorrect cp '
alias mv='nocorrect mv '
alias mkdir='nocorrect mkdir '
alias which='nocorrect which '

psa() {
	ps aux | grep $1 | grep -v grep
}
alias psa='nocorrect psa '

#Extract most types of archive
extract () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)	tar xvjf $1 && cd $(echo $1 | sed 's/.tar.bz2//')	  ;;
			*.tar.gz)	tar xvzf $1 && cd $(echo $1 | sed 's/.tar.gz//')	 ;;
			*.bz2)		bunzip2 $1 && cd $(echo $1 | sed 's/.bz2//')	 ;;
			*.rar)		unrar x $1 && cd $(echo $1 | sed 's/.rar//')	 ;;
			*.gz)		gunzip $1 && cd $(echo $1 | sed 's/.gz//')    ;;
			*.tar)		tar xvf $1 && cd $(echo $1 | sed 's/.tar//')	 ;;
			*.tbz2)		tar xvjf $1 && cd $(echo $1 | sed 's/.tbz2//')    ;;
			*.tgz)		tar xvzf $1 && cd $(echo $1 | sed 's/.tgz//')	  ;;
			*.zip)		unzip $1 && cd $(echo $1 | sed 's/.zip//')    ;;
			*.Z)		uncompress $1 && cd $(echo $1 | sed 's/.Z//')	  ;;
			*.7z)		7z x $1 && cd $(echo $1 | sed 's/.7z//')	 ;;
			*)			echo "don't know how to extract '$1'..." ;;
		esac
	else
		echo "cannot extract '$1', I don't understand that filetype"
	fi
}
