# bru for Kitty

## Install

```bash
mkdir -p ~/.config/kitty/themes
cp bru-espresso.conf ~/.config/kitty/themes/
cp bru-latte.conf    ~/.config/kitty/themes/
```

## Activate

In `~/.config/kitty/kitty.conf`:

```
include ./themes/bru-espresso.conf
```

Reload with `ctrl+shift+F5` or restart kitty.

## Live-switch

```bash
kitty +kitten themes --reload-in=all Bru Espresso
```
