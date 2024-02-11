#! /bin/sh 

LOCK='/home/lorenz/.config/i3/lockscreen.sh'
chosen=$(printf "suspend\nhibernate\nhybrid-sleep\nsuspend-then-hibernate" | rofi -dmenu -i)

case "$chosen" in 
	"suspend") bash $LOCK && systemctl suspend ;;
	"hibernate") bash $LOCK && systemctl hibernate ;;
	"hybrid-sleep") bash $LOCK && systemctl hybrid-sleep ;;
	"suspend-then-hibernate") bash $LOCK && systemctl suspend-then-hibernate ;;
	*) exit 1;;
esac

