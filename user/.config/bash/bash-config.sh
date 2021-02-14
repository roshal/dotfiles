
### if not running interactively do not do anything
! echo "${-}" | grep --quiet i && return

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
# source /etc/profile.d/vte.sh

# # https://wiki.archlinux.org/index.php/Bash#Command_not_found
source /usr/share/doc/pkgfile/command-not-found.bash
# sudo pkgfile -u

# # https://wiki.archlinux.org/index.php/Git#Git_prompt
source /usr/share/git/git-prompt.sh

source /usr/share/nvm/init-nvm.sh

### environment after vte
# # https://askubuntu.com/questions/67283
# # https://unix.stackexchange.com/questions/1288

export PROMPT_COMMAND="${PROMPT_COMMAND:-true}"

export PROMPT_COMMAND="${PROMPT_COMMAND} && history -a"
export PROMPT_COMMAND="${PROMPT_COMMAND} && history -n"

# export PROMPT_COMMAND="${PROMPT_COMMAND} && history -a"
# export PROMPT_COMMAND="${PROMPT_COMMAND} && history -c"
# export PROMPT_COMMAND="${PROMPT_COMMAND} && history -r"

### prompt

source "${HOME}/.config/bash/bash-prompt.sh"

### origin

source "${HOME}/.config/bash/bash-origin.sh"
