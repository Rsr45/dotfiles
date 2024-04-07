#-----------------------------------------------------
#            _              
#    _______| |__  _ __ ___ 
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__ 
# (_)___|___/_| |_|_|  \___|
#                           
#-----------------------------------------------------
# ~/.zshrc
#-----------------------------------------------------

# If you come from bash you might have to change your $PATH
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="darkblood"

plugins=( 
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-abbr
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r

### From this line is for pywal-colors
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
#(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh

# Define Editor
export EDITOR=nvim

# Aliases
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias ping='ping -c 5'
alias mkdir='mkdir -pv'
alias grep='grep -n --color'
alias getit='yt-dlp --extract-audio --audio-format mp3'
alias yt-mp3='yt-dlp --add-metadata -x --audio-quality 256k --audio-format mp3 -P "home:Music/youtube/"'
alias cpv='rsync -ah --info=progress2'
alias myip='curl ifconfig.me'
alias c='clear'
alias nf='neofetch'
alias pf='pfetch'
alias shutdown='systemctl poweroff'
alias v='$EDITOR'
alias ts='~/.config/scripts/snapshot.sh'
alias ascii='$HOME/.config/scripts/figlet.sh'
alias matrix='cmatrix'
alias wifi='nmtui'
alias od='~/private/onedrive.sh'
alias rw='~/dotfiles/waybar/reload.sh'
alias winclass="xprop | grep 'CLASS'"
alias cleanup='~/dotfiles/scripts/cleanup.sh'
alias vencord='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'

#
# Created by `pipx` on 2024-03-19 17:17:35
export PATH="$PATH:/home/vahlok/.local/bin"

export PATH=$PATH:/home/vahlok/.spicetify

#
# Personal Wine and Winetricks paths Environment Variables for Protontricks
export WINE="/usr/bin/wine"
export WINETRICKS="/usr/bin/winetricks"


eval "$(zoxide init zsh)"
