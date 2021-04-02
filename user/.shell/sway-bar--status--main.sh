
function s {
	echo -n "<span color='#999'>${1}</span>"
}

function static {
	date +"$(s 000)·$(s 00)·$(s 0) $(s 00)-$(s 00)-$(s 00) $(s 00):$(s 00):$(s 00)"
}

function status {
	date +"$(s %j)·$(s %U)·$(s %w) $(s %y)-$(s %m)-$(s %d) $(s %H):$(s %M):$(s %S)"
}
