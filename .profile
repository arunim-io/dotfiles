# shellcheck shell=bash

if [ -d "$HOME/.bin" ]; then
  PATH="$HOME/.bin:$PATH"
elif [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export PATH="$PATH":"$HOME/Android/Sdk/platform-tools"
export PATH="$PATH":"$HOME/Android/Sdk/cmdline-tools/latest/bin"
export PATH="$PATH":"$HOME/Android/Sdk/tools"

export PATH="$PATH":"$HOME/.local/opt/flutter/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"

# shellcheck source=/dev/null
. "$HOME/.cargo/env"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(register-python-argcomplete pipx)"

export PATH="$PATH":"$HOME/.composer/vendor/bin"

export PATH="$PATH":/home/arunim/.spicetify

export CHROME_EXECUTABLE='/usr/bin/google-chrome-stable'
export BROWSER="/usr/bin/firefox"
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='most'
export HISTCONTROL=ignoreboth:erasedups

GPG_TTY="$(tty)"
export GPG_TTY
