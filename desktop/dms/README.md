# Bru for Dank Material Shell

Bru theme for [Dank Material Shell](https://github.com/AvengeMedia/dms-plugin-registry) — a Material Design 3 GNOME Shell theme.

## Flavors

- **Espresso** — warm near-black dark surfaces (default for dark mode)
- **Latte** — warm cream light surfaces (default for light mode)

## Accents

8 accent colors, each selectable per-flavor:

- **Yellow** (default) — `#dbb32d` / `#ad8900`
- **Orange** — `#ed8649` / `#c25d1e`
- **Red** — `#fa5750` / `#d2212d`
- **Magenta** — `#f275be` / `#ca4898`
- **Violet** — `#af88eb` / `#8762c6`
- **Blue** — `#4695f7` / `#0072d4`
- **Teal** — `#41c7b9` / `#009c8f`
- **Green** — `#75b938` / `#489100`

This gives 2 flavors × 8 accents = 16 combinations, each with dark/light mode support.

## Install

Point DMS at this `theme.json` via its [config file](https://danklinux.com/docs/dankmaterialshell/custom-themes#via-configuration-file). In `~/.config/DankMaterialShell/settings.json`:

```json
{
  "currentThemeName": "custom",
  "customThemeFile": "/path/to/bru/desktop/dms/theme.json"
}
```

DMS reloads automatically on save. Pick the **Espresso** or **Latte** flavor and one of the 8 accents from the DMS variant selector.
