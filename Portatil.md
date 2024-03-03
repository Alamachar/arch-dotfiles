# Configuracion extra para portatil
## Screen tearing

Usar drivers propietarios

## Gestos teclado
https://extensions.gnome.org/extension/4033/x11-gestures/

    flatpak install flathub com.github.joseexposito.touche

    yay -S touchegg 
    sudo systemctl enable touchegg.service
    sudo systemctl start touchegg
    
## Problemas con camara app
    sudo usermod -a -G video $USER
