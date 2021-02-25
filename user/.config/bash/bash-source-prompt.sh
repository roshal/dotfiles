
# shellcheck disable=SC2016,SC2028

# # https://wiki.archlinux.org/index.php/Bash/Prompt_customization

# PS1='\n\e(B\e[40;97m$(basename -- "$(tty)")\e[90m \e[92m\t\e[90m \e[94m$(pwd)\e[90m$(__git_ps1 " \e[97m%s\e[90m")\e[K\e[m\n'

### enclosed escape sequences
# PS1='\n\[\e(B\e[40;97m\]$(basename -- "$(tty)")\[\e[90m\] \[\e[92m\]\t\[\e[90m\] \[\e[94m\]$(pwd)\[\e[90m\]$(__git_ps1 " \[\e[97m\]%s\[\e[90m\]")\[\e[K\e[m\]\n'

PS1="
$(
	fill zero
	fill back 333
	fill fore 999
	echo -n '$(basename -- "$(tty)")'
	fill fore 555
	echo -n ' '
	fill fore 693
	echo -n '\t'
	fill fore 555
	echo -n ' '
	fill fore 369
	echo -n '$(pwd)'
	fill fore 555
	printf '$(__git_ps1 " %s")' "$(
		fill fore 999
		echo -n '%s'
		fill fore 555
	)"
	fill line
	fill zero
)
"
