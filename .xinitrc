setxkbmap -layout 'us,bg(phonetic)' -option grp:toggle -option ctrl:swapcaps
emacs --daemon
xwallpaper --maximize ~/dotfiles/wallpapers/samurai-doge.jpg
picom -b
/usr/bin/dunst &
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &

while true; do
    xsetroot -name " $(acpi) | $(xkb-switch) | $(date)"
    sleep 1
done &

exec dwm
