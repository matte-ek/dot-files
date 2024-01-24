pactl set-source-mute @DEFAULT_SOURCE@ toggle

if pactl get-source-mute @DEFAULT_SOURCE@ | grep -q 'yes'; then
    notify-send Mic "Mic is now muted." -i /usr/share/icons/Papirus-Dark/64x64/devices/audio-input-microphone.svg
else
    notify-send Mic "Mic is now un-muted." -i /usr/share/icons/Papirus-Dark/64x64/devices/audio-input-microphone.svg
fi
