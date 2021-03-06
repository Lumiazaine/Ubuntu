sudo apt update && sudo apt upgrade -y
sudo apt install -y curl guake neofetch grub-customizer indicator-cpufreq 
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install -y gparted gnome-shell-extension-prefs gnome-tweaks nodejs npm git spotify-client
sudo snap install slack --classic
sudo snap install telegram-desktop
sudo snap install insomnia
wget https://github.com/martpie/museeks/releases/download/0.11.4/museeks-amd64.deb
sudo apt install -y ./museeks-amd64.deb
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.10.0/ulauncher_5.10.0_all.deb
sudo apt install ./ulauncher_5.10.0_all.deb
sudo apt-get update
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
sudo apt install -y ./code_1.54.3-1615806378_amd64.deb
sudo apt install -f
# Style and customizationc

tar -xf ./Mojave-dark.tar.xz
mkdir ~/.themes
mv Mojave-dark ~/.themes/
sudo cp ./wallpapers/*.jpeg /usr/share/backgrounds
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/3.jpeg'
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 22

