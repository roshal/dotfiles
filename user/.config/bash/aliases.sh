
# bash

alias rc='echo -ne \\'\ec\\''

alias re='exec bash'

# change directory

alias aur='cd /-/aur'

# github

alias arch-linux-notes='cd /-/github/roshal/arch-linux-notes'
alias arch-linux='cd /-/github/roshal/arch-linux'
alias dotfiles='cd /-/github/roshal/dotfiles'
alias roshal='cd /-/github/roshal'
alias test-task-kanban-board='cd /-/github/roshal/test-task-kanban-board'
alias tokens='cd /-/github/roshal/tokens'

# grep

alias grep='grep --color'

alias x='grep -i'
alias z='grep -iz'

# history

alias h='history'

alias hh='hstr'

# linux

alias diff='diff --color'

# list directory

# LC_COLLATE=C
alias ls='ls --color=auto'

alias l='ls -Al --group-directories-first'
alias ll='ls -A --group-directories-first'

# node

alias jest='npx jest'
alias lint='npx eslint --color --ext .ts,.tsx'

# pass

alias pass='py /-/github/roshal/python/common/hex-16-shuffle.py'

# python

alias py='python'

# systemctl

alias syre='systemctl reboot'
alias sysu='systemctl suspend'

alias lock='swaylock --color 000000 --image /-/pictures/waves.jpg --tiling --font monospace --indicator-radius 96 --indicator-thickness 576'

alias suck='sysu && lock'

# underscore

alias _gcl='cd /-/git.esphere.local/courier/light-ui'
alias _gff='cd /-/git.esphere.local/frontend/Fish'
alias _gfl='cd /-/git.esphere.local/frontend/Leda'
alias _ccl='cd /-/git.esphere.local.copy/courier/light-ui'
alias _cff='cd /-/git.esphere.local.copy/frontend/Fish'
alias _cfl='cd /-/git.esphere.local.copy/frontend/Leda'
alias _ggr='cd /-/github/roshal'

# virtualbox

alias virtualbox='QT_QPA_PLATFORM= virtualbox'
