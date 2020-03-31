
# # https://www.npmjs.com/package/nps#completion

### yargs command completion script

function _yargs_completions {
	local cur_word args type_list

	cur_word="${COMP_WORDS[COMP_CWORD]}"
	args=("${COMP_WORDS[@]}")

	### ask yargs to generate completions
	type_list=$("$(yarn global bin)/nps" --get-yargs-completions "${args[@]}")

	COMPREPLY=($(compgen -W "${type_list}" -- ${cur_word}))

	### if no match was found fall back to filename completion
	if [ ${#COMPREPLY[@]} -eq 0 ]
	then
		COMPREPLY=()
	fi

	return 0
}
