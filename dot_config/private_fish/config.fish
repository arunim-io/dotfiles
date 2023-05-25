if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

set -gx BROWSER "/usr/bin/firefox"
set -gx EDITOR "nvim"
set -gx VISUAL "code"
set -gx PAGER "most"

starship init fish | source


# pnpm
set -gx PNPM_HOME "/home/arunim/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end