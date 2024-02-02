setxkbmap -layout 'us,bg(phonetic)' -option grp:toggle -option ctrl:swapcaps
xwallpaper --maximize ~/dotfiles/wallpapers/wallpaper.png 
/usr/lib/polkit-kde-authentication-agent-1 &
slstatus &

exec dwm
