
### action

alias action='sh /-/github/roshal/dotfiles/user/.shell/action.sh'

### bash

alias rc='echo -ne \\ec'

alias re='exec bash'

### bell

# alias bell='echo -e \\a'

alias bell='tput bel'

### cal

alias year='cal --year'

### cat

alias c='cat'

### code

alias r='code -r'

### english

alias english='LC_ALL=C'

### git

alias g='git'

alias a='git add'
alias d='git diff'
alias s='git status'

alias l='git l'
alias ll='git ll'
alias lll='git lll'

alias ch='git checkout'

### grep

alias gg='grep --ignore-case'
alias gr='grep --ignore-case -r'
alias gv='grep --ignore-case -v'
alias gz='grep --ignore-case -z'

alias g9g='grep -9 --ignore-case'
alias g9r='grep -9 --ignore-case -r'
alias g9v='grep -9 --ignore-case -v'
alias g9z='grep -9 --ignore-case -z'

### head

alias h='head'

### history

alias hh='hstr'

alias hi='history'

### lock and suspend

alias lock='swaylock'

alias stop='sysu && swaylock'

### ls

alias f='ls -l --almost-all --group-directories-first --human-readable'

alias fd='ls --almost-all --directory --group-directories-first --human-readable'

alias ff='ls --almost-all --group-directories-first --human-readable'

### npx

alias cy='npx cypress run'

alias cypress='npx cypress'

alias eslint='npx eslint --quiet --color --ext .js,.jsx,.ts,.tsx'

alias jest='npx jest'

alias lint='npx eslint --quiet --color --ext .js,.jsx,.ts,.tsx .'

alias tsc='npx tsc'

alias wds='npx webpack-dev-server'

### pacman

alias cleanse='sudo pacman --remove --nosave --recursive $(pacman --query --deps --quiet --unrequired)'

alias up='sudo pacman --sync --refresh --sysupgrade'

alias ups='sudo pacman --sync --refresh && pacman --query --upgrades'

### path

alias path='tr : \\n <<< "${PATH}"'

### pulseaudio

alias p='pulsemixer'

### python

alias py='python'

### rm

alias rf='rm --force'
alias rr='rm --recursive'

alias rrf='rm --force --recursive'

### systemctl

alias systemctl='systemctl --no-pager'

alias sypo='systemctl poweroff'
alias syre='systemctl reboot'
alias sysu='systemctl suspend'

### tail

alias t='tail'

### thunar

alias th='thunar'

### time

alias dashtime='date +"%y-%m-%d--%H-%M-%S"'
alias datetime='date +"%y-%m-%d %T"'

### translate

alias z='trans'

alias en='trans -t en'
alias ru='trans -t ru'

### tty

alias q='tty'
