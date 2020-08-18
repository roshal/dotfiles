
### actions

alias dismiss='makoctl dismiss --all'

### commands

alias trim='sed -e "s/^[[:space:]]*//"'

alias bytes='wc --bytes'
alias chars='wc --chars'
alias lines='wc --lines'
alias words='wc --words'

### files

# alias mv="mv --interactive"
# alias rm="rm --interactive"

### sequences

alias 09='echo 0123456789'
alias 90='echo 9876543210'

alias AZ='echo ABCDEFGHIJKLMNOPQRSTUVWXYZ'
alias ZA='echo ZYXWVUTSRQPONMLKJIHGFEDCBA'

alias az='echo abcdefghijklmnopqrstuvwxyz'
alias za='echo zyxwvutsrqponmlkjihgfedcba'

### sudo

# # https://wiki.archlinux.org/index.php/Sudo#Passing_aliases
alias sudo='sudo --prompt "$(tput setaf 3)$(echo -e enter pass for %u\\n\\r)$(tput sgr0)"'

### termite

alias termite='termite --directory /-'

### unix

alias diff='diff --color'

alias grep='grep --color'

# # https://wiki.archlinux.org/index.php/Color_output_in_console#ls
alias ls='ls --color=auto'

alias man='LANG=ru_RU.UTF-8 "man" --no-hyphenation --no-justification'
alias men='"man" --no-hyphenation --no-justification'

### wofi

alias wofi='wofi --allow-images'
