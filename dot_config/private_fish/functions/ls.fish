function ls --wraps='exa --color=auto' --wraps='exa -a --color=auto' --wraps='exa -alFh --color=auto' --description 'alias ls=exa -alFh --color=auto'
  exa -alFh --color=auto $argv
        
end
