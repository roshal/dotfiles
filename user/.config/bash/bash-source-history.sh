
# # hstr --show-configuration

### erasedups:ignoreboth:ignoredups:ignorespace
export HISTCONTROL=ignoreboth

### default is 500 - increase history file size
export HISTFILESIZE='16384'

### default is 500 - increase history size
export HISTSIZE="${HISTFILESIZE}"

export HISTTIMEFORMAT='%y-%m-%d %T  '

export HSTR_CONFIG='hicolor,prompt-bottom,help-on-opposite-side,no-confirm,raw-history-view'

### ctrl-r
bind '"\C-r": "\C-a hstr -- \C-j"'

### ctrl-x k
# bind '"\C-xk": "\C-a hstr --kill-last-command \C-j"'
