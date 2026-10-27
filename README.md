# starship-config

Mon prompt [starship](https://starship.rs) : utilisateur, machine, dossier et branche git sur des bandes dorées, et à
droite le code de retour, la durée de la commande et l'heure. Il va avec ma config zsh
([zsh-config](https://github.com/Kasouker/zsh-config)), qui l'installe aussi.

## Installation (Linux, sans sudo)

Une seule ligne à copier (elle marche aussi pour mettre à jour : relance-la quand tu veux) :

```bash
{ [ -f ~/.config/starship/install.sh ] || git clone https://github.com/Kasouker/starship-config.git ~/.config/starship; } && git -C ~/.config/starship pull -q && bash ~/.config/starship/install.sh
```

Le script `install.sh` installe starship dans `~/.local/bin` s'il est absent, puis fait le lien
`~/.config/starship.toml`. Si ton shell n'est pas déjà configuré pour starship (zsh-config le fait), il te dit la
ligne à ajouter à `~/.zshrc`.

## La police

Les flèches et les icônes demandent une **Nerd Font**. Sans sudo :

```bash
mkdir -p ~/.local/share/fonts/IosevkaTerm && cd ~/.local/share/fonts/IosevkaTerm
curl -fsSLO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/IosevkaTerm.zip
unzip -oq IosevkaTerm.zip && rm IosevkaTerm.zip && fc-cache -f && cd ~
```

Puis choisis « IosevkaTerm Nerd Font » dans ton terminal (ma config WezTerm le fait toute seule).
