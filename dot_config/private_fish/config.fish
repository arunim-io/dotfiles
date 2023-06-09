if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

set -gx BROWSER "/usr/bin/firefox"
set -gx EDITOR "nvim"
set -gx VISUAL "nvim"
set -gx PAGER "most"

# Keybind for Control+Backspace
bind \b 'backward-kill-word'
# Keybind for Control+Delete
bind \e\[3\;5~ 'kill-word'

starship init fish | source


# pnpm
set -gx PNPM_HOME "/home/arunim/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
