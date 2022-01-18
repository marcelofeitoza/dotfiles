if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(starship init zsh)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  sudo
  web-search
  copydir
  copyfile
  copybuffer
  dirhistory
)

source $ZSH/oh-my-zsh.sh

# Android studio & Java
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export ANDROID_HOME=~/Android/Sdk

export PATH=$PATH:~/android-studio/bin
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export _JAVA_AWT_WM_NONREPARENTING=1

alias ls='exa --long --header --icons --sort=type'

alias zshrc="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

alias sdn='sudo shutdown -h now'
alias suspend='systemctl suspend'

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/marcelo/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
