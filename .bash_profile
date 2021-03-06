#
# ~/.bash_profile
#

# add local python folder to PATH
export PATH="$HOME/.local/bin:$PATH"

# set XDG folders
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# set up bash history file
export HISTFILE="$XDG_DATA_HOME/bash/history"

# set up Xauthority
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

# set vim configuration folder (aw: XDG) 
export VIMINIT="source $XDG_CONFIG_HOME/vim/vimrc"

# move less files (aw: XDG)
export LESSKEY="$XDG_CONFIG_HOME/less/lesskey"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history" # superfluous since the next line disables history
export LESSHISTFILE=-

# move wget files (aw : XDG)
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

# set EDITOR var for lf
export EDITOR=vim

# GTK2 setup (aw: XDG)
#export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

# setup python history via startup file
export PYTHONSTARTUP="$XDG_CONFIG_HOME/pythonstartup.py"

# move texmf files out of ~ (aw: XDG)
export TEXMFHOME="$XDG_DATA_HOME/texmf"
export TEXMFVAR="$XDG_CACHE_HOME/texlive/texmf-var"
export TEXMFCONFIG="$XDG_CONFIG_HOME/texlive/texmf-config"

# move virtualenv folder (aw: XDG)
#export WORKON_HOME="$XDG_DATA_HOME/virtualenvs"

# move leiningen folder (aw: XDG)
#export LEIN_HOME="$XDG_DATA_HOME/lein"

# source the .bashrc so login shell has the same settings as a non-login shell
[[ -f ~/.bashrc ]] && . ~/.bashrc
