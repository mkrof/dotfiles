# Dotfiles

## Create symlinks to configs
E.g. `ln -s ~/dotfiles/.vim ~/.vim`

## Fetch Vim submodules
`cd ~/.vim`
`git submodule update --init`

## Notes

### Installing plugins as submodules
From the root of the repository run:
`git submodule add [path to repo] .vim/bundle/[plugin dir name]`

### vimproc.vim
The vimproc plugin is necessary for the `file_rec/async` command in unite. Vimproc needs to be built:
`cd ~/.vim/bundle/vimproc.vim`
`make`

### tmux
Start tmux with -2 flag to force 256 colors.
