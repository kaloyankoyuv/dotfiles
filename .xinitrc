setxkbmap -layout 'us,bg(phonetic)' -option grp:toggle -option ctrl:swapcaps
emacs --daemon
xwallpaper --maximize ~/dotfiles/wallpapers/samurai-doge.jpg

while true; do
    xsetroot -name " $(date)"
    sleep 1
done &

exec dwm
