
### if not running interactively do not do anything
! echo "${-}" | grep -q i && return

### environment

PS1='\e[40;90m\n\e[97m#\e[90m \e[92m\t\e[90m \e[94m$(pwd)\e[90m$(__git_ps1 " \e[97m%s\e[90m")\e[K\e[m\n'

### sources

source /usr/share/git/completion/git-prompt.sh

source "${HOME}/.config/bash/bash-source-aliases.sh"
source "${HOME}/.config/bash/bash-source-commands.sh"
source "${HOME}/.config/bash/bash-source-completion.sh"
source "${HOME}/.config/bash/bash-source-environment.sh"
source "${HOME}/.config/bash/bash-source-functions.sh"
source "${HOME}/.config/bash/bash-source-git.sh"
source "${HOME}/.config/bash/bash-source-history.sh"
source "${HOME}/.config/bash/bash-source-links.sh"
source "${HOME}/.config/bash/bash-source-scripts.sh"
