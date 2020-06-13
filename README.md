# dotfiles
A repository containing all `.dotfiles` necessary to set up a new machine

Primarily, this repo assumes that the new machine runs macOS/OSX.

# Turn off Rootless

MacOS comes with System Integrity Protection turned on.

[Turn it off before doing anything else.](https://www.macworld.co.uk/how-to/mac/how-turn-off-mac-os-x-system-integrity-protection-rootless-3638975/)

# Install utils

## Homebrew

First, install [Homebrew](https://brew.sh/).

Then, use Brew to install the following:

```sh
brew install ruby scmpuff sqlite thefuck macvim pyenv git zsh go ncurses zsh-syntax-highlighting heroku node htop
```

## Other useful utils and daemons

* https://www.mozilla.org/en-US/firefox/new/
* https://freedom.to/dashboard
* https://nordvpn.com/
* [Amphetamine for easy screen sleep management](https://apps.apple.com/us/app/amphetamine/id937984704?mt=12)
* [FlyCut clipboard manager](https://apps.apple.com/us/app/flycut-clipboard-manager/id442160987?mt=12)
* [Hidden Bar to clean up your MacOS menu bar](https://apps.apple.com/app/hidden-bar/id1452453066)
* https://www.spectacleapp.com/
* https://justgetflux.com/
* https://keybase.io/download
* https://www.dropbox.com/downloading
* https://www.mowglii.com/itsycal/ -- hide icon and use `E, MMM dd | h:mm`

## Some useful Firefox extensions

* [Amazon Smile](https://addons.mozilla.org/en-US/firefox/addon/amazon-smile/reviews/)
* [Clear URLs](https://addons.mozilla.org/en-US/firefox/addon/clearurls/reviews/)
* [Decentraleyes](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/reviews/)
* [Enhancer for YouTube](https://addons.mozilla.org/en-US/firefox/addon/enhancer-for-youtube/reviews/)
* [Facebook Container](https://addons.mozilla.org/en-US/firefox/addon/facebook-container/reviews/)
* [Google Search Link Fix](https://addons.mozilla.org/en-US/firefox/addon/google-search-link-fix/reviews/)
* [Instapaper](https://addons.mozilla.org/en-US/firefox/addon/instapaper-official/reviews/)
* [LastPass](https://addons.mozilla.org/en-US/firefox/addon/lastpass-password-manager/reviews/)
* [Library Extension](https://addons.mozilla.org/en-US/firefox/addon/libraryextension/reviews/)
* [Momentum](https://addons.mozilla.org/en-US/firefox/addon/momentumdash/reviews/)
* [EFF Privacy Badger](https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/reviews/)
* [Shut Up: Comment Blocker](https://addons.mozilla.org/en-US/firefox/addon/shut-up-comment-blocker/reviews/)
* [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/reviews/)


# Use the latest Python version

Use `pyenv versions` to list the installed versions.

Use `pyenv install` to install the Python version you want, then switch to it globally.

```sh
pyenv install 3.6.10
pyenv global 3.6.10
```

# Vim plugins

I use https://github.com/junegunn/vim-plug because it's more lightweight than Vundle.

[Installation instructions](https://github.com/junegunn/vim-plug#installation)

You'll need to open `vim` (which is aliased to `mvim` for MacVim in my `.zshrc`), then run `:PlugInstall`.

## YouCompleteMe

To get YouCompleteMe to work, you need to make sure you're using Macvim (installed with Homebrew). Then, build it on your machine.

```sh
brew install cmake macvim python
brew install mono go nodejs
cd ~/.vim/plugged/youcompleteme
./install.py --all
```

[Full installation instructions here.](https://github.com/ycm-core/YouCompleteMe#installation)

## Solarized Dark

Follow the instructions here: https://vimawesome.com/plugin/vim-colors-solarized-ours

Basically, after `:PlugInstall` has run:

```sh
cd ~/.vim/plugged/vim-colors-solarized
mkdir ~/.vim/colors
mv solarized.vim ~/.vim/colors
```

