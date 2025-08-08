#!/usr/bin/env bash
set -e
# macOS:
if [[ "$OSTYPE" == "darwin"* ]] && command -v brew >/dev/null 2>&1; then
  brew install neovim ripgrep fd
fi

# 2) Link into ~/.config/nvim
mkdir -p "$HOME/.config"
if [ -d "$HOME/.config/nvim" ] || [ -L "$HOME/.config/nvim" ]; then
  echo "~/.config/nvim already exists. Backing up to ~/.config/nvim.bak"
  mv "$HOME/.config/nvim" "$HOME/.config/nvim.bak.$(date +%s)"
fi
ln -s "$(pwd)" "$HOME/.config/nvim"

# 3) Headless install to fetch plugins
nvim --headless "+Lazy! sync" +qa

echo "✅ Neovim config installed. Open nvim and enjoy!"
