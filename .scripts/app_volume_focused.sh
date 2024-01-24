#!/bin/sh

app_name=$(xdotool getactivewindow getwindowpid)
action=$1

echo $app_name

current_sink_num=''
sink_num_check=''
app_name_check=''

pactl list sink-inputs |while read line; do \
    if [[ ${line} != *"Sink Input #"* ]]; then
        if [[ ${line} != *"application.process.id"* ]]; then
            continue
        fi
    fi

    sink_num_check=$(echo "$line" |sed -rn 's/^Sink Input #(.*)/\1/p')
    if [ "$sink_num_check" != "" ]; then
        current_sink_num="$sink_num_check"
    else
        app_name_check=$(echo "$line" \
            |sed -rn 's/application.process.id = "([^"]*)"/\1/p')
        if [ "$app_name_check" = "$app_name" ]; then
            if [ "$action" = "inc" ]; then
                pactl set-sink-input-volume "$current_sink_num" +5%
            else
                pactl set-sink-input-volume "$current_sink_num" -5%
            fi

            exit
        fi
    fi
done
