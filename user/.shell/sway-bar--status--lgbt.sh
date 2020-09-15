
function span {
	echo -n "<span foreground='#${1}'>${2}</span>"
}

function j {
	span c69 ${1}
}

function U {
	span c96 ${1}
}

function w {
	span cc3 ${1}
}

function y {
	span 9c6 ${1}
}

function m {
	span 6c9 ${1}
}

function d {
	span 3cc ${1}
}

function H {
	span 69c ${1}
}

function M {
	span 96c ${1}
}

function S {
	span c3c ${1}
}

function static {
	date +"$(j 256)-$(U 36)-$(w 6) $(y 20)-$(m 09)-$(d 12) $(H 20):$(M 09):$(S 12)"
}

function status {
	date +"$(j %j)-$(U %U)-$(w %w) $(y %y)-$(m %m)-$(d %d) $(H %H):$(M %M):$(S %S)"
}
