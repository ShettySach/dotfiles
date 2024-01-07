#!/bin/env bash

MAKOCTL="/usr/bin/makoctl"
MAKOCONFIG="$HOME/.config/mako/config"
#MAKOCONFIG="/tmp/config"
COLORS="$HOME/.cache/wal/colors"

COLOR0=`head -1 $COLORS`
COLOR1=`head -2 $COLORS | tail -1`
COLOR2=`head -3 $COLORS | tail -1`
COLOR3=`head -4 $COLORS | tail -1`
COLOR4=`head -5 $COLORS | tail -1`
COLOR5=`head -6 $COLORS | tail -1`
COLOR6=`head -7 $COLORS | tail -1`
COLOR7=`head -8 $COLORS | tail -1`
COLOR8=`head -9 $COLORS | tail -1`
COLOR9=`head -10 $COLORS | tail -1`

cat << EOF > $MAKOCONFIG
font=JetBrainsMono NF 12
layer=overlay
# anchor=bottom-right
# width=320
# padding=8
# margin=8
border-size=4
default-timeout=2
# border-radius=40

background-color=$COLOR6
text-color=$COLOR7
progress-color=over $COLOR0

[urgency=low]
border-color=$COLOR2
background-color=$COLOR4
text-color=$COLOR6

[urgency=normal]
border-color=$COLOR1
background-color=$COLOR6
text-color=$COLOR7
# default-timeout=10000
# ignore-timeout=1

[urgency=high]
border-color=$COLOR1
background-color=$COLOR2
text-color=$COLOR6
default-timeout=0
ignore-timeout=1
EOF
$MAKOCTL  reload
