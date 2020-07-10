
### pip

# function _pip_completion {
# 	COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" COMP_CWORD=$COMP_CWORD PIP_AUTO_COMPLETE=1 $1 2>/dev/null ) )
# }

# complete -o default -F _pip_completion pip

### yarn
# # https://github.com/dsifford/yarn-completion

# curl --create-dirs --output /home/user/.local/share/bash-completion/completions/yarn -- https://raw.githubusercontent.com/dsifford/yarn-completion/master/yarn-completion.bash
