
DEVICE=/dev/input/event18

sudo evemu-event ${DEVICE} --type EV_KEY --code ${1} --value 1 --sync
