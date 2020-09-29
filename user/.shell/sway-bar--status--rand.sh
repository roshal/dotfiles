
AZ=ABCDEFGHIJKLMNOPQRSTUVWXYZ

function random {
	echo ${AZ:$((RANDOM % 26)):1}
}

function rainbow {
	echo -n "<span color='#f33'>$(random)</span>"
	echo -n "<span color='#f93'>$(random)</span>"
	echo -n "<span color='#ff3'>$(random)</span>"
	echo -n "<span color='#9f3'>$(random)</span>"
	echo -n "<span color='#39f'>$(random)</span>"
	echo -n "<span color='#f39'>$(random)</span>"
}

function datetime {
	date +'%j-%U-%w %y-%m-%d %T'
}

function status {
	echo "$(rainbow) $(datetime)"
}
