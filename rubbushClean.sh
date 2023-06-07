#/bin/sh

echo "清理包管理器缓存"

sudo pacman -Rns $(pacman -Qtdq)

yay -Scc

echo "清理pip缓存"

rm -rf ~/.cache/./pip

echo "清理npm和yarn缓存"

yarn cache clean

# echo "node项目缓存"

# shark &
