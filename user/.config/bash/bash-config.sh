
### change directory initially

cd /-

### environment

PATH="${HOME}/.local/bin:${PATH}"
PATH="${HOME}/.yarn/bin:${PATH}"

### sources

source /usr/share/nvm/init-nvm.sh

### heterogeneous

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
