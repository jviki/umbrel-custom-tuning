#! /bin/sh

##
# When channel.backup is created or changed, we just make a copy into
# the Syncthing default directory. It's now a swiss army knife but
# quite easy to accomplish.
##
SRC="${LND_DIR}/data/chain/bitcoin/mainnet/channel.backup"
DST="${SYNCTHING_DIR}/Sync/channel.backup"

fswatch -0 --event Created --event Updated "${SRC}" \
	| xargs -0 -I {} cp -va {} "${DST}"
