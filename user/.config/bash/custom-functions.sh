
function eslintjq () {
	jq '.["rules"]["'"$1"'"]'
}

export -f eslintjq

function environ () {
	sed 's/\x0/\n/g' /proc/${1}/environ
}

export -f environ
