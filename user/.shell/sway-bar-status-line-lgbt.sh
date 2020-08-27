
AZ=ABCDEFGHIJKLMNOPQRSTUVWXYZ

function random {
	echo ${AZ:$((RANDOM % 26)):1}
}

function rainbow {
	echo -n "<span foreground='#f33'>$(random)</span>"
	echo -n "<span foreground='#f93'>$(random)</span>"
	echo -n "<span foreground='#ff3'>$(random)</span>"
	echo -n "<span foreground='#9f3'>$(random)</span>"
	echo -n "<span foreground='#39f'>$(random)</span>"
	echo -n "<span foreground='#f39'>$(random)</span>"
}

function datetime {
	date +'%j-%U-%w %y-%m-%d %T'
}

function line {
	echo "$(rainbow) $(datetime)"
}
