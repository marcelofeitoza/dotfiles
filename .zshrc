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
alias s-now="sudo shutdown -h now"
alias docker-clean='docker ps -q | xargs -r docker stop && docker ps -a -q | xargs -r docker rm && docker images -q | xargs -r docker rmi'
alias n='nvim'

. "$HOME/.asdf/asdf.sh"
export PATH="$HOME/.asdf/shims:$PATH"
export PATH="$HOME/.asdf/bin:$HOME/.asdf/shims:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH=~/.npm-global/bin:$PATH
export PATH=$PATH:$(go env GOPATH)/bin
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

alias cs="/Users/marcelofeitoza/code-snippets.sh"
source ~/powerlevel10k/powerlevel10k.zsh-theme
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"

# VSCode alias
unalias code 2>/dev/null
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# BPF binary to ASM
alias so2asm='function _so2asm() { ezbpf -f "$1" -asm > "$(basename "${1%.so}.s")"; }; _so2asm'

alias cl=cd\ ~/Development/solana/compute-labs
