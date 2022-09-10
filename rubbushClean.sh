#/bin/sh

echo "包管理器缓存"

sudo pacman -Rns $(pacman -Qtdq)

yay -Scc

echo "pip缓存"

rm -rf ~/.cache/./pip

echo "npm和yarn缓存"

yarn cache clean

echo "node项目缓存"

shark &


