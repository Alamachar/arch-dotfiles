# poder subir cosas a github
    git config --global user.name "Alamachar"
    git config --global user.email "pablomunozpalma@gmail.com"

# Cambiar tamaño texto en el archiso

    setfont ter-132n

# cambiar directorios 

https://wiki.archlinux.org/title/XDG_user_directories

# Mis packages

``sudo pacman -S bpytop steam discord lsd bat nerd-fonts neofetch lolcat firefox ntfsprogs grub-customizer figlet shotwell cmatrix nvidia-settings obs-studio man-pages-es zsh gimp filezilla``

poner en el terminal una fuente de nerd-fonts

remover progamas caca
``sudo pacman -Rs epiphany gnome-tour``

instalar flatpak apps
``sudo flatpak install app.drey.Warp com.belmoussaoui.Decoder com.github.finefindus.eyedropper com.github.maoschanz.drawing com.google.Chrome com.mattjakeman.ExtensionManager com.rafaelmardojai.Blanket io.github.diegoivan.pdf_metadata_editor io.gitlab.adhami3310.Converter io.gitlab.adhami3310.Impression org.gnome.World.PikaBackup org.gnome.gitlab.YaLTeR.VideoTrimmer org.virt_manager.virt-viewer`` 

Compatibilidad con ntfs
``sudo pacman -S ntfsprogs``

Instalar rar
``sudo pacman -S --needed git && git clone https://aur.archlinux.org/rar.git && cd rar && makepkg -si``

# quitar extension caca app

``sudo rm /usr/share/applications/org.gnome.Extensions.desktop``

# cambiar lenguaje

comentar el lenguaje actual y descomentar el español

	sudo nano /etc/locate.gen
	sudo locate-gen
sudo nano /etc/locale.conf

    es_ES.UTF-8
    unset LANG

sudo nano /etc/vconsole.conf

    KEYMAP=es
    XKBLAYOUT=es

# Instalar virtualbox
**arch kernel** -- virtualbox-host-modules-arch

**lts kernel** -- virtualbox-host-dkms

    sudo pacman -S virtualbox virtualbox-guest-iso
    sudo gpasswd -a $USER vboxusers
    sudo modprobe vboxdrv

# Añadir atajo teclado terminal
Comando para abrir terminal: kgx

# Instalar diistrobox
    sudo pacman -S distrobox docker
    sudo systemctl start docker
    sudo usermod -aG docker $USER
    newgrp docker o reiniciar
    
    distrobox create --image ubuntu:22.04 --name test
    distrobox enter test

# Habilitar bluetooth
    systemctl status bluetooth  #Comprobar el estado del servicio

    sudo systemctl start bluetooth  #Iniciar servicio
    systemctl enable bluetooth  #Auto iniciar servicio

    systemctl status bluetooth #Comprobar el estado del servicio

# instalar AUR o yay para los amigos
    sudo pacman -Syu
    sudo pacman -S --needed base-devel git
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    yay --version

# Spotify
    yay -S spotify spicetify-cli
    sudo chmod a+wr /opt/spotify
    sudo chmod a+wr /opt/spotify/Apps -R

# iniciar sesion en spotify
    spicetify backup apply
    curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh

# Instalar VScode
    yay -S visual-studio-code-bin

# Instalar aur packages
yay -S whatsdesk-bin microsoft-edge-stable-bin

# Instalar Wine
Activar repo multilib

    sudo pacman -S wine

# Escalado fraccionado Xorg
    yay -S mutter-x11-scaling

    gsettings set org.gnome.mutter experimental-features "['x11-randr-fractional-scaling']"

# firefox GNOME-Browser theme
https://github.com/rafaelmardojai/firefox-gnome-theme

    curl -s -o- https://raw.githubusercontent.com/rafaelmardojai/firefox-gnome-theme/master/scripts/install-by-curl.sh | bash

# Instalar oh my zsh
https://github.com/ohmyzsh/ohmyzsh/wiki

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Minegrub

    https://github.com/Lxtharia/minegrub-theme

