#! /bin/sh
mv $HOME/.config/nvim $HOME/.config/nvim-backup
git clone https://github.com/Alce-tar-gz/nvim-config.git $HOME/.config/nvim
echo "All done!"
echo Do you want to open Neovim now? [y/n]
read REPLY
case {$REPLY:l} in
  n) exit
    ;;
  *) exec nvim
    ;;
esac
