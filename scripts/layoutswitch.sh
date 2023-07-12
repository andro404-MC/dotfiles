current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

if [ "$current_layout" = "fr" ]; then
    setxkbmap ara
else
    setxkbmap fr
fi

