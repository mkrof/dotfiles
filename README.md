# Dotfiles

## Symlink to startup files
E.g. `ln -s ~/dotfiles/.vim ~/.vim`

## Fetch Vim submodules
```bash
cd ~/.vim
git submodule update --init
```

## Notes

### Installing plugins as submodules
From the root of the repository run:
```bash
git submodule add [path to repo] .vim/bundle/[plugin dir name]
```
### Removing submodules
1. Delete the relevant section from the `.gitmodules` file.
2. Stage the `.gitmodules` changes `git add .gitmodules`.
3. Delete the relevant section from `.git/config`.
4. Run `git rm --cached path_to_submodule` (no trailing slash).
5. Run `rm -rf .git/modules/path_to_submodule`.
6. Commit `git commit -m "Removed submodule <name>"`.
7. Delete the now untracked submodule files `rm -rf path_to_submodule`.
[More info](http://stackoverflow.com/questions/1260748/how-do-i-remove-a-git-submodule)

### Unite and Vimproc
Vimproc is necessary for the `file_rec/async` command in Unite. Vimproc needs to be built:
```bash
cd ~/.vim/bundle/vimproc.vim
make
```
### Tern for vim
Need to run `npm install` from the tern_for_vim directory.

### Airline fonts
Use the [fontconfig method](http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin).

### tmux
Start tmux with -2 flag to force 256 colors.

### git colors
```bash
git config --global color.ui auto` 
```
[More info](http://stackoverflow.com/questions/10998792/how-to-color-the-git-console-in-ubuntu)


