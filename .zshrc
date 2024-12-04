# Load Instant Prompt for Powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Oh My Zsh Config
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Powerlevel10k Config
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases
alias c="clear"
alias zshrc="nvim ~/.zshrc"
alias szsh="source ~/.zshrc"
alias hex2ascii="xxd -r -p"
alias ls='exa -l'
alias s-now="sudo shutdown -h now"
alias docker-clean='docker ps -q | xargs -r docker stop && docker ps -a -q | xargs -r docker rm && docker images -q | xargs -r docker rmi'
alias n='nvim'
alias cl=cd\ ~/Development/solana/compute-labs

# asdf
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"
export ASDF_DIR="$HOME/.asdf"
export PATH="$ASDF_DIR/bin:$ASDF_DIR/shims:$PATH"

# Paths
export PATH="$HOME/.asdf/shims:$PATH"
export PATH="$HOME/.asdf/bin:$HOME/.asdf/shims:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=~/.npm-global/bin:$PATH
export PATH=$PATH:$(go env GOPATH)/bin
export PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="/Users/marcelofeitoza/bin:$PATH"

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH

# pnpm
export PNPM_HOME="/Users/marcelofeitoza/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# VSCode alias
unalias code 2>/dev/null
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# BPF binary to ASM
alias so2asm='function _so2asm() { ezbpf -f "$1" -asm > "$(basename "${1%.so}.s")"; }; _so2asm'

export NARGO_HOME="/Users/marcelofeitoza/.nargo"

export PATH="$PATH:$NARGO_HOME/bin"
export PATH="/Users/marcelofeitoza/.bb:$PATH"
export PATH="/Users/marcelofeitoza/.bb:$PATH"
export PATH="/Users/marcelofeitoza/.bb:$PATH"
export PATH="/Users/marcelofeitoza/.bb:$PATH"
