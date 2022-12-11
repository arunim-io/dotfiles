# shellcheck shell=bash

if [ -d "$HOME/.bin" ]; then
  PATH="$HOME/.bin:$PATH"
elif [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

export PATH="$PATH":"$HOME/.local/opt/flutter/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"

export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export PATH="$PATH":"$HOME/Android/Sdk/platform-tools"
export PATH="$PATH":"$HOME/Android/Sdk/cmdline-tools/latest/bin"
export PATH="$PATH":"$HOME/Android/Sdk/tools"

export PATH="$PATH":"$HOME/.fly/bin"
export PATH="$PATH":"$HOME/.deta/bin"

# shellcheck source=/dev/null
. "$HOME/.cargo/env"

export PATH="$PATH":"$HOME/.spicetify"

export CHROME_EXECUTABLE='/usr/bin/google-chrome-stable'
export BROWSER="/usr/bin/firefox"
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='most'
export HISTCONTROL=ignoreboth:erasedups
export GPG_TTY="$(tty)"
