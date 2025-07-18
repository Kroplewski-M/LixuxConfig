#
# ~/.bashrc
#
export PATH=$PATH:/home/mateuszk/.local/bin:/home/mateuszk/.dotnet/tools

eval "$(fzf --bash)"
eval "$(oh-my-posh init bash --config ~/poshthemes/agnoster.json)"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(zoxide init bash)"

#zoxide
alias cd='z'

alias ld='sudo lazydocker'
alias lg='lazygit'
alias randomwallpaper='./wallpaper.sh'
setWallpaper() {
  swww img "$HOME/Pictures/wallpapers/$1" --transition-type any --transition-duration 1
}
alias listsnapshots='sudo snapper -c root ls'
#load all functions for C# work
. ~/dotnetscripts.sh
. ~/dockerscripts.sh
. ~/wifi.sh
. ~/locksuspend.sh
. ~/music.sh
. ~/monitors.sh
fastfetch
. "$HOME/.cargo/env"

# Shopify Hydrogen alias to local projects
alias h2='$(npm prefix -s)/node_modules/.bin/shopify hydrogen'
