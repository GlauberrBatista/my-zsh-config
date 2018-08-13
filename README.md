# my-zsh-config
This is my personal zsh config.

Besides zsh properly installed, we need to install the [pure theme](https://github.com/sindresorhus/pure):
```
npm install --global pure-prompt
```

And install the `zsh-autosuggestions` and `zsh-syntax-highlighting` packages:
```
brew install zsh-autosuggestions zsh-syntax-highlighting
```

Then we need to add this lines to `~/.zshrc`:
```
autoload -U promptinit; promptinit
prompt pure
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

Install the powerline fonts:
```
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```

To finish, load the `iterm-zsh-pure.itermcolors` into iTerm2.
