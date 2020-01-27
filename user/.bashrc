
### if not running interactively don not do anything
if ! echo ${-} | grep -q i
then return
fi

### change initial directory
if test -z "${__next++}"
then cd /-
fi
export __next=

source "${HOME}/.config/bash/config.sh"

source "${HOME}/.config/bash/aliases-$(cat /etc/hostname).sh"
source "${HOME}/.config/bash/aliases.sh"
