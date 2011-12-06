# colors and stuff
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# aliases
if [ -f ~/.dotfiles/bash_files/aliases.bash ]; then
	source ~/.dotfiles/bash_files/aliases.bash
fi

# 3rd party scripts
if [ -f ~/.bash_files/git-completion.bash ]; then
	source ~/.bash_files/git-completion.bash
fi
