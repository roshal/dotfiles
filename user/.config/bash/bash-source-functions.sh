
function aurgsm {
	cd '/-/aur'
	git clone "https://aur.archlinux.org/$1.git"
	cd -
	cd "/-/aur/$1"
	sudo --validate
	makepkg --syncdeps --install
	cd -
}

function environ () {
	sed 's/\x0/\n/g' /proc/$1/environ
}

function eslintjq () {
	jq '.["rules"]["'"$1"'"]'
}

# # https://wiki.archlinux.org/index.php/Color_output_in_console#man
function man {
	LESS_TERMCAP_md=$'\e[92m' \
	LESS_TERMCAP_so=$'\e[7m' \
	LESS_TERMCAP_us=$'\e[94m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_se=$'\e[0m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	command man ${@}
}
