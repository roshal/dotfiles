
### yarn
# # https://github.com/dsifford/yarn-completion

# curl --create-dirs --output /home/user/.local/share/bash-completion/completions/yarn -- https://raw.githubusercontent.com/dsifford/yarn-completion/master/yarn-completion.bash

### git
# # https://wiki.archlinux.org/index.php/Git#Bash_completion

source /usr/share/git/completion/git-completion.bash

__git_complete a __git_add
__git_complete g __git_main
__git_complete l __git_log_common_options
__git_complete ll __git_log_common_options
__git_complete lll __git_log_common_options
