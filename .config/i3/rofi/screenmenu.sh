#! /bin/sh

chosen=$(printf "Only Extended\nAll\nOnly Laptop" | rofi -dmenu -i)

case "$chosen" in 
	"Only Extended") xrandr --output eDP-1 --off --output DP-1 --right-of HDMI-1 && i3-msg reload ;;
	"All") xrandr --auto && xrandr --output eDP-1 --left-of HDMI-1 --output DP-1 --right-of HDMI-1 && i3-msg reload ;;
	"Only Laptop") xrandr --output eDP-1 -output DP-1 --off --right-of HDMI-1 --off --auto && i3-msg reload ;;
	*) exit 1;;
esac

