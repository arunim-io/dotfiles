export ZSH="/home/$USER/.oh-my-zsh"

plugins=(
  zsh-autocomplete
  zsh-autosuggestions
  you-should-use
  dotbare
  dnf
  extract
  poetry
  glab
  colorize
  sudo
  autojump
  vscode
  docker
  docker-compose
  yarn
  volta
  composer
  laravel
  flutter
  gh
  web-search
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

_dotbare_completion_cmd && _dotbare_completion_git

setopt GLOB_DOTS
unsetopt SHARE_HISTORY

[[ $- != *i* ]] && return

[[ -f ~/.aliases.sh ]] && . ~/.aliases.sh

neofetch

eval "$(starship init zsh)"
