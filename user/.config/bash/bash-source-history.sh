
# # hstr --show-configuration

### append new history items to .bash_history
shopt -s histappend

### leading space hides commands from history
export HISTCONTROL=ignoreboth
# export HISTCONTROL=ignoredups
# export HISTCONTROL=ignorespace
# export HISTCONTROL=ignorespace:ignoredups

### increase history file size - default is 500
export HISTFILESIZE=65536

### increase history size - default is 500
export HISTSIZE=${HISTFILESIZE}

export HISTTIMEFORMAT='%y-%m-%d %T '

### get more colors
export HSTR_CONFIG=hicolor

### bind hstr to ctrl-r - for vi mode check doc
bind '"\C-r": "\C-a hstr -- \C-j"'
