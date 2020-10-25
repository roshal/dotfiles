
# # hstr --show-configuration

### leading space hides commands from history
export HISTCONTROL='ignoreboth'
# export HISTCONTROL=ignoredups
# export HISTCONTROL=ignorespace
# export HISTCONTROL=ignorespace:ignoredups

### default is 500 - increase history file size
export HISTFILESIZE='16384'

### default is 500 - increase history size
export HISTSIZE="${HISTFILESIZE}"

export HISTTIMEFORMAT='%y-%m-%d %T  '

### get more colors
export HSTR_CONFIG='hicolor'

### bind hstr to ctrl-r - for vi mode check doc
bind '"\C-r": "\C-a hstr -- \C-j"'
