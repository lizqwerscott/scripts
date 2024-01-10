#/bin/sh

RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${RED}清理包管理器缓存:${NC}"

not_use_package=$(sudo pacman -Qtdq)

if [ -n "$not_use_package" ]; then
    sudo pacman -Rns $not_use_package
else
    echo "No unused packages to remove."
fi

yay -Scc

echo -e "${RED}清理pip缓存:${NC}"

rm -rf ~/.cache/./pip

echo -e "${RED}清理npm和yarn缓存:${NC}"

yarn cache clean
pnpm store prune

# echo "node项目缓存"

# shark &
