
echo "{'version': 1}"

echo '['

while cat << here
[{
	'full_text': '$(date +'%j-%U-%w %y-%m-%d %T')',
}],
here
do usleep $(expr 1000000 - $(date +%N) / 1000)
done
