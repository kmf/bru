# bru for Alacritty

## Install

```bash
mkdir -p ~/.config/alacritty/themes
cp bru-espresso.toml ~/.config/alacritty/themes/
cp bru-latte.toml    ~/.config/alacritty/themes/
```

## Activate

In `~/.config/alacritty/alacritty.toml`:

```toml
[general]
import = ["~/.config/alacritty/themes/bru-espresso.toml"]
```

Alacritty hot-reloads on save.
