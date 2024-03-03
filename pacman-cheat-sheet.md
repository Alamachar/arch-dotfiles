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
