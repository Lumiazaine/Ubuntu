- Oculta dispositivos y discos montados.

`gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
`

- Cambia fondo de pantalla.

`gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/3.jpeg'
`

- Añade tema Mojave-dark.

`tar -xf ./Mojave-dark.tar.xz
mkdir ~/.themes
mv Mojave-dark ~/.themes/`

- Habilita el minimizar haciendo click al programa en el dock.


`gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'`

- Establece Dock en la posicioón baja.


`gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
`

`gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 22`