
### actions

alias dismiss='makoctl dismiss --all'

### colors

# # https://wiki.archlinux.org/index.php/Color_output_in_console
### aliases

# # https://wiki.archlinux.org/index.php/Color_output_in_console#diff
alias diff='diff --color=always'

# # https://wiki.archlinux.org/index.php/Color_output_in_console#grep
alias grep='grep --color=always'

# # https://wiki.archlinux.org/index.php/Color_output_in_console#ip
alias ip='ip --color'

# # https://wiki.archlinux.org/index.php/Color_output_in_console#ls
alias ls='ls --color'

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

### sudo

# # https://wiki.archlinux.org/index.php/Sudo#Passing_aliases
# # https://wiki.archlinux.org/index.php/Sudo#Reduce_the_number_of_times_you_have_to_type_a_password

PROMPT="$(echo -e "> $(tput setaf 3)enter pass for %u$(tput sgr0)\r")"

alias dosu='/usr/bin/sudo --prompt "${PROMPT}" '

alias sudo='/usr/bin/sudo --non-interactive --validate 2>/dev/null ; dosu '

### termite

alias termite='termite --directory /-'

### unix

alias man='LANG=ru_RU.UTF-8 "man" --no-hyphenation --no-justification'
alias men='"man" --no-hyphenation --no-justification'

### wofi

alias wofi='wofi --allow-images'
