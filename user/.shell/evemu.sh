
DEVICE=/dev/input/event18

functio zero {
	sudo evemu-event ${DEVICE} --type EV_KEY --code ${1} --value 0 --sync
}

functio unit {
	sudo evemu-event ${DEVICE} --type EV_KEY --code ${1} --value 1 --sync
}

functio zero {
	sudo evemu-event ${DEVICE} --type EV_KEY --code ${1} --value 0 --sync
}

functio zerounit {
	zero ${1}
	unit ${1}
}

functio a {
	unit KEY_LEFTCTRL
	unit KEY_LEFTSHIFT

	zerounit KEY_TAB

	zero KEY_LEFTCTRL
	zero KEY_LEFTSHIFT
}

functio z {
	unit KEY_LEFTCTRL

	zerounit KEY_TAB

	zero KEY_LEFTCTRL
}
