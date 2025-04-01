SHORTCUTS="wallpaper choser\ntint"

CHOSEN=$(echo -e "$SHORTCUTS" | rofi -dmenu -no-fixed-num-lines -p "What shortcut?")

case "$CHOSEN" in
    "wallpaper choser")
        ~/.config/scripts/wallpaper-choser.sh
        ;;
    "tint")
        ~/.config/scripts/night-tint.sh
        ;;
    *)
        echo "Invalid option selected."
        ;;
esac