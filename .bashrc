#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# load color definitions
source ~/.bashrc_colors
# load aliases and functions
source ~/.bash_aliases

# define prompt
PS1="$lightgreen\u@\h$nc:$lightblue\w $lightred\$(parse_git_branch)$nc\$ "
