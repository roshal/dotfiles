
### yarn
# # https://github.com/dsifford/yarn-completion

# curl --create-dirs --output /home/user/.local/share/bash-completion/completions/yarn -- https://raw.githubusercontent.com/dsifford/yarn-completion/master/yarn-completion.bash

### git
# # https://wiki.archlinux.org/index.php/Git#Bash_completion

source /usr/share/git/completion/git-completion.bash

__git_complete a _git_add
__git_complete d _git_diff
__git_complete s _git_status

__git_complete l _git_log
__git_complete ll _git_log
__git_complete lll _git_log

__git_complete ch _git_checkout

__git_complete ad _git_add
__git_complete br _git_branch
__git_complete ci _git_commit
__git_complete cl _git_clone
__git_complete co _git_checkout
__git_complete di _git_diff
__git_complete in _git_init
__git_complete me _git_merge
__git_complete re _git_reset
__git_complete st _git_status

__git_complete un _git_reset

### hub

# # https://github.com/github/hub/tree/master/etc#bash

source /usr/share/bash-completion/completions/hub
