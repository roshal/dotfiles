
source "${HOME}/.shell/sway-bar-status-lgbt.sh"

echo '{"version": 1}'

echo '['

while cat << here
[{
	"markup": "pango",
	"full_text": "$(status)",
}],
here
do usleep $(expr 1000000 - $(date +%N) / 1000)
done
