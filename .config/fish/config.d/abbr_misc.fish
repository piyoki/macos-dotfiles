### Device Control ###

# audio
abbr get-audio-out "$HOME/.local/scripts/get-audio-out"
abbr set-audio-out "pactl set-default-sink"

# brightnessctl
abbr kbd_backlight_off "brightnessctl --device='tpacpi::kbd_backlight' set 0"
abbr kbd_backlight_on "brightnessctl --device='tpacpi::kbd_backlight' set 1"

# audio (wirepulmer)
abbr get-vol "wpctl get-volume @DEFAULT_AUDIO_SINK@"
abbr set-vol "wpctl set-volume @DEFAULT_AUDIO_SINK@"

# audio (pamixer)
# abbr get-vol "pamixer --get-volume"
# abbr set-vol "pamixer --set-volume"

# gnupg
abbr unlock-card "gpg-connect-agent 'scd checkpin $KEY_SERIAL' /bye"
abbr uc "gpg-connect-agent 'scd checkpin $KEY_SERIAL' /bye"
