#!/usr/bin/env bash

# Install NeoVim:
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/unix-terminal-setup/neovim-setup/main/setup.sh | bash

# Install LazyVim dependencies:

curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/unix-terminal-setup/nerd-fonts-setup/main/setup.sh | bash

curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/unix-terminal-setup/lazygit-setup/main/setup.sh | bash

sudo apt install -y build-essential git ripgrep fd-find

# Backup Previous NeoVim Configuration:

mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

# Install LazyVim:

git clone https://github.com/LazyVim/starter ~/.config/nvim

# Clean up LazyVim Git folder:

rm -rf ~/.config/nvim/.git
