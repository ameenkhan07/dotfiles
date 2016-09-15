# Set the git date environment to any date
# then make any ammends to change time!
#
# Usage:
#
# gdate `date --date='2 days ago'`
# gdate reset
function gdate() {
    if [[ -z $1 ]]; then
        echo "Git date environment: " "$GIT_AUTHOR_DATE"
    elif [[ $1 = "reset" ]]; then
        unset GIT_AUTHOR_DATE
        unset GIT_COMMITTER_DATE
        echo "Git date environment reset."
    else
        export GIT_AUTHOR_DATE="$*"
        export GIT_COMMITTER_DATE="$*"
        echo "Git date environment set to:" "$*"
    fi
}

# Alert for git-commit when git date environment has been set.
function gc() {
    if ! [ -z $GIT_COMMITTER_DATE ]; then
        read "response?Git date environment set to: $GIT_COMMITTER_DATE. Continue? [y/Y/n] "
        if [[ $response =~ ^[y]$ ]]; then
            git commit -v
        elif [[ $response =~ ^[Y]$ ]]; then
            unset GIT_AUTHOR_DATE
            unset GIT_COMMITTER_DATE
            git commit -v
        else
            echo "Commit aborted."
        fi
    else
        git commit -v
    fi
}

# Log of files having most changes in the file
function gmost() {
    git log --pretty=format: --name-only | sort | uniq -c | sort -rg | head -10
}

# Git push current Branch
function gpb() {
    git push --set-upstream origin "$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
}

# Go to the root directory of a git project
function groot() {
    cd "$(git rev-parse --show-toplevel)"
}

#
function gmkpull() {
    repo_name="$(basename "$(git rev-parse --show-toplevel)")"
    branch_name="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
    pull_url="https://github.com/ameenkhan07/"$repo_name"/compare/"$branch_name"?expand=1"
    xdg-open $pull_url
}

# If a param is passed, add that, else add the current folder
function ga () {
    if ! [ -z "$1" ]; then
        git add "$@"
    else
        git add .
    fi
}
