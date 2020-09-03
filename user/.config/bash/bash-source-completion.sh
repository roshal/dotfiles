
### yarn
# # https://github.com/dsifford/yarn-completion

# curl --create-dirs --output /home/user/.local/share/bash-completion/completions/yarn -- https://raw.githubusercontent.com/dsifford/yarn-completion/master/yarn-completion.bash

### git
# # https://wiki.archlinux.org/index.php/Git#Bash_completion

source /usr/share/git/completion/git-completion.bash

__git_complete g _git_main

__git_complete a _git_add
__git_complete d _git_diff
__git_complete s _git_status

__git_complete l _git_log
__git_complete ll _git_log
__git_complete lll _git_log

__git_complete ch _git_checkout

__git_complete 'git ad' _git_add
__git_complete 'git br' _git_branch
__git_complete 'git ci' _git_commit
__git_complete 'git cl' _git_clone
__git_complete 'git co' _git_checkout
__git_complete 'git di' _git_diff
__git_complete 'git in' _git_init
__git_complete 'git me' _git_merge
__git_complete 'git re' _git_reset
__git_complete 'git st' _git_status

__git_complete 'git un' _git_reset

__git_complete 'g ad' _git_add
__git_complete 'g br' _git_branch
__git_complete 'g ci' _git_commit
__git_complete 'g cl' _git_clone
__git_complete 'g co' _git_checkout
__git_complete 'g di' _git_diff
__git_complete 'g in' _git_init
__git_complete 'g me' _git_merge
__git_complete 'g re' _git_reset
__git_complete 'g st' _git_status

__git_complete 'g un' _git_reset
