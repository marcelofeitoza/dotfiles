if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias c="clear"
alias zshrc="nvim ~/.zshrc"
alias szsh="source ~/.zshrc"
alias hex2ascii="xxd -r -p"
alias ls='exa -l'
alias code='/Users/marcelofeitoza/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'
alias s-now="sudo shutdown -h now"
alias docker-clean='docker ps -q | xargs -r docker stop && docker ps -a -q | xargs -r docker rm && docker images -q | xargs -r docker rmi'
alias n='nvim'

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.asdf/shims:$PATH"
export PATH="$HOME/.asdf/bin:$HOME/.asdf/shims:$PATH"
export PATH=~/.npm-global/bin:$PATH
export PATH=$PATH:$(go env GOPATH)/bin
export PATH="$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin"
export PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="/Users/marcelofeitoza/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH

# pnpm
export PNPM_HOME="/Users/marcelofeitoza/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
alias update-dotfile=/Users/marcelofeitoza/Development/dotfiles/update-dotfile.sh
