
function span () {
	echo -n "<span color='#${1}'>${2}</span>"
}

function j () {
	span c69 "${1}"
}

function U () {
	span c96 "${1}"
}

function w () {
	span cc3 "${1}"
}

function y () {
	span 9c6 "${1}"
}

function m () {
	span 6c9 "${1}"
}

function d () {
	span 3cc "${1}"
}

function H () {
	span 69c "${1}"
}

function M () {
	span 96c "${1}"
}

function S () {
	span c3c "${1}"
}

function static {
	date +"$(j 000)-$(U 00)-$(w 0) $(y 00)-$(m 00)-$(d 00) $(H 00):$(M 00):$(S 00)"
}

function status {
	date +"$(j %j)-$(U %U)-$(w %w) $(y %y)-$(m %m)-$(d %d) $(H %H):$(M %M):$(S %S)"
}
