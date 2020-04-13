
### sudo

# # https://wiki.archlinux.org/index.php/Sudo#Passing_aliases
alias sudo='sudo '

### bash

alias rc='echo -ne \\'\ec\\''

alias re='exec bash'

### termite

### change initial directory
alias termite='termite --directory /-'

### english

alias english='LC_ALL=C'

### git

alias s='git status'

alias a='git add'

alias d='git diff'

alias l='git l'
alias ll='git ll'

### grep

alias grep='grep --color'

alias v='grep -iv'
alias x='grep -i'
alias z='grep -iz'

alias vv='grep -9 -iv'
alias xx='grep -9 -i'
alias zz='grep -9 -iz'

### history

alias h='history'

alias hh='hstr'

### linux

alias diff='diff --color'

### list directory

# # https://wiki.archlinux.org/index.php/Color_output_in_console#ls
alias ls='ls --color=auto'

alias f='ls -Al --group-directories-first'
alias ff='ls -A --group-directories-first'

### man

alias man='man --no-hyphenation --no-justification'

### node

alias cy='npx cypress run'

alias cypress='npx cypress'

alias jest='npx jest'

alias lint='npx eslint --color --ext .js,.jsx,.ts,.tsx'

alias tsc='npx tsc'

### path

alias path='tr : \\n <<< "${PATH}"'

### pass

alias pass='py /-/github/roshal/python/source/common/hex-16-sequence.py'

### pulseaudio

alias p='pulsemixer'
alias p-restart='systemctl --user restart pulseaudio.* ; systemctl --user status pulseaudio.*'

### python

alias py='python'

### screen capture

alias screen-capture='wf-recorder -f /-/wf-recorder/wf-recorder--$(date +%y-%m-%d)--$(date +%H-%M-%S).mp4'

### systemctl

alias systemctl='systemctl --no-pager'

alias syre='systemctl reboot'
alias sysu='systemctl suspend'

### suspend and lock

alias suck='sysu && swaylock'

alias lock='swaylock'

### virtualbox

alias virtualbox='QT_QPA_PLATFORM= virtualbox'

### wofi

alias wofi='wofi --allow-images'
