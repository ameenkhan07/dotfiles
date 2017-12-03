# Python
alias py="python"
alias py2="python2"
alias py3="python3"
alias ptpy="ptpython"

# Virtualenv
alias venv="virtualenv"

# Python 2 venv
alias eac="source env/bin/activate"
alias epy="env/bin/python"
alias epip="env/bin/pip"
# Python 3 venv
alias vpy="venv/bin/python"
alias vpip="venv/bin/pip"


# Create an alias only if the destination exists
alia () {
    [[ -f $2 ]] && alias $1=$2
}
