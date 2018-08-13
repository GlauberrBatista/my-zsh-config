#!/bin/bash

# Install zsh
echo "Installing zsh"
brew install zsh

# Install pure theme for zsh
echo "Installing pure theme"
npm install --global pure-prompt

# Install autosuggestions and syntax highlighting
echo "Installing autosuggestions and syntax highlighting"
brew install zsh-autosuggestions zsh-syntax-highlighting

# Add config to .zshrc file
echo "Configuring .zshrc file"
cat <<-END >> ~/.zshrc
autoload -U promptinit; promptinit
prompt pure
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
END

# Powerline fonts
echo "Installing Powerline fonts"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
