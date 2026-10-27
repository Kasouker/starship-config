#!/usr/bin/env bash
# install.sh : installe le prompt sous Linux, sans sudo : starship dans ~/.local/bin s'il est absent, et le lien
# ~/.config/starship.toml. À lancer après le clone : bash ~/.config/starship/install.sh (peut être relancé sans risque).
set -euo pipefail

BIN="$HOME/.local/bin"
mkdir -p "$BIN"
export PATH="$BIN:$PATH"

step() { printf '\n\033[1;33m==> %s\033[0m\n' "$*"; }

step "starship"
if command -v starship >/dev/null; then
	echo "déjà installé : $(starship --version | head -1)"
else
	tmp=$(mktemp -d)
	curl -fsSL https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-musl.tar.gz |
		tar -xz -C "$tmp"
	install -m 755 "$tmp/starship" "$BIN/"
	rm -rf "$tmp"
	echo "installé dans $BIN"
fi

step "~/.config/starship.toml"
ln -sfn "$HOME/.config/starship/starship.toml" "$HOME/.config/starship.toml"
echo "prêt"

step "Terminé"
if grep -q 'starship init' "$HOME/.zshrc" 2>/dev/null; then
	echo "Lance : exec zsh"
else
	echo "Ajoute à la fin de ~/.zshrc :  eval \"\$(starship init zsh)\"  (zsh-config le fait déjà), puis : exec zsh"
fi
