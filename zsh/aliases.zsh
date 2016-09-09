alias reload!='. ~/.zshrc'

#####################################################################

# Hadoop Alias http://www.michael-noll.com/tutorials/running-hadoop-on-ubuntu-linux-single-node-cluster/
unalias fs &> /dev/null
alias fs="hadoop fs"
unalias hls &> /dev/null
alias hls="fs -ls"


#####################################################################

# https://github.com/rg3/youtube-dl/
alias ytb="youtube-dl -ciw --no-mtime -f 18 --restrict-filenames -o '~/Videos/%(title)s.%(ext)s'"
alias ytbg="youtube-dl -ciw --no-mtime --restrict-filenames -o '~/Videos/%(title)s.%(ext)s'"
alias ytmp3="youtube-dl -ciw --no-mtime --format=bestaudio --extract-audio --audio-format=mp3 --audio-quality=0 -o '~/Music/%(title)s.%(ext)s'"
alias ted="youtube-dl -ciw --no-mtime -f medium --restrict-filenames -o '~/Videos/%(title)s.%(ext)s'"
alias vimeo="youtube-dl -ciw --no-mtime -f h264-sd --restrict-filenames -o '~/Videos/%(title)s.%(ext)s'"

#####################################################################

# Learn about a random command, whenever you feel like it.
# Copied from: http://askubuntu.com/a/337382/415634
bored() {
    cowsay -f $(ls /usr/share/cowsay/cows | shuf -n 1 | cut -d. -f1) $(whatis $(ls /bin | shuf -n 1) 2>/dev/null)
}

# apt-get
alias aptg='sudo apt-get'
alias apti='sudo apt-get install'
alias aptp='sudo apt-get purge'
alias aptr='sudo apt-get remove'
alias aptrp='sudo apt-get autoremove --purge'
alias apts='apt-cache show'
alias aptug="sudo apt-get upgrade"
alias aptud="sudo apt-get update"

# Misc.
dus() {
    du -hs "$1" 2>/dev/null
}
du() {
    du --apparent-size -hd 1 "$@" | sort -rh
}
alias gbld="go build"
alias o="xdg-open"
alias r="ranger"

#####################################################################

# Create an alias only if the destination exists
alia () {
    [[ -f $2 ]] && alias $1=$2
}

# Anaconda
local anaconda=~/.apps/anaconda3/bin
alia apy  $anaconda/python
alia apip $anaconda/pip
alia aipy $anaconda/ipython

#####################################################################


# Taken from: https://github.com/jkbrzt/httpie#redirected-output
httpless() {
    http --pretty=all --print=hb "$@" | less -R
}

curless() {
    curl -q -i -s "$@" | less -R
}

ncm() {
    printf "$1" | nc localhost 8080 >/dev/null
}

# https://www.gitignore.io/docs#install-command-line-linux
gio() {
    curl -L -s https://www.gitignore.io/api/"$@"
}
