# If you come from bash you might have to change your $PATH.
. "$HOME/.cargo/env"
. "$HOME/.local/bin/env"
export BUN_INSTALL="$HOME/.bun"
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="vim"
export NVM_DIR="$HOME/.nvm"
export SDKMAN_DIR="$HOME/.sdkman"
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH
export PATH="$BUN_INSTALL/bin:$PATH"

# Path to your oh-my-zsh installation.

ZSH_THEME="powerlevel10k/powerlevel10k"

if [ "$TERM" = "linux" ] ; then
    ZSH_THEME="frisk"
fi

if [[ -o login ]] ; then
    ZSH_THEME="frisk"
fi

plugins=(git colorize colored-man-pages copypath cp virtualenv copyfile zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias ll="ls -alh --color=auto"
alias ls="ls -X --color=auto"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


