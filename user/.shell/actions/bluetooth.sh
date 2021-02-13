
CARD__HEADSET='bluez_card.70_26_05_DD_FD_DD'
CARD__SPEAKER='bluez_card.00_42_79_77_95_54'

MAC__HEADSET='70:26:05:DD:FD:DD'
MAC__SPEAKER='00:42:79:77:95:54'

PROFILE__DISABLE='off'
PROFILE__HEADSET='headset_head_unit'
PROFILE__SPEAKER='a2dp_sink'

### control

function __bluetooth__connect__headset {
	bluetoothctl connect ${MAC__HEADSET}
}

function __bluetooth__connect__speaker {
	bluetoothctl connect ${MAC__SPEAKER}
}

function __bluetooth__disconnect__headset {
	bluetoothctl disconnect ${MAC__HEADSET}
}

function __bluetooth__disconnect__speaker {
	bluetoothctl disconnect ${MAC__SPEAKER}
}

function __bluetooth__power__on {
	bluetoothctl power on
}

function __bluetooth__power__no {
	bluetoothctl power no
}

### headset

function __bluetooth__profile__headset__disable {
	set-card-profile ${CARD__HEADSET} ${PROFILE__DISABLE}
}

function __bluetooth__profile__headset__headset {
	set-card-profile ${CARD__HEADSET} ${PROFILE__HEADSET}
}

function __bluetooth__profile__headset__speaker {
	set-card-profile ${CARD__HEADSET} ${PROFILE__SPEAKER}
}

### speaker

function __bluetooth__profile__speaker__disable {
	set-card-profile ${CARD__SPEAKER} ${PROFILE__DISABLE}
}

function __bluetooth__profile__speaker__headset {
	set-card-profile ${CARD__SPEAKER} ${PROFILE__HEADSET}
}

function __bluetooth__profile__speaker__speaker {
	set-card-profile ${CARD__SPEAKER} ${PROFILE__SPEAKER}
}
