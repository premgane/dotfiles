#!/bin/sh
# Dotfiles installer — uses GNU Stow to symlink everything into $HOME.
# Run from anywhere: installs stow if missing, then stows every package.

set -e

if ! command -v stow >/dev/null 2>&1; then
  echo "Installing stow..."
  brew install stow
fi

cd "$(dirname "$0")"

# One entry per package directory. Each package mirrors home-relative paths.
PACKAGES="zsh vim ghostty iterm2 sublime tabliss"

for pkg in $PACKAGES; do
  echo "Stowing $pkg..."
  stow -t "$HOME" --restow "$pkg"
done

# Fonts: not stowable (they're zips) — unzip into ~/Library/Fonts
echo "Installing fonts..."
mkdir -p ~/Library/Fonts
for zip in fonts/*.zip; do
  ditto -x -k "$zip" ~/Library/Fonts/
done

echo "Done. Restart your terminal (and apps) to pick up changes."
