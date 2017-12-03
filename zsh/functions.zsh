# Explain a shell command and it's params
# https://www.mankier.com/blog/explaining-shell-commands-in-the-shell.html
function explain () {
  if [ "$#" -eq 0 ]; then
    while read  -p "Command: " cmd; do
      curl -Gs "https://www.mankier.com/api/explain/?cols="75 --data-urlencode "q=$cmd"
    done
    echo "Bye!"
  elif [ "$#" -eq 1 ]; then
    curl -Gs "https://www.mankier.com/api/explain/?cols="75 --data-urlencode "q=$1"
  else
    echo "Usage"
    echo "explain                  interactive mode."
    echo "explain 'cmd -o | ...'   one quoted command to explain it."
  fi
}


# Usage: extract <file>
# Description: extracts archived files / mounts disk images
# Note: .dmg/hdiutil is macOS-specific.
# credit: http://nparikh.org/notes/zshrc.txt
function extract () {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)  tar -jxvf $1                        ;;
            *.tar.gz)   tar -zxvf $1                        ;;
            *.bz2)      bunzip2 $1                          ;;
            *.dmg)      hdiutil mount $1                    ;;
            *.gz)       gunzip $1                           ;;
            *.tar)      tar -xvf $1                         ;;
            *.tbz2)     tar -jxvf $1                        ;;
            *.tgz)      tar -zxvf $1                        ;;
            *.zip)      unzip $1                            ;;
            *.ZIP)      unzip $1                            ;;
            *.pax)      cat $1 | pax -r                     ;;
            *.pax.Z)    uncompress $1 --stdout | pax -r     ;;
            *.rar)      unrar x $1                          ;;
            *.Z)        uncompress $1                       ;;
            *.tar.bz)   tar -xvf $1                         ;;
            *)          echo "'$1' cannot be extracted/mounted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}


# `s` with no arguments opens the current directory in Sublime Text, otherwise
# opens the given location
function s() {
  if [ $# -eq 0 ]; then
    subl .;
  else
    subl "$@";
  fi;
}

# `o` with no arguments opens the current directory, otherwise opens the given
# location
function o() {
  if [ $# -eq 0 ]; then
    open .;
  else
    open "$@";
  fi;
}



# Create a new directory and enter it
function mkd () {
  mkdir -p "$@" && cd "$_";
}


# Taken from: https://github.com/jkbrzt/httpie#redirected-output
function httpless() {
    http --pretty=all --print=hb "$@" | less -R
}


# 
function curless() {
    curl -q -i -s "$@" | less -R
}


# 
function ncm() {
    printf "$1" | nc localhost 8080 >/dev/null
}


#
function dus() {
    du -hs "$1" 2>/dev/null
}


#
function du() {
    du --apparent-size -hd 1 "$@" | sort -rh
}

# https://www.gitignore.io/docs#install-command-line-linux
function gio() {
    curl -L -s https://www.gitignore.io/api/"$@"
}


# Start an HTTP server from a directory, optionally specifying the port
function hserver() {
  local port="${1:-8000}";
  sleep 1 && open "http://localhost:${port}/" &
  # Set the default Content-Type to `text/plain` instead of `application/octet-stream`
  # And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
  python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port";
}

# Enter binding to git status|ls
# Pressing enter in a git directory runs `git status`
# in other directories `ls`
function ls-git_status () {
  if [[ -z $BUFFER ]]; then
    echo ""
    if git rev-parse --is-inside-work-tree &>/dev/null; then
      git status -u .
    else
      ls -CF
    fi
    zle redisplay
  else
    zle accept-line
  fi
}
zle -N ls-git_status
bindkey "^M" ls-git_status



# Determine size of a file or total size of a directory
function fs() {
  if du -b /dev/null > /dev/null 2>&1; then
    local arg=-sbh;
  else
    local arg=-sh;
  fi
  if [[ -n "$@" ]]; then
    du $arg -- "$@";
  else
    du $arg .[^.]* ./*;
  fi;
}



# Syntax-highlight JSON strings or files
# Usage: `json '{"foo":42}'` or `echo '{"foo":42}' | json`
function json() {
  if [ -t 0 ]; then # argument
    python -mjson.tool <<< "$*" | pygmentize -l javascript;
  else # pipe
    python -mjson.tool | pygmentize -l javascript;
  fi;
}
