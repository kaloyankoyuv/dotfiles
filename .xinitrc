setxkbmap -layout 'us,bg(phonetic)' -option grp:toggle -option ctrl:swapcaps
/usr/lib/polkit-kde-authentication-agent-1 &
slstatus &

exec dwm
