if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi
# Enable Anki Wayland support
export QT_QPA_PLATFORM=wayland
export ANKI_WAYLAND=1

