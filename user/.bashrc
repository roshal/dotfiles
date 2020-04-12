
### if not running interactively don not do anything
if ! echo ${-} | grep -q i
then return
fi

### change initial directory
if test -z "${__flag++}"
then cd /-
fi
export __flag=

source "${HOME}/.config/bash/common.sh"
source "${HOME}/.config/bash/custom-aliases.sh"
source "${HOME}/.config/bash/custom-completion-nps.sh"
source "${HOME}/.config/bash/custom-functions.sh"
source "${HOME}/.config/bash/custom-links.sh"

# source "${HOME}/.config/bash/completions/ble-0.3.2/ble.sh"
