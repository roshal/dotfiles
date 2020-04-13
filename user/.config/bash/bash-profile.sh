
cd /-

### environment

PATH="${HOME}/.local/bin:${PATH}"
PATH="${HOME}/.yarn/bin:${PATH}"

### pipx

eval "$(register-python-argcomplete pipx)"

### termite

# # https://wiki.archlinux.org/index.php/Termite#Ctrl+Shift+t

source /etc/profile.d/vte.sh

### environment after termite

PROMPT_COMMAND="${PROMPT_COMMAND:-true}"

PROMPT_COMMAND="${PROMPT_COMMAND} && history -a"
PROMPT_COMMAND="${PROMPT_COMMAND} && history -c"
PROMPT_COMMAND="${PROMPT_COMMAND} && history -r"

### bash

source "${HOME}/.config/bash/bash-run-common.sh"
