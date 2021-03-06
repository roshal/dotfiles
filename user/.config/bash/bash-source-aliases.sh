
### action

alias action='sh "${HOME}/.shell/action.sh"'

### bash

# alias rc='echo -ne \\ec'

alias ee='tput reset'

alias vv='exec bash'

### bat

alias ba='bat'

### bell

# alias bell='echo -e \\a'
# alias bell='printf \\a'

alias bell='tput bel'

### cal

alias year='cal --year'

### cat

alias ca='cat'

### code

alias e='code'

alias r='code --reuse-window'

### english

alias english='LC_ALL=C'

### exa

alias exa='exa --long --color-scale --all --group-directories-first --bytes --group --time-style long-iso --git'

### git

alias g='git'

alias a='git a'
alias b='git b'
alias c='git c'
alias d='git d'
alias l='git l'
alias s='git s'

alias bb='git bb'
alias br='git br'
alias co='git co'
alias ll='git ll'

alias lll='git lll'

alias main='git checkout main'

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

alias hi='history 9'

### lock and suspend

alias lock='swaylock'

alias stop='sysu && swaylock'

### ls

alias f='ls --almost-all --group-directories-first --human-readable -l --time-style +"%y-%m-%d %T"'

alias fd='ls --almost-all --directory --group-directories-first --human-readable -l --time-style +"%y-%m-%d %T"'

alias ff='ls --almost-all --group-directories-first --human-readable --time-style +"%y-%m-%d %T"'

### npx

alias cy='npx cypress run'

alias cypress='npx cypress'

alias eslint='npx eslint --quiet --color --ext .js,.jsx,.ts,.tsx'

alias jest='npx jest'

alias lint='npx eslint --quiet --color --ext .js,.jsx,.ts,.tsx .'

alias nodemon='npx nodemon'

alias tsc='npx tsc'

alias webpack='npx webpack'

alias ws='npx webpack serve'

### pacman

alias cleanse='sudo pacman --remove --nosave --recursive $(pacman --query --deps --quiet --unrequired)'

alias pi='pacman --query --info'
alias po='pacman --query --owns'

alias up='sudo pacman --sync --refresh --sysupgrade'

alias ups='sudo pacman --sync --refresh && pacman --query --upgrades'

### path

alias path='tr : \\n <<< "${PATH}"'

### pulseaudio

alias p='pulsemixer'

### python

alias py='bpython'

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
