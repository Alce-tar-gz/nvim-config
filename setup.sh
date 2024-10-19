#! /bin/bash

if [ ! -f /usr/bin/nvim ]; then
  echo "Remember to install Neovim you silly little guy"
  read -p "Press any key to continue..." -n1 -s
  exit
fi
mv $HOME/.config/nvim $HOME/.config/nvim-backup
git clone https://github.com/Alce-tar-gz/nvim-config.git $HOME/.config/nvim
echo "All done!"
read -p "Do you want to open Neovim now? [y/n]" REPLY
if [ $REPLY = "n" ]; then
  exit
else
  nvim
fi
