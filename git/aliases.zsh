alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gac='git add -A && git commit -m'

####################################
#############DUFFERNAMA#############
####################################
alias gai="git add --intent-to-add"
alias gap="git add -p"
alias gau="git add -u ."
alias gb="git branch -vv"
alias gbk="git checkout -"
alias gbb="git bisect bad"
alias gbg="git bisect good"
alias gbr="git bisect reset"
alias gcm="git commit -v --amend"
alias gch="git checkout "
alias gchm="git checkout master"
alias gcl="git clone"
alias gcld="git clone --depth 1"
alias gcpk="git cherry-pick -n"
alias gdc="git diff --cached -M"
alias gf="git fetch "
alias gfu="git fetch upstream && git rebase upstream/master"
alias gg="git grep --break --heading --line-number"
# alias gl="git log --date=short --pretty=format:'%C(bold blue)%h%C(reset) %<|(35)%ar %<(70,mtrunc) %s %d'" -n 20
alias gl="git --no-pager log --date=short --pretty=format:'%C(red)%h%C(reset) - %C(green)%<|(19,trunc)%ar%C(reset)  -   %C(white)%<(80,mtrunc)%s%C(reset) %C(yellow)%<(45,trunc)%d%C(reset)' -n 20"
# View commits that are not on master (pull request commits!)
alias glp="git --no-pager log master...  --no-merges --date=short --pretty=format:'%C(red)%h%C(reset) - %C(green)%<|(22,mtrunc)%ar%C(reset)  -   %C(white)%<(80,mtrunc)%s%C(reset) %C(yellow)%<(30,trunc)%d%C(reset)'"
alias gla="git log --date=short --pretty=format:'%C(auto) %<(18,trunc) %an %<|(35) %ar %<(70,mtrunc) %s %d' -n 20"
alias glc="git log --format=%B "
alias gll="git log --date=short --pretty=format:\"%C(auto) %h %ad %<|(35)%ar %<(70,mtrunc) %s %d\""
alias glu="git log --graph --abbrev-commit --decorate --date=relative --format=format:\"%C(blue)%h%C(reset) - %C(green)%ar%C(reset) - %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(yellow)%d%C(reset)\" --all"
alias gm="git merge --squash "
alias gp="git push "
alias gpf="git push --force"
alias gpl="git pull "
alias gr="git reset -q HEAD"
alias grb="git rebase master"
alias grbi="git rebase -i master"
alias grbc="git rebase --continue"
alias grbs="git rebase --skip"
alias grv="git remote -vv"
alias gru="git remote update"
alias gsl="git shortlog -n -s"
alias gst="git stash "
alias gsts="git stash save"
alias gsa="git stash apply"
alias gsp="git stash pop"
alias gstl="git stash list"
alias gun="git reset --soft @~1"
alias gwhat="git whatchanged --oneline"