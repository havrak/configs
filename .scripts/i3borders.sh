#!/bin/sh

TOGGLE=$HOME/.scripts/.toggleGaps

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    i3-msg gaps inner current set 0
    i3-msg gaps outer current set 0
else
    rm $TOGGLE
    i3-msg gaps inner current set 10
    i3-msg gaps outer current set 0
fi