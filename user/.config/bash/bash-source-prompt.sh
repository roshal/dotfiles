
# shellcheck disable=SC2016,SC2028

# # https://wiki.archlinux.org/index.php/Bash/Prompt_customization

# PS1='\n\e(B\e[40;97m$(basename -- "$(tty)")\e[90m \e[92m\t\e[90m \e[94m$(pwd)\e[90m$(__git_ps1 " \e[97m%s\e[90m")\e[K\e[m\n'

### enclosed escape sequences
# PS1='\n\[\e(B\e[40;97m\]$(basename -- "$(tty)")\[\e[90m\] \[\e[92m\]\t\[\e[90m\] \[\e[94m\]$(pwd)\[\e[90m\]$(__git_ps1 " \[\e[97m\]%s\[\e[90m\]")\[\e[K\e[m\]\n'

PS1="
$(
	tput sgr0
	tput setab 0
	tput setaf 15
	echo -n '$(basename -- "$(tty)")'
	tput setaf 8
	echo -n ' '
	tput setaf 10
	echo -n '\t'
	tput setaf 8
	echo -n ' '
	tput setaf 12
	echo -n '$(pwd)'
	tput setaf 8
	printf '$(__git_ps1 " %s")' "$(
		tput setaf 15
		echo -n '%s'
		tput setaf 8
	)"
	tput el
	tput sgr0
)
"
