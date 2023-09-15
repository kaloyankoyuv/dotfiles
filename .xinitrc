setxkbmap -layout 'us,bg(phonetic)' -option grp:toggle -option ctrl:swapcaps
#emacs --daemon

while true; do
    xsetroot -name " $(date)"
    sleep 1
done &

exec dwm
