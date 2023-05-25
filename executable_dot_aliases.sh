#list
alias ls='exa --color=auto'
alias la='exa -a'
alias ll='exa -alFh'
alias l='exa'
alias l.="exa -A | egrep '^\.'"

# view
alias cat='bat'

#free
alias free="free -mt"

# find
alias find="fd"

#continue download
alias wget="wget -c"

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#add new fonts
alias update-fc='sudo fc-cache -fv'

#hardware info --short
alias hw="hwinfo --short"

#get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#editor for important configuration files
#know what you do in these files
alias ngrub='sudo $EDITOR /etc/default/grub'
alias nconfgrub='sudo $EDITOR /boot/grub/grub.cfg'
alias nfstab='sudo $EDITOR /etc/fstab'
alias nsamba='sudo $EDITOR /etc/samba/smb.conf'
alias nhosts='sudo $EDITOR /etc/hosts'
alias nzsh='$EDITOR ~/.zshrc'
alias nstarship='$EDITOR ~/.config/starship.toml'
alias naliases='$EDITOR ~/.aliases.sh'
alias nprofile='$EDITOR ~/.profile'
alias ntopgrade='$EDITOR ~/.config/topgrade.toml'

#maintenance
alias big="expac -H M '%m\t%n' | sort -h | nl"

#remove
alias rm='rm -rf'
alias rmgitcache="rm -r ~/.cache/git"

#pnpm
alias pnx="pnpm nx --"

eval "$(thefuck --alias oops)"
