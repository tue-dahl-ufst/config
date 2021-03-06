#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget-hsts"
alias lynx=lynxscript

# prompt is $dir> colored yellow
PS1='\[$(tput setaf 3; tput bold)\]\W\[$(tput sgr0)\]> '

# use wrapper script to make lf exit at the current directory
LFCD="$XDG_CONFIG_HOME/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
	source "$LFCD"
	alias lf='lfcd' # defined in $LFCD
fi
