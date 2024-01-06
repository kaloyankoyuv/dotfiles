setxkbmap -layout 'us,bg(phonetic)' -option grp:toggle -option ctrl:swapcaps
/usr/lib/polkit-kde-authentication-agent-1 &
slstatus &

# while true; do
#     xsetroot -name " $(acpi) | $(date)"
#     sleep 1
# done &

exec dwm
