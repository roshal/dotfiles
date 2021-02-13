
source "${HOME}/.shell/sway-bar--status--main.sh"

echo '{"version": 1}'

echo '['

while cat << here
[{
	"markup": "pango",
	"full_text": "$(status)",
}],
here
do usleep $((2000000 - 1$(date +%N) / 1000))
done
