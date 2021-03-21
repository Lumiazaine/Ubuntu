OS=$(awk '/DISTRIB_ID=/' /etc/*-release | sed 's/DISTRIB_ID=//' | tr '[:upper:]' '[:lower:]')
ARCH=$(uname -m | sed 's/x86_//;s/i[3-6]86/32/')
VERSION=$(awk '/DISTRIB_RELEASE=/' /etc/*-release | sed 's/DISTRIB_RELEASE=//' | sed 's/[.]0/./')

if [ -z "$OS" ]; then
    OS=$(awk '{print $1}' /etc/*-release | tr '[:upper:]' '[:lower:]')
fi

if [ -z "$VERSION" ]; then
    VERSION=$(awk '{print $3}' /etc/*-release)
fi

echo Hello, your system is $OS $VERSION $ARCH bits


# Descarga paquetes
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
wget https://github.com/martpie/museeks/releases/download/0.11.4/museeks-amd64.deb
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.10.0/ulauncher_5.10.0_all.deb

# Actualización de repositorio y sistema

sudo apt update && sudo apt upgrade -y

# Descarga apt 

sudo apt install -y curl guake neofetch grub-customizer indicator-cpufreq 
sudo apt install -y gparted gnome-shell-extension-prefs gnome-tweaks nodejs npm git spotify-client
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt install -f

# Instalación paquetes

sudo apt install -y ./museeks-amd64.deb
sudo apt install -y./ulauncher_5.10.0_all.deb
sudo apt install -y ./code_1.54.3-1615806378_amd64.deb

# Instalación Snaps

sudo snap install slack --classic
sudo snap install telegram-desktop
sudo snap install insomnia

# Style and customization

tar -xf ./Mojave-dark.tar.xz
mkdir ~/.themes
mv Mojave-dark ~/.themes/
sudo cp ./wallpapers/*.jpeg /usr/share/backgrounds
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/3.jpeg'
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 22