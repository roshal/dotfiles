
DEVICE=/dev/input/event21

sh "${HOME}/.shell/evemu--key--unit.sh" KEY_LEFTCTRL
sh "${HOME}/.shell/evemu--key--unit.sh" KEY_LEFTSHIFT

sh "${HOME}/.shell/evemu--key.sh" KEY_TAB

sh "${HOME}/.shell/evemu--key--zero.sh" KEY_LEFTCTRL
sh "${HOME}/.shell/evemu--key--zero.sh" KEY_LEFTSHIFT
