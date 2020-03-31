
function eslintjq () {
	jq '.["rules"]["'"$1"'"]'
}

export -f eslintjq
