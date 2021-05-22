
function s () {
	echo -n "<span color='#999'>${1}</span>"
}

#

function employ {
	datediff --format "$(s %d)" 2021-03-09 now
}

function moment {
	date +"$(s %j)·$(s %U)·$(s %w) $(s %y)-$(s %m)-$(s %d) $(s %H):$(s %M):$(s %S)"
}

function static {
	date +"$(s 000)·$(s 00)·$(s 0) $(s 00)-$(s 00)-$(s 00) $(s 00):$(s 00):$(s 00)"
}

function status {
	echo "$(employ) $(moment)"
}
