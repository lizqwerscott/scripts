#/bin/sh

sudo pacman -Rns $(pacman -Qtdq)

yay -Scc
