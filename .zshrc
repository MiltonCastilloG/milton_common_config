# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/castlemill/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
eval "$(starship init zsh)"
eval "$(starship init zsh)"
setopt PROMPT_SUBST
autoload -Uz add-zsh-hook
autoload -Uz vcs_info
setopt PROMPT_SUBST
setopt PROMPT_SUBST

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# pnpm
export PNPM_HOME="/home/castlemill/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end
export PATH="$HOME/.local/zed.app/bin:$PATH"

#plugin warp directory
wd() {
    . ~/.local/wd/wd.sh
}

# Plugin: autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Plugin: syntax highlighting (must be last)
# source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="$HOME/.local/bin:$PATH"
