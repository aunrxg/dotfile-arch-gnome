echo "🎯 Installing terminal stack..."
yay -S --noconfirm alacritty tmux ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols

echo "🔗 Linking Alacritty and Tmux configs..."
ln -sf "$(pwd)/.config/alacritty" ~/.config/alacritty
ln -sf "$(pwd)/.config/tmux" ~/.config/tmux

echo "🛠️ Installing Zsh + Starship..."
paru -S --noconfirm zsh starship

echo "🔗 Linking .zshrc"
ln -sf "$(pwd)/home/.zshrc" ~/.zshrc

chsh -s $(which zsh)
