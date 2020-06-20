
### bash

alias rc='echo -ne \\'\ec\\''

alias re='exec bash'

### cat

alias c='cat'

### english

alias english='LC_ALL=C'

### git

alias a='git add'
alias d='git diff'
alias s='git status'

alias l='git l'
alias ll='git ll'
alias lll='git lll'

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

### lock and suspend

alias lock='swaylock'

alias stop='sysu && swaylock'

### ls

alias f='ls -Al --group-directories-first'

alias ff='ls -A --group-directories-first'

### npx

alias cy='npx cypress run'

alias cypress='npx cypress'

alias jest='npx jest'

alias lint='npx eslint --color --ext .js,.jsx,.ts,.tsx'

alias tsc='npx tsc'

### pacman

alias update='sudo pacman --sync --refresh --sysupgrade'

### path

alias path='tr : \\n <<< "${PATH}"'

### pulseaudio

alias p='pulsemixer'

### python

alias py='python'

### systemctl

alias systemctl='systemctl --no-pager'

alias sypo='systemctl poweroff'
alias syre='systemctl reboot'
alias sysu='systemctl suspend'
