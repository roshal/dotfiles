
CARD__HEADSET='bluez_card.70_26_05_DD_FD_DD'
CARD__SPEAKER='bluez_card.00_42_79_77_95_54'

MAC__HEADSET='70:26:05:DD:FD:DD'
MAC__SPEAKER='00:42:79:77:95:54'

PROFILE__DISABLE='off'
PROFILE__HEADSET='headset_head_unit'
PROFILE__SPEAKER='a2dp_sink'

### control

function action--bluetooth--connect--headset {
	bluetoothctl connect ${MAC__HEADSET}
}

function action--bluetooth--connect--speaker {
	bluetoothctl connect ${MAC__SPEAKER}
}

function action--bluetooth--disconnect--headset {
	bluetoothctl disconnect ${MAC__HEADSET}
}

function action--bluetooth--disconnect--speaker {
	bluetoothctl disconnect ${MAC__SPEAKER}
}

function action--bluetooth--power--on {
	bluetoothctl power on
}

function action--bluetooth--power--no {
	bluetoothctl power no
}

### headset

function action--bluetooth--profile--headset--disable {
	set-card-profile ${CARD__HEADSET} ${PROFILE__DISABLE}
}

function action--bluetooth--profile--headset--headset {
	set-card-profile ${CARD__HEADSET} ${PROFILE__HEADSET}
}

function action--bluetooth--profile--headset--speaker {
	set-card-profile ${CARD__HEADSET} ${PROFILE__SPEAKER}
}

### speaker

function action--bluetooth--profile--speaker--disable {
	set-card-profile ${CARD__SPEAKER} ${PROFILE__DISABLE}
}

function action--bluetooth--profile--speaker--headset {
	set-card-profile ${CARD__SPEAKER} ${PROFILE__HEADSET}
}

function action--bluetooth--profile--speaker--speaker {
	set-card-profile ${CARD__SPEAKER} ${PROFILE__SPEAKER}
}
