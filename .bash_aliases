alias gitbare='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

open() {
    (xdg-open $1 > /dev/null 2>&1 &)
}

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

apt() {
	command nala "$@"
}

sudo() {
	if [ "$1" = "apt" ]; then
		shift
		command sudo nala "$@"
	else
		command sudo "$@"
	fi
}
