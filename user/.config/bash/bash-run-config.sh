
### sources

source /usr/share/git/completion/git-prompt.sh
source /usr/share/nvm/init-nvm.sh

# if [[ -r /usr/share/doc/mcfly/mcfly.bash ]]
# then
# 	source /usr/share/doc/mcfly/mcfly.bash
# fi

### environment

PS1='\e[40;90m\n\e[97m#\e[90m \e[92m\t\e[90m \e[94m$(pwd)\e[90m$(__git_ps1 " \e[97m%s\e[90m")\e[K\e[m\n'
