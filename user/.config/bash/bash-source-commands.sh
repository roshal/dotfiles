
### alphabet

alias AZ='echo ABCDEFGHIJKLMNOPQRSTUVWXYZ'
alias ZA='echo ZYXWVUTSRQPONMLKJIHGFEDCBA'
alias az='echo abcdefghijklmnopqrstuvwxyz'
alias za='echo zyxwvutsrqponmlkjihgfedcba'

### bash

alias trim='sed -e "s/^[[:space:]]*//"'

alias bytes='wc --bytes'
alias chars='wc --chars'
alias lines='wc --lines'
alias words='wc --words'

### dismiss

alias dismiss='makoctl dismiss --all'

### linux

alias diff='diff --color'

alias grep='grep --color'
# # https://wiki.archlinux.org/index.php/Color_output_in_console#ls

alias ls='ls --color=auto'

alias man='LANG=ru_RU.UTF-8 "man" --no-hyphenation --no-justification'
alias men='"man" --no-hyphenation --no-justification'

### sudo

# # https://wiki.archlinux.org/index.php/Sudo#Passing_aliases
alias sudo='sudo '

### termite

alias termite='termite --directory /-'

### wofi

alias wofi='wofi --allow-images'
