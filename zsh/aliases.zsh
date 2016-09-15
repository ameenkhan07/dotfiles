alias reload!='. ~/.zshrc'
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias o="xdg-open"
alias r="ranger"


# apt-get
alias aptg='sudo apt-get'
alias apti='sudo apt-get install'
alias aptp='sudo apt-get purge'
alias aptr='sudo apt-get remove'
alias aptrp='sudo apt-get autoremove --purge'
alias apts='apt-cache show'
alias aptug="sudo apt-get upgrade"
alias aptud="sudo apt-get update"

#-----------------------------------------------------------------------------#

# Hadoop Alias http://www.michael-noll.com/tutorials/running-hadoop-on-ubuntu-linux-single-node-cluster/
# unalias fs &> /dev/null
# alias fs="hadoop fs"
# unalias hls &> /dev/null
# alias hls="fs -ls"

#-----------------------------------------------------------------------------#

# https://github.com/rg3/youtube-dl/
alias ytb="youtube-dl -ciw --no-mtime -f 18 --restrict-filenames -o '~/Videos/%(title)s.%(ext)s'"
alias ytbg="youtube-dl -ciw --no-mtime --restrict-filenames -o '~/Videos/%(title)s.%(ext)s'"
alias ytmp3="youtube-dl -ciw --no-mtime --format=bestaudio --extract-audio --audio-format=mp3 --audio-quality=0 -o '~/Music/%(title)s.%(ext)s'"
alias ted="youtube-dl -ciw --no-mtime -f medium --restrict-filenames -o '~/Videos/%(title)s.%(ext)s'"
alias vimeo="youtube-dl -ciw --no-mtime -f h264-sd --restrict-filenames -o '~/Videos/%(title)s.%(ext)s'"

#-----------------------------------------------------------------------------#
