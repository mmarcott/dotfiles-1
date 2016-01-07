#dotfiles

Clone to `~/.dotfiles`
```sh
git clone --recursive git@github.com:audibleblink/dotfiles.git
```

If already cloned:
```sh
cd ~/.dotfiles
git submodule update --init --recursive
```

Alias all files to home directory  

```
./install
```

Create backups of atom and brew packages

```
./backup
```

Atom and Cellar packages can be restored with:

```
cat .package-list | xargs apm install
cat .cellar | xargs brew install # n/a in linux
```
