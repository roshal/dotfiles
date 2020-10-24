
source "${HOME}/.shell/actions.sh"

if false
then true

elif test "${1}" == 'grim--output-path'
then __grim__output_path

elif test "${1}" == 'grim--output--wl-copy'
then __grim__output | __wl_copy

elif test "${1}" == 'nm-applet--killall'
then __nm_applet__killall

elif test "${1}" == 'nm-applet--restart'
then __nm_applet__restart

elif test "${1}" == 'pulsemixer--volume'
then __pulsemixer__volume

elif test "${1}" == 'slurp--grim--wl-copy'
then __slurp | __grim | __wl_copy

elif test "${1}" == 'slurp--grim-path'
then __slurp | __grim__path

elif test "${1}" == 'slurp--notify'
then __slurp__print | __xargs__notify

elif test "${1}" == 'swaymsg--keyboard-layout'
then __swaymsg__keyboard_layout

elif test "${1}" == 'swaymsg--node--grim--wl-copy'
then __swaymsg__tree__node | __grim | __wl_copy

elif test "${1}" == 'swaymsg--node--grim-path'
then __swaymsg__tree__node | __grim__path

elif test "${1}" == 'swaymsg--switch-output'
then __swaymsg__switch_output

elif test "${1}" == 'wf-recorder'
then __wf_recorder

fi
