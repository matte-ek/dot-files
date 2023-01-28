#!/bin/bash

# Check out https://github.com/PrayagS/polybar-spotify for the original repo
# including scrolling text if you fancy that.

# The name of polybar bar which houses the main spotify module and the control modules.
PARENT_BAR="main"
PARENT_BAR_PID=$(pgrep -a "polybar" | grep "$PARENT_BAR" | cut -d" " -f1)

# Set the source audio player here.
# Players supporting the MPRIS spec are supported.
# Examples: spotify, vlc, chrome, mpv and others.
# Use `playerctld` to always detect the latest player.
# See more here: https://github.com/altdesktop/playerctl/#selecting-players-to-control
PLAYER="spotify,audacious"

# Format of the information displayed
# Eg. {{ artist }} - {{ album }} - {{ title }}
# See more attributes here: https://github.com/altdesktop/playerctl/#printing-properties-and-metadata
FORMAT="{{ artist }} - {{ title }}"

PLAYERCTL_STATUS=$(playerctl --player=$PLAYER status 2>/dev/null)
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
    STATUS=$PLAYERCTL_STATUS
else
    STATUS="No player is running"
fi

if [ "$1" == "--status" ]; then
    echo "$STATUS"
else
    if [ "$STATUS" = "Stopped" ]; then
        echo "No music is playing"
    elif [ "$STATUS" = "Paused"  ]; then
        playerctl --player=$PLAYER metadata --format "$FORMAT"
    elif [ "$STATUS" = "No player is running"  ]; then
        echo "None"
    else
        playerctl --player=$PLAYER metadata --format "$FORMAT"
    fi
fi

