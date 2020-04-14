
cd /-

### environment

PS1='\e[40;90m\n\e[97m#\e[90m \e[92m\t\e[90m \e[94m$(pwd)\e[90m$(__git_ps1 " \e[97m%s\e[90m")\e[K\e[m\n'

PATH="${HOME}/.local/bin:${PATH}"
PATH="${HOME}/.yarn/bin:${PATH}"

### heterogeneous

source /usr/share/git/completion/git-prompt.sh
source /usr/share/nvm/init-nvm.sh

test -e "${HOME}/.local/bin/register-python-argcomplete" && eval "$(register-python-argcomplete pipx)"
test -e "${HOME}/.yarn/bin/nps" && eval "$(nps completion)"

### termite

# # https://wiki.archlinux.org/index.php/Termite#Ctrl+Shift+t

source /etc/profile.d/vte.sh

### environment after termite

export PROMPT_COMMAND="${PROMPT_COMMAND:-true}"

export PROMPT_COMMAND="${PROMPT_COMMAND} && history -a"
export PROMPT_COMMAND="${PROMPT_COMMAND} && history -c"
export PROMPT_COMMAND="${PROMPT_COMMAND} && history -r"

### bash

source "${HOME}/.config/bash/bash-runcom.sh"
