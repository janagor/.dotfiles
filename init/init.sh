#!/bin/sh
sudo apt update && sudo apt upgrade -y

/bin/sh ./install_essentials.sh

chsh -s $(which zsh)
echo "Zsh has been set as the default shell."


/bin/sh ./load_configs.sh
