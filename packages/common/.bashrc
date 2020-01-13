
### if not running interactively don not do anything
if [[ $- != *i* ]]
then return
fi

source "${HOME}/.config/bash/config.sh"

source "${HOME}/.config/bash/aliases.sh"
