#! /bin/bash


yttomp3(){ 
  yt-dlp -x --audio-format mp3 -P ~/Music $1
}
playmusic(){
  mpv  ~/Music/$1 &
}
