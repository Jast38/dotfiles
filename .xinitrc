eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
dbus-update-activation-environment --systemd DISPLAY
ntpd -qg
exec i3
