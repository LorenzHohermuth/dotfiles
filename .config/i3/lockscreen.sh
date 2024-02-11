#!/bin/sh

BLANK='#00000000'
CLEAR='#ffffff22'
DEFAULT='#ff00ffcc'
TEXT='#ee00eeee'
BLUE='#5e60ce'
WRONG='#880000bb'
VERIFYING='#bb00bbbb'

i3lock \
--insidever-color=$CLEAR \
--ringver-color=$VERIFYING \
\
--insidewrong-color=$CLEAR \
--ringwrong-color=$WRONG \
\
--inside-color=$BLANK \
--ring-color=$DEFAULT \
--line-color=$BLANK \
--separator-color=$CLEAR \
\
--verif-color=$VERIFYING \
--wrong-color=$WRONG \
--time-color=$TEXT \
--layout-color=$TEXT \
--date-color=$TEXT \
--keyhl-color=$BLUE \
--bshl-color=$WRONG \
\
--screen 1 \
--clock \
--indicator \
--time-str="%H:%M:%S" \
--date-str="%a, %d.%m.%Y" \
-c 272932 \
