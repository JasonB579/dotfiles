#!/bin/sh
OPENVPN_CMD=$(pgrep openvpn | xargs --no-run-if-empty ps -o cmd=)
if [ "$OPENVPN_CMD" ]; then
	SPLIT=' ' read -ra PROCESS <<< "$OPENVPN_CMD"
    echo -e "  ${PROCESS[1]}"
else
    echo -e " Not Connected"
fi
