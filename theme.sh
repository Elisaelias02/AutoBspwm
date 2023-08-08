#!/bin/bash

ruta=$(pwd)

opciones()
{
    zenity --list --title="Selecciona una opción" --column="Elige una opción: " "$@"
}

Pacman_theme()
{
    cp -v $ruta/Themes/Pacman/.p10k.zsh ~/.p10k.zsh
    sudo cp -v $ruta/Themes/Pacman/.p10k.zsh-root /root/.p10k.zsh
    echo "p10k setup" 
    cp -rv $ruta/Themes/Pacman/Config/* ~/.config/
    echo "Pacman theme instalado"
}

Parrot_theme()
{
    cp -v $ruta/Themes/Parrot/.p10k.zsh ~/.p10k.zsh
    sudo cp -v $ruta/Themes/Parrot/.p10k.zsh-root /root/.p10k.zsh
    echo "p10k setup" 
    cp -rv $ruta/Themes/Parrot/Config/* ~/.config/
    echo "Parrot theme instalado"
}

S4vi_theme()
{
    cp -v $ruta/Themes/S4vi/.p10k.zsh ~/.p10k.zsh
    sudo cp -v $ruta/Themes/S4vi/.p10k.zsh-root /root/.p10k.zsh
    echo "p10k setup" 
    cp -rv $ruta/Themes/S4vi/Config/* ~/.config/
    echo "S4vi theme instalado"
}

Cinnamoroll_theme()
{
    cp -v $ruta/Themes/Cinnamoroll/.p10k.zsh ~/.p10k.zsh
    sudo cp -v $ruta/Themes/Cinnamoroll/.p10k.zsh-root /root/.p10k.zsh
    echo "p10k setup" 
    cp -rv $ruta/Themes/Cinnamoroll/Config/* ~/.config/
    echo "Cinnamoroll theme instalado"
}

Pink_theme()
{
    cp -v $ruta/Themes/Pink/.p10k.zsh ~/.p10k.zsh
    sudo cp -v $ruta/Themes/Pink/.p10k.zsh-root /root/.p10k.zsh
    echo "p10k setup" 
    cp -rv $ruta/Themes/Pink/Config/* ~/.config/
    echo "Pink theme instalado"
}

ZLCube_theme()
{
    cp -v $ruta/Themes/ZLCube/.p10k.zsh ~/.p10k.zsh
    sudo cp -v $ruta/Themes/ZLCube/.p10k.zsh-root /root/.p10k.zsh
    echo "p10k setup" 
    cp -rv $ruta/Themes/Pink/Config/* ~/.config/
    echo "Pink theme instalado"
}


selected_option=$(opciones "Pacman" "Parrot" "S4vi" "Cinnamoroll" "Pink" "ZLCube")


case "$selected_option" in
    "Pacman")
        Pacman_theme
        ;;
    "Parrot")
        Parrot_theme
        ;;
    "S4vi")
        S4vi_theme
        ;;
    "Cinnamoroll")
        Cinnamoroll_theme
        ;;
    "Pink")
        Pink_theme
        ;;
    "ZLCube")
        ZLCube_theme
        ;;


    *)
        echo "Selección inválida."
        ;;
esac

