#!/bin/bash

echo "This Shell Script will install dependencies for cocos2d-x" 
echo -n "Are you continue? (y/n) "
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "It will take few minutes"
else
    exit
fi

sudo pacman -Syyu

DEPENDS+=' libx11'
DEPENDS+=' libxmu'
DEPENDS+=' mesa'
DEPENDS+=' gl2ps'
DEPENDS+=' libxi'
DEPENDS+=' libzip'
DEPENDS+=' libpng'
DEPENDS+=' libcurl-gnutls'
DEPENDS+=' fontconfig'
DEPENDS+=' sqlite'
DEPENDS+=' glew'
DEPENDS+=' openssl'
DEPENDS+=' gtk3'
DEPENDS+=' binutils'

sudo pacman -S $DEPENDS

