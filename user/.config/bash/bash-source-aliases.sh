
### sudo

# # https://wiki.archlinux.org/index.php/Sudo#Passing_aliases
alias sudo='sudo '

### bash

alias rc='echo -ne \\'\ec\\''

alias re='exec bash'

### english

alias english='LC_ALL=C'

### git

alias a='git add'
alias d='git diff'
alias s='git status'

alias l='git l'

alias ll='git ll'

### grep

alias v='grep -iv'
alias x='grep -i'
alias z='grep -iz'

alias vv='grep -9 -iv'
alias xx='grep -9 -i'
alias zz='grep -9 -iz'

### history

alias h='history'

alias hh='hstr'

### directory list

alias f='ls -Al --group-directories-first'

alias ff='ls -A --group-directories-first'

### npx

alias cy='npx cypress run'

alias cypress='npx cypress'

alias jest='npx jest'

alias lint='npx eslint --color --ext .js,.jsx,.ts,.tsx'

alias tsc='npx tsc'

### path

alias path='tr : \\n <<< "${PATH}"'

### pulseaudio

alias p='pulsemixer'

### python

alias py='python'

### systemctl

alias systemctl='systemctl --no-pager'

alias syre='systemctl reboot'
alias sysu='systemctl suspend'

### lock and suspend

alias lock='swaylock'

alias stop='sysu && swaylock'

### wofi

alias wofi='wofi --allow-images'
