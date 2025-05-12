#
# ~/.bashrc
#
export PATH=$PATH:/home/mateuszk/.local/bin
eval "$(oh-my-posh init bash)"

eval "$(fzf --bash)"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(zoxide init bash)"

#zoxide
alias cd='z'


alias startdocker='sudo systemctl start docker'
alias stopdocker='sudo systemctl stop docker'
alias ld='sudo lazydocker'
alias lg='lazygit'
alias randomWallpaper='./wallpaper.sh'
setWallpaper(){
  swww img "$HOME/Pictures/wallpapers/$1" --transition-type any --transition-duration 1
}

#load all functions for C# work
. ~/.bashDotNet.sh

fastfetch
. "$HOME/.cargo/env"
