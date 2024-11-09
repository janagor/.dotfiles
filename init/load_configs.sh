
ln -s ~/.dotfiles/nvim ~/.config/


git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

rm ~/.zshrc
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc

git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

/bin/zsh ~/.zshrc



ln -s ~/.dotfiles/alacritty ~/.config/alacritty
