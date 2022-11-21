export ZSH="/home/$USER/.oh-my-zsh"

plugins=(
  zsh-autocomplete
  zsh-autosuggestions
  you-should-use
  dotbare
  dnf
  extract
  poetry
  poe
  glab
  colorize
  sudo
  autojump
  vscode
  docker
  docker-compose
  volta
  flutter
  gh
  web-search
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

autoload -Uz compinit
fpath+=~/.zfunc

_dotbare_completion_cmd && _dotbare_completion_git

setopt GLOB_DOTS
unsetopt SHARE_HISTORY

[[ $- != *i* ]] && return

[[ -f ~/.aliases.sh ]] && . ~/.aliases.sh

eval "$(starship init zsh)"
eval "$(register-python-argcomplete pipx)"

# tabtab source for packages
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

neofetch
