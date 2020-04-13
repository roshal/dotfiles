
### if not running interactively do not do anything
! echo "${-}" | grep -q i && return

source "${HOME}/.config/bash/bash-run-config.sh"

source "${HOME}/.config/bash/bash-source-alias.sh"
source "${HOME}/.config/bash/bash-source-aliases.sh"
source "${HOME}/.config/bash/bash-source-commands.sh"
source "${HOME}/.config/bash/bash-source-completion.sh"
source "${HOME}/.config/bash/bash-source-environment.sh"
source "${HOME}/.config/bash/bash-source-functions.sh"
source "${HOME}/.config/bash/bash-source-history.sh"
source "${HOME}/.config/bash/bash-source-links.sh"
