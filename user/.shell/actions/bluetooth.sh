
MAC__HEADSET='70:26:05:DD:FD:DD'
MAC__SPEAKER='00:42:79:77:95:54'

### control

function action--bluetooth--headset--connect {
	bluetoothctl connect ${MAC__HEADSET}
}

function action--bluetooth--headset--disconnect {
	bluetoothctl disconnect ${MAC__HEADSET}
}

function action--bluetooth--speaker--connect {
	bluetoothctl connect ${MAC__SPEAKER}
}

function action--bluetooth--speaker--disconnect {
	bluetoothctl disconnect ${MAC__SPEAKER}
}

function action--bluetooth--power--on {
	bluetoothctl power on
}

function action--bluetooth--power--no {
	bluetoothctl power no
}
