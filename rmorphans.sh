#!/bin/sh

if [ "$(pacman -Qtdq)" = "" ]; then
  echo "No orphans to remove!"
else
  pacman -Rns $(pacman -Qtdq)
fi
