set -gx EDITOR nvim
set -gx VISUAL code
set -gx PAGER most

set PATH $PATH /home/arunim/.local/bin

if command -q starship
    starship init fish | source
end
