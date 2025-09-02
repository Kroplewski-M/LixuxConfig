#
# ~/.bashrc
#
export PATH=$PATH:/home/mateuszk/.local/bin:/home/mateuszk/.dotnet/tools
export DOTNET_ROOT=/usr/share/dotnet/
export PATH=$DOTNET_ROOT:$PATH
export TERM='xterm-256color'

. "$HOME/.cargo/env"
eval "$(fzf --bash)"
eval "$(oh-my-posh init bash --config ~/poshthemes/paradox.json)"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\u '

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
