Based on instructions from [rstacruz/vim-from-scratch](https://raw.githubusercontent.com/rstacruz/vim-from-scratch/master/README.md)

## Back up your existing Vim config <a id='backup'></a>

> (Skip this step if you're setting up a fresh installation of Vim.)

Want to try out this guide, but you already have Vim set up? You can rename them for now, and restore it later on.

```bash
mv ~/.vimrc ~/.vimrc~
mv ~/.vim ~/.vim~
mv ~/.config/nvim ~/.config/nvim~
```

## Create your ~/.vim <a id='vimpath'></a>

The first obvious step is to create your config folder. Vim expects this in `~/.vim`, and Neovim expects it in `~/.config/nvim`. Since our goal is to make a Vim config that'll work everywhere, I suggest keeping it in _~/.vim_ and symlinking it as needed.

```sh
mkdir -p ~/.vim
cd ~/.vim

# Version it using Git
git init
git commit -m "Initial commit" --allow-empty
```

## Create your init.vim (aka .vimrc) <a id='vimrc'></a>

Vim looks for your config in `~/.vimrc`, and Neovim looks for it in `~/.config/nvim/init.vim`. Let's create the file as `~/.vim/init.vim`, which we will symlink to the proper locations later.

```bash
cd ~/.vim
touch init.vim
```

## Set up symlinks <a id='symlinks'></a>

My preferred method is to create a `Makefile` which will set up symlinks as necessary. In `~/.vim`, create a file called `Makefile` and add this in:

```bash
# Makefile
pwd := $(shell pwd -LP)

link:
	@if [ ! . -ef ~/.vim ]; then ln -nfs "${pwd}" ~/.vim; fi
	@if [ ! . -ef ~/.config/nvim ]; then ln -nfs "${pwd}" ~/.config/nvim; fi
	@ln -nfs "${pwd}/init.vim" ~/.vimrc
```

After creating it, just run `make link`. This should finally make your config available in both `~/.config/nvim/init.vim` and `~/.vimrc`.

```bash
# Before doing this, make sure you don't have ~/.vimrc (careful!)
rm ~/.vimrc

# Set up symlinks
cd ~/.vim
make link
```

## Install vim-plug <a id='vim-plug'></a>

[**vim-plug**][vim-plug] is the plugin manager I can recommend the most. It's ridiculously fast, and supports a lot of great features. This command will download `plug.vim` into your Vim config path:

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Edit your config file by doing `vim ~/.vim/init.vim`. Add the following:

```vim
set nocompatible
let g:mapleader=" "

call plug#begin('~/.vim/vendor')

if !has('nvim') && !exists('g:gui_oni') | Plug 'tpope/vim-sensible' | endif
Plug 'rstacruz/vim-opinion'

call plug#end()
```

Save it, restart Vim, then call _PlugInstall_.

```vim
" Save the file and exit vim
:wq

" Start vim again, then install the plugins
:PlugInstall
```

> See: [vim-plug usage](https://github.com/junegunn/vim-plug#usage) _(github.com)_

