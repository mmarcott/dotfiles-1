#dotfiles

![](http://i.imgur.com/CepItYm.png)

### Installation
Clone to `~/.dotfiles`
```sh
git clone git@github.com:audibleblink/dotfiles.git ~/.dotfiles
```

Run the install script
```sh
cd ~/.dotfiles
./install
```

### Post-Install

```sh
  echo 'POST-INSTALL TODOs'
  echo 'Install the rbenv CTags generator'
  echo '  - https://github.com/tpope/rbenv-ctags'
  echo 'Install Bundler's CTags generator
  echo '  - https://github.com/tpope/vim-bundler'
  echo ''
  echo "Don't forget to restore additional packages with:"
  echo '> cat .cellar | xargs brew install'
  echo '> cat .casks | xargs brew cask install'
  echo '> cat .node_modules | xargs npm -g install'
```

### Making Backup

```sh
./backup
```
