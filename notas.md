    git config --global user.name "Alamachar"
    git config --global user.email "pablomunozpalma@gmail.com"

# ArchLinux

``sudo pacman -Syu``   (actualizar la base de datos de los repositorios y actualizar el sistema)

``sudo pacman -S paquete``   (instala el paquete)

``sudo pacman -R paquete``   (desinstala el paquete)

``sudo pacman -Rs paquete``   (desinstala el paquete y sus dependencias no útiles para el sistema)

``sudo pacman -Ss paquete``   (busca un paquete específico)

``sudo pacman -Sw paquete``   (descarga el paquete pero no lo instala)

``sudo pacman -U /ruta/paquete.pkg.tar.gz``   (instala un paquete desde una carpeta local)

``sudo pacman -Q``   (muestra la lista de todos los paquetes instalados en el sistema)

``sudo pacman -Scc``   (borra todos los paquetes guardados en la cache de pacman en: /var/cache/pacman/pkg)

# cambiar directorios 

https://wiki.archlinux.org/title/XDG_user_directories

# Mis packages

``sudo pacman -S bpytop steam discord lsd bat nerd-fonts neofetch lolcat firefox ntfsprogs grub-customizer figlet shotwell cmatrix nvidia-settings obs-studio man-pages-es zsh gmip``

poner en el terminal una fuente de nerd-fonts

remover progamas caca
``sudo pacman -Rs epiphany gnome-tour``

instalar flatpak apps
``sudo flatpak install app.drey.Warp com.belmoussaoui.Decoder com.github.finefindus.eyedropper com.github.maoschanz.drawing com.google.Chrome com.mattjakeman.ExtensionManager com.rafaelmardojai.Blanket io.github.diegoivan.pdf_metadata_editor io.gitlab.adhami3310.Converter io.gitlab.adhami3310.Impression org.gnome.World.PikaBackup org.gnome.gitlab.YaLTeR.VideoTrimmer org.virt_manager.virt-viewer`` 

Compatibilidad con ntfs
``sudo pacman -S ntfsprogs``

Instalar rar
``sudo pacman -S --needed git && git clone https://aur.archlinux.org/rar.git && cd rar && makepkg -si``

quitar extension caca app

sudo rm /usr/share/applications/org.gnome.Extensions.desktop


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

    sudo pacman -S wine lib32-libpulse

# Escalado fraccionado Xorg
    yay -S mutter-x11-scaling

    gsettings set org.gnome.mutter experimental-features "['x11-randr-fractional-scaling']"

# Gestos teclado
https://extensions.gnome.org/extension/4033/x11-gestures/

flatpak install flathub com.github.joseexposito.touche

    yay -S touchegg 
    sudo systemctl enable touchegg.service
    sudo systemctl start touchegg

# firefox GNOME theme
https://github.com/rafaelmardojai/firefox-gnome-theme

    curl -s -o- https://raw.githubusercontent.com/rafaelmardojai/firefox-gnome-theme/master/scripts/install-by-curl.sh | bash

# Problemas con camara app
    sudo usermod -a -G video $USER

# Instalar oh my zsh
https://github.com/ohmyzsh/ohmyzsh/wiki

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Minegrub

    https://github.com/Lxtharia/minegrub-theme

# IMPRESORAS

https://mundojuancri.com/impresion-en-archlinux#Controladores_para_nuestra_impresora

    sudo pacman -S cups 
    sudo pacman -S avahi
    sudo systemctl enable avahi-daemon.service

    sudo systemctl start avahi-daemon.service
    sudo systemctl restart cups.service
    sudo pacman -S gutenprint foomatic-db foomatic-db-engine foomatic-db-nonfree hplip splix cups-pdf

    sudo systemctl disable cups.service

    sudo systemctl enable cups.service

    sudo systemctl daemon-reload

    sudo systemctl start cups.service 