#!/bin/sh

BLANK='#1d2021'
CLEAR='#1d2021'
DEFAULT='#282828'
TEXT='#ebdbb2'
WRONG='#fb4934'
VERIFYING='#83a598'

i3lock \
	--insidever-color=$CLEAR     \
	--ringver-color=$VERIFYING   \
	\
	--insidewrong-color=$CLEAR   \
	--ringwrong-color=$WRONG     \
	\
	--inside-color=$BLANK        \
	--ring-color=$DEFAULT        \
	--line-color=$BLANK          \
	--separator-color=$DEFAULT   \
	\
	--verif-color=$TEXT          \
	--verif-text="Verifying"      \
	--wrong-color=$TEXT          \
	--time-color=$TEXT           \
	--date-color=$TEXT           \
	--layout-color=$TEXT         \
	--keyhl-color=$WRONG         \
	--bshl-color=$WRONG          \
	\
	--screen 1                   \
	--blur 5                     \
	--clock                      \
	--indicator                  \
	--time-str="%r"        \
	--date-str="%A, %d-%m-%Y"       \
	--time-font="MesloLGS NF"       \
	--date-font="MesloLGS NF"       \
	--time-size=24       \

