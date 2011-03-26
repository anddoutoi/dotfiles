if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# commads
alias c='clear'
alias ll='ls -l'
alias lls='ls -a'
alias lsa='ls -a'
alias lla='ls -al'

# apps
alias vm='vim'

# scripts
if [ -f ~/.bash_files/git-completion.bash ]; then
	source ~/.bash_files/git-completion.bash
fi
