setxkbmap -layout 'us,bg(phonetic)' -option grp:toggle -option ctrl:swapcaps
xwallpaper --maximize ~/dotfiles/wallpapers/samurai-doge.jpg
/usr/lib/polkit-kde-authentication-agent-1 &

while true; do
    xsetroot -name " $(acpi) | $(date)"
    sleep 1
done &

exec dwm
