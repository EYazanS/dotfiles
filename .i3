# i3blocks config file
#
# Please see man i3blocks for a complete reference!
# The man page is also hosted at http://vivien.github.io/i3blocks
#
# List of valid properties:
#
# align
# color
# command
# full_text
# instance
# interval
# label
# min_width
# name
# separator
# separator_block_width
# short_text
# signal
# urgent

# Global properties
#
# The top properties below are applied to every block, but can be overridden.
# Each block command defaults to the script name to avoid boilerplate.
command=/usr/share/i3blocks/$BLOCK_NAME
separator_block_width=15
markup=none

# Volume indicator
#
# The first parameter sets the step (and units to display)
# The second parameter overrides the mixer selection
# See the script for details.
[volume]
#label=VOL
label=♪
instance=Master
#instance=PCM
interval=1
signal=10
command=/usr/share/i3blocks/volume 5 pulse

[wifi]
#instance=wlp3s0
interval=10
separator=false
# CPU usage
#
# The script may be called with -w and -c switches to specify thresholds,
# see the script for details.
[cpu_usage]
label=CPU
interval=10
min_width=CPU: 100.00%
#separator=false

#[load_average]
#interval=10

# Date Time
#
[time]
command=date '+%Y-%m-%d %H:%M'
interval=1

# Generic media player support
#
# This displays "ARTIST - SONG" if a music is playing.
# Supported players are: spotify, vlc, audacious, xmms2, mplayer, and others.
# [mediaplayer]
# instance=music
# interval=1
# signal=10

# OpenVPN support
#
# Support multiple VPN, with colors.
#[openvpn]
#interval=20

# Temperature
#
# Support multiple chips, though lm-sensors.
# The script may be called with -w and -c switches to specify thresholds,
# see the script for details.
#[temperature]
#label=TEMP
#interval=10

# Key indicators
#
# Add the following bindings to i3 config file:
#
# bindsym --release Caps_Lock exec pkill -SIGRTMIN+11 i3blocks
# bindsym --release Num_Lock  exec pkill -SIGRTMIN+11 i3blocks
#[keyindicator]
#instance=CAPS
#interval=once
#signal=11

#[keyindicator]
#instance=NUM
#interval=once
#signal=11
