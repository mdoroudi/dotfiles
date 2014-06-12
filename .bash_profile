export HISTCONTROL="erasedups"
export HISTSIZE="2000"
export HISTFILESIZE="2000"
shopt -s histappend

ulimit -n 1024

export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/share/man:/opt/local/share/man:$MANPATH"
export JAVA_HOME='/Library/Java/Home'

# Terminal colors (requires GNU coreutils)
#NM="\[\033[0;38m\]" # no background and white lines
#HI="\[\033[0;37m\]" # change this for letter colors
#HII="\[\033[0;31m\]" # change this for letter colors
#SI="\[\033[0;33m\]" # this is for the current directory
#IN="\[\033[0m\]"

if [ "$TERM" != "dumb" ]; then
    export LS_OPTIONS='-G'
    export CLICOLOR=1
    export LSCOLORS=fxfxcxdxbxegedabagacad
#    eval `dircolors ~/.dir_colors`
fi

# Useful aliases
alias mvim='/usr/local/bin/mvim'
alias ls='ls $LS_OPTIONS -hF'
alias ll='ls $LS_OPTIONS -lhF'
alias l='ls $LS_OPTIONS -lAhF'
alias cd..="cd .."
alias c="clear"
alias e="exit"
alias ..="cd .."
alias grep='grep --color=auto'
alias dbm="rake db:migrate DATABASE=all RAILS_ENV=development"
alias dbmt="rake db:migrate DATABASE=all RAILS_ENV=test"

export rspec_verbose=false
export unhide_stdio=false

alias gb="git branch"
alias gba="git branch -a"
alias gc="git commit -v"
alias gca="git commit -v -a"
alias gd="git diff | mate"
alias gl="git pull"
alias gp="git push"
alias gst="git status"
alias gco="git co"
alias gk="gitk --all & disown -h"
alias gitk="gk"
alias gg="git grep --color=always"
alias gcp='git cherry-pick'
alias grc='git rebase --continue'
alias gha='git log --pretty=format:"%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s" --date=short --name-status HEAD^^^^^..HEAD'
alias ghm='git log --author="Mina Doroudi" --pretty=format:"%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s" --date=short -status HEAD^^^^^..HEAD'
alias fs='cd /Users/minadoroudi/work/home_grown'
alias and='cd ~/Documents/workspace/Soduko'
alias pin='cd ~/work/pinterest_crawler'
source ~/.git-completion.sh
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi
source ~/.profile

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

export PS1='\[\e[1;31m\][\w\[\e[m\]\[\e[1;31m\]]\[\e[1;34m\]$(parse_git_branch)\[\e[0;30m\]'
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib
alias pg="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log"
