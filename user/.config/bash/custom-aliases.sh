
### sudo

# # https://wiki.archlinux.org/index.php/Sudo#Passing_aliases
alias sudo='sudo '

### bash

alias rc='echo -ne \\'\ec\\''

alias re='exec bash'

### termite

### change initial directory
alias termite='termite --directory /-'

### change directory

alias aur='cd /-/aur'
alias config='cd /home/user/.config'
alias user='cd /home/user'

### git

alias s='git status'

alias a='git add'

alias d='git diff'

alias l='git l'
alias ll='git ll'

### github

alias arch-linux-notes='cd /-/github/roshal/arch-linux-notes'
alias arch-linux='cd /-/github/roshal/arch-linux'
alias chromium-theme='cd /-/github/roshal/chromium-theme'
alias common='cd /-/github/roshal/python/common'
alias dotfiles='cd /-/github/roshal/dotfiles'
alias github='cd /-/github'
alias roshal='cd /-/github/roshal'
alias test-task-kanban-board='cd /-/github/roshal/test-task-kanban-board'
alias tokens='cd /-/github/roshal/tokens'

### gitlab

alias gitlab='cd /-/gitlab'

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
