
function span {
	echo -n "<span foreground='#${1}'>${2}</span>"
}

function r {
	span a98 ${1}
}

function g {
	span 8a9 ${1}
}

function b {
	span 98a ${1}
}

function status {
	date +"$(r %j)-$(g %U)-$(b %w) $(r %y)-$(g %m)-$(b %d) $(r %H):$(g %M):$(b %S)"
}
