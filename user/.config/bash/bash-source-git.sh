
# GIT_PS1_DESCRIBE_STYLE='describe'
# GIT_PS1_SHOWCOLORHINTS='1'
# GIT_PS1_SHOWDIRTYSTATE='1'
# GIT_PS1_SHOWSTASHSTATE='1'
# GIT_PS1_SHOWUNTRACKEDFILES='1'
# GIT_PS1_SHOWUPSTREAM='auto'

function git-destroy () {
	git filter-branch --force --prune-empty --index-filter "$(
		data="${*@Q}"
		echo "'git rm --cached --ignore-unmatch -- ${data//\'/\\\'}'"
	)" --tag-name-filter cat -- --all
}

function git-rewrite () {
	local mail="${1-roshal@users.noreply.github.com}"
	local name="${2-roshal}"
	git filter-branch --force --env-filter "$(echo
		echo 'export GIT_AUTHOR_EMAIL='"'${mail}'"
		echo 'export GIT_AUTHOR_NAME='\'"${name}'"
		echo 'export GIT_COMMITTER_EMAIL='"'${mail}'"
		echo 'export GIT_COMMITTER_NAME='\'"${name}'"
	)"
}

function git-rewrite-filter () {
	local data="${1-roshal@users.noreply.github.com}"
	local mail="${2-roshal@users.noreply.github.com}"
	local name="${3-roshal}"
	git filter-branch --env-filter "$(echo
		echo 'if test "$''{GIT_AUTHOR_EMAIL}" = '"'${data}'"
		echo 'then'
		echo 'export GIT_AUTHOR_EMAIL='"'${mail}'"
		echo 'export GIT_AUTHOR_NAME='\'"${name}'"
		echo 'fi'
		echo 'if test "$''{GIT_COMMITTER_EMAIL}" = '"'${data}'"
		echo 'then'
		echo 'export GIT_COMMITTER_EMAIL='"'${mail}'"
		echo 'export GIT_COMMITTER_NAME='\'"${name}'"
		echo 'fi'
	)"
}
