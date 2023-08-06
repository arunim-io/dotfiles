function ls --wraps='exa -alFh --color=auto' --description 'alias ls=exa -alFh --color=auto'
  exa -alFh --color=auto $argv
        
end
