#!/bin/bash

# # https://github.com/transmission/transmission/wiki/Scripts#On_Torrent_Completion

# ${TR_APP_VERSION}
# ${TR_TIME_LOCALTIME}
# ${TR_TORRENT_DIR}
# ${TR_TORRENT_HASH}
# ${TR_TORRENT_ID}
# ${TR_TORRENT_NAME}

echo -n "
${TR_TORRENT_DIR}/${TR_TORRENT_NAME}
$(date --date "${TR_TIME_LOCALTIME}" +'%y-%m-%d %H:%M:%S') - ${TR_APP_VERSION} - ${TR_TORRENT_ID}
https://rutracker.org/forum/viewtopic.php?h=${TR_TORRENT_HASH}
" >> /-/transmission.asc
