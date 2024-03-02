#
# ~/.bash_aliases
#

# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias gitbare='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# functions
open() {
    (xdg-open $1 > /dev/null 2>&1 &)
}

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
