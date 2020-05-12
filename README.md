# dotfiles
A repository containing all `.dotfiles` necessary to set up a new machine

Primarily, this repo assumes that the new machine runs macOS/OSX.

# Installed utils

First, install [Homebrew](https://brew.sh/).

Then, use Brew to install the following:

```
brew install ruby scmpuff sqlite thefuck macvim pyenv git zsh go ncurses zsh-syntax-highlighting heroku node htop
```

# Use the latest Python version

Use `pyenv versions` to list the installed versions.

Use `pyenv install` to install the Python version you want, then switch to it globally.

```sh
pyenv install 3.6.10
pyenv global 3.6.10
```

# Vim plugins

I use https://github.com/junegunn/vim-plug because it's more lightweight than Vundle.

To get YouCompleteMe to work, you need to make sure you're using Macvim (installed with Homebrew). Then, build it on your machine.

```sh
cd ~/.vim/plugged/youcompleteme
./install.py
```
