# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Add ~/.local/bin to PATH for programs like nvim
# Also add Go bin directory for applications like lazygit
export PATH="$HOME/go/bin:$HOME/.local/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="xiong-chiamiov-plus"

plugins=( 
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r #without fastfetch
pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -

# fastfetch. Will be disabled if above colorscript was chosen to install
#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up icons for files/directories in terminal using lsd
alias vi='nvim'
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# Use fd as the command name for fd-find
alias fd='fdfind'

# fzf shell integration
[ -f /usr/share/doc/fzf/examples/completion.zsh ] && source /usr/share/doc/fzf/examples/completion.zsh
[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && source /usr/share/doc/fzf/examples/key-bindings.zsh

# proxy setup
export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# 设置默认编辑器为 neovim
export EDITOR="nvim"
export VISUAL="nvim"

# Initialize zoxide (smarter cd command)
eval "$(zoxide init zsh)"
alias cd="z"

# tavily API key, avante.nvim used
export TAVILY_API_KEY=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
export GROQ_API_KEY=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

# Enable image.nvim in Neovide
export NEOVIDE_IMAGE_ENABLE=1
