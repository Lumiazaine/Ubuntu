sudo apt update && sudo apt upgrade -y
sudo apt install -y curl guake neofetch grub-customizer indicator-cpufreq 
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install -y gparted gnome-tweaks nodejs npm git spotify-client preload
sudo snap install slack --classic
sudo snap install telegram-desktop
wget https://github.com/martpie/museeks/releases/download/0.11.4/museeks-amd64.deb
sudo dpkg -i ./museeks-amd64.deb
sudo apt install -f
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.10.0/ulauncher_5.10.0_all.deb
sudo apt install ./ulauncher_5.10.0_all.deb
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -
sudo apt-get update
sudo apt-get install insomnia
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
sudo apt install ./code_1.54.3-1615806378_amd64.deb
