
function aurgsm () {
	cd '/-/aur' || return
	git clone "https://aur.archlinux.org/${1}.git"
	cd - || return
	cd "/-/aur/${1}" || return
	sudo --validate
	makepkg --syncdeps --install
	cd - || return
}

function environ () {
	sed 's/\x0/\n/g' "/proc/${1}/environ"
}

function eslintjq () {
	jq '.["rules"]["'"${1}"'"]'
}

function loop () {
	local index
	for ((index = 0; index < ${1}; index += 1))
	do eval "${*:2}"
	done
}

### man

# # https://wiki.archlinux.org/index.php/Color_output_in_console#man

# function man () {
# 	LESS_TERMCAP_md=$'\e[92m' \
# 	LESS_TERMCAP_so=$'\e[7m' \
# 	LESS_TERMCAP_us=$'\e[94m' \
# 	LESS_TERMCAP_me=$'\e[0m' \
# 	LESS_TERMCAP_se=$'\e[0m' \
# 	LESS_TERMCAP_ue=$'\e[0m' \
# 	command man "${@}"
# }
