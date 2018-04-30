# Path to your oh-my-zsh installation & exports.
  export ZSH=$HOME/.oh-my-zsh
  export TERM="xterm-256color"
  export UPDATE_ZSH_DAYS=5

#theme
ZSH_THEME="powerlevel9k/powerlevel9k"

DISABLE_AUTO_UPDATE="false"

# Plugins
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

#export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nano'
fi


#ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Alieses below
