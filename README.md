# dotfiles
A repository containing all `.dotfiles` necessary to set up a new machine

Primarily, this repo assumes that the new machine runs macOS/OSX.

# Turn off Rootless

MacOS comes with System Integrity Protection turned on.

[Turn it off before doing anything else.](https://www.macworld.co.uk/how-to/mac/how-turn-off-mac-os-x-system-integrity-protection-rootless-3638975/)

# Set up displays

[Read this deep dive](https://tonsky.me/blog/monitors/), Cmd+F for "Retina Macbooks," and update display settings accordingly.

Things to look out for:
* font smoothing
* display resolution (make sure to use integer scaling)

# Install utils

## Homebrew

First, install [Homebrew](https://brew.sh/).

Then, use Brew to install the following:

```sh
brew install go pyenv node ruby git htop jq sqlite scmpuff tealdeer macvim zsh zsh-syntax-highlighting ffmpeg youtube-dl
```

## oh-my-zsh

Follow the installation instructions [for oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#basic-installation)

Then, use the `.zshrc` specified in this repo.

## Other useful utils

* https://iterm2.com/
* https://www.mozilla.org/en-US/firefox/new/
* https://freedom.to/dashboard
* [Amphetamine for easy screen sleep management](https://apps.apple.com/us/app/amphetamine/id937984704?mt=12)
* [FlyCut clipboard manager](https://apps.apple.com/us/app/flycut-clipboard-manager/id442160987?mt=12)
* [itsycal for calendar in menu bar](https://www.mowglii.com/itsycal/) -- use outline icon, show month & day of week (don't show time as of Big Sur)
* [Hidden Bar to clean up your MacOS menu bar](https://apps.apple.com/app/hidden-bar/id1452453066)
* [Rectangle to manage windows](https://github.com/rxhanson/Rectangle)
* [Tomito for Pomodoro](https://tomito.app/) -- hide widget, show menu bar icon
* [Drafts for quick text editing](https://getdrafts.com/)
* [Obsidian](https://obsidian.md/)
* [f.lux is still better than MacOS screen color temp mgmt](https://justgetflux.com/)
* [Grand Perspective for disk space management](http://grandperspectiv.sourceforge.net/)
* [AppCleaner to uninstall applications](https://freemacsoft.net/appcleaner/)
* [Keybase](https://keybase.io/download)
* [Dropbox](https://www.dropbox.com/downloading)

## Some useful Firefox extensions

* [1Password](https://1password.com/browsers/firefox/)
* [Gruvbox Dark theme](https://addons.mozilla.org/en-US/firefox/addon/gruvbox-dark-theme/)
* [Clear URLs](https://addons.mozilla.org/en-US/firefox/addon/clearurls)
* [Old Reddit](https://addons.mozilla.org/en-US/firefox/addon/old-reddit-redirect/)
* [Decentraleyes](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes)
* [Enhancer for YouTube](https://addons.mozilla.org/en-US/firefox/addon/enhancer-for-youtube)
* [Facebook Container](https://addons.mozilla.org/en-US/firefox/addon/facebook-container)
* [1Password](https://addons.mozilla.org/en-US/firefox/addon/1password-x-password-manager/)
* [Instapaper](https://www.instapaper.com/save/browser)
* [Tabliss](https://addons.mozilla.org/en-US/firefox/addon/tabliss/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search), configured using `tabliss.json` in this repo.
* [EFF Privacy Badger](https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17)
* [I don't care about cookies](https://addons.mozilla.org/en-US/firefox/addon/i-dont-care-about-cookies/)
* [Shut Up: Comment Blocker](https://addons.mozilla.org/en-US/firefox/addon/shut-up-comment-blocker)
* [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin)
* [Auto Tab Discard](https://addons.mozilla.org/en-US/firefox/addon/auto-tab-discard)

# Fonts

## For IDEs and text editors

Install [IBM Plex,](https://www.ibm.com/plex/) also in this repo under `fonts/`.

## For writing

Use [iA Writer Duospace](https://github.com/iaolo/iA-Fonts/tree/master/iA%20Writer%20Duospace) for writing apps (Drafts and Scrivener specifically). This is also in `fonts/`.

# iTerm setup

## Keybindings

Use the `itermkeymap` file in this repo to set up Alt+left-arrow and Alt+right-arrow navigation defaults for iTerm.

## Theme

Use Gruvbox Dark (contrast: hard) to differentiate terminal windows from text editor windows. Use the custom font, size 13.

# Git defaults

```sh
git config --global push.default current
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

# GitHub SSH

[Follow the instructions here to set up GitHub SSH auth.](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

Then, you can clone this repo.

# Use the latest Python version

Use `pyenv versions` to list the installed versions.

Use `pyenv install` to install the Python version you want, then switch to it globally.

```sh
pyenv install 3.9.0
pyenv global 3.9.0
```

# Vim plugins

I use https://github.com/junegunn/vim-plug because it's more lightweight than Vundle.

[Installation instructions](https://github.com/junegunn/vim-plug#installation)

You'll need to open `vim`, then run `:PlugInstall`.

## YouCompleteMe

The autocompleter plugin takes more steps. Follow the [YouCompleteMe installation guide.](https://github.com/ycm-core/YouCompleteMe?tab=readme-ov-file#macos) If you've already installed `pyenv` and set the global Python version to `3.0` or above, then you can do:

```sh
cd ~/.vim/plugged/youcompleteme
python install.py --all
```

