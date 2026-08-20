
### if not running interactively do not do anything
! echo "${-}" | grep --quiet i && return

### prompt

PS1='\e[40;90m\n\e[97m#\e[90m \e[92m\t\e[90m \e[94m$(pwd)\e[90m$(__git_ps1 " \e[97m%s\e[90m")\e[K\e[m\n'

### variables

PATH="${BASE}"

# # https://classic.yarnpkg.com/en/docs/cli/global#adding-the-install-location-to-your-path
PATH="${HOME}/.yarn/bin:${PATH}"

PATH="${HOME}/.local/bin:${PATH}"

### heterogeneous

test -e "${HOME}/.local/bin/register-python-argcomplete" && eval "$(register-python-argcomplete pipx)"
test -e "${HOME}/.yarn/bin/nps" && eval "$(nps completion)"

### sources

# # https://wiki.archlinux.org/index.php/Termite#Ctrl+Shift+t
source /etc/profile.d/vte.sh

# # https://wiki.archlinux.org/index.php/Bash#Command_not_found
source /usr/share/doc/pkgfile/command-not-found.bash
# sudo pkgfile -u

# # https://wiki.archlinux.org/index.php/Git#Git_prompt
source /usr/share/git/git-prompt.sh

source /usr/share/nvm/init-nvm.sh

### environment after vte

export PROMPT_COMMAND="${PROMPT_COMMAND:-true}"

export PROMPT_COMMAND="${PROMPT_COMMAND} && history -a"
export PROMPT_COMMAND="${PROMPT_COMMAND} && history -c"
export PROMPT_COMMAND="${PROMPT_COMMAND} && history -r"

### origin

source "${HOME}/.config/bash/bash-origin.sh"
