
### if not running interactively do not do anything
! echo "${-}" | grep -q i && return

source "${HOME}/.config/bash/bash-runcom.sh"
source "${HOME}/.config/bash/bash-source-aliases.sh"
source "${HOME}/.config/bash/bash-source-completion-nps.sh"
source "${HOME}/.config/bash/bash-source-functions.sh"
source "${HOME}/.config/bash/bash-source-links.sh"
