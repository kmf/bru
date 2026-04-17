# bru for Ghostty

## Install

Copy the theme files into Ghostty's themes directory:

```bash
mkdir -p ~/.config/ghostty/themes
cp bru-espresso ~/.config/ghostty/themes/
cp bru-latte    ~/.config/ghostty/themes/
```

## Activate

In `~/.config/ghostty/config`:

```
theme = bru-espresso
```

Or with light/dark auto-switch:

```
theme = light:bru-latte,dark:bru-espresso
```

Reload Ghostty with `cmd+shift+,` (macOS) or restart the terminal.
