# starship-config

Mon prompt [starship](https://starship.rs) : utilisateur, machine, dossier et branche git sur des bandes dorées, et à
droite le code de retour, la durée de la commande et l'heure. Il va avec ma config zsh
([zsh-config](https://github.com/Kasouker/zsh-config)), qui l'installe aussi.

## Installation (sans sudo)

```bash
mkdir -p ~/.local/bin && export PATH="$HOME/.local/bin:$PATH"
command -v starship >/dev/null || curl -fsSL https://starship.rs/install.sh | sh -s -- -y -b ~/.local/bin
git clone https://github.com/Kasouker/starship-config.git ~/.config/starship
ln -sf ~/.config/starship/starship.toml ~/.config/starship.toml
```

Puis, si ton shell n'est pas déjà configuré pour starship (zsh-config le fait), ajoute à la fin de `~/.zshrc` :

```bash
eval "$(starship init zsh)"
```

## La police

Les flèches et les icônes demandent une **Nerd Font**. Sans sudo :

```bash
mkdir -p ~/.local/share/fonts/IosevkaTerm && cd ~/.local/share/fonts/IosevkaTerm
curl -fsSLO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/IosevkaTerm.zip
unzip -oq IosevkaTerm.zip && rm IosevkaTerm.zip && fc-cache -f && cd ~
```

Puis choisis « IosevkaTerm Nerd Font » dans ton terminal (ma config WezTerm le fait toute seule).
