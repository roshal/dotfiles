
function eslintjq () {
	jq '.["rules"]["'"$1"'"]'
}

function environ () {
	sed 's/\x0/\n/g' /proc/${1}/environ
}
