
### if not running interactively don not do anything
! echo ${-} | grep -q i && return

### source

source "${HOME}/.config/bash/bash-config.sh"
source "${HOME}/.config/bash/bash-source-aliases.sh"
source "${HOME}/.config/bash/bash-source-completion-nps.sh"
source "${HOME}/.config/bash/bash-source-functions.sh"
source "${HOME}/.config/bash/bash-source-links.sh"

### initialize once

if test -z "${__flag++}"
then source "${HOME}/.config/bash/initialization.sh"
fi

export __flag=
