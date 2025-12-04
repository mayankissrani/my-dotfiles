# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Add zsh-completions to fpath (must be BEFORE compinit)
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
autoload -U compinit && compinit

# Which plugins to load -- MUST be set BEFORE sourcing oh-my-zsh.sh
plugins=(
  git
  zsh-autosuggestions
  zsh-history-substring-search
  zsh-syntax-highlighting  # keep this LAST
)

# Load Oh My Zsh (only once)
source "$ZSH/oh-my-zsh.sh"

# User configuration (aliases, PATH additions, etc.)
alias cls="clear"
alias runser="python manage.py runserver"
alias updateit="sudo pacman -Syu"
alias acvenv="source .venv/bin/activate"
alias warpc="warp-cli connect"
alias warps="warp-cli status"
alias warpdc="warp-cli disconnect"
alias netres="sudo systemctl restart NetworkManager"
alias hotsup="nmcli connection up Hotspot"
alias hotsdown="nmcli connection down Hotspot"
alias kittyimg="kitty +kitten icat"

# NVM (keep these lines as-is)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion

# pipx PATH (you can move earlier if needed)
export PATH="$PATH:/home/animus/.local/bin"

# Starship prompt (fine to initialize after OMZ)
eval "$(starship init zsh)"
