# bru

> a lekker colorscheme.
> solarized accents, gruvbox warmth, brewed slow.

A warm, readable colorscheme for the terminal generation. Two variants — `bru-espresso` (dark) and `bru-latte` (light) — with matching configs for every tool in your stack.

![bru palette](./docs/palette-preview.png)

## Variants

| Variant | Type | Background | Foreground |
|---|---|---|---|
| `bru-espresso` | dark | `#1c1814` (warm near-black) | `#f5e8c7` (cream) |
| `bru-latte` | light | `#faf3e0` (warm sepia) | `#3a2f22` (coffee) |

## What's included

| Category | Tools |
|---|---|
| Terminals | Ghostty · Alacritty · Kitty · WezTerm · iTerm2 · Windows Terminal |
| Editors | Neovim (Lua) · Vim · VS Code · Zed |
| Dev tools | bat · fzf · tmux · btop · lazygit · k9s · yazi |
| Shell | bash · zsh · fish · Starship |

## Install

Clone the repo and symlink the configs you want:

```bash
git clone https://github.com/kmf/bru ~/.local/share/bru
cd ~/.local/share/bru
./install.sh --variant espresso --tools ghostty,neovim,tmux
```

Or cherry-pick individual files — see the directory for your tool and copy the config into place. Each tool's directory has its own README with tool-specific install instructions.

## Quickstart by tool

- **Ghostty** → `cp terminals/ghostty/bru-espresso ~/.config/ghostty/themes/bru-espresso`
- **Neovim** → `{ "kmf/bru.nvim" }` in your plugin manager, then `colorscheme bru-espresso`
- **tmux** → `source-file ~/.local/share/bru/tools/tmux/bru-espresso.tmux` in your `.tmux.conf`
- **bat** → `cp tools/bat/bru-espresso.tmTheme ~/.config/bat/themes/ && bat cache --build`

See [`docs/`](./docs/) for detailed per-tool instructions.

## Design

Bru sits at the intersection of Gruvbox warmth and Solarized accent discipline:

- **Warm coffee backgrounds** — brown undertones instead of Solarized's teal or Gruvbox's deep umber
- **Cream foreground** — Gruvbox-adjacent, never pure white
- **Selenized-bright accents** — WCAG-tuned accent hues that pop against warm backgrounds without feeling neon

See [`COLORSPEC.md`](./COLORSPEC.md) for the full palette, token tables, and semantic role mappings.

## Lineage

`solarized → selenized → bru`

Accent hue values are derived from [Selenized](https://github.com/jan-warchol/selenized) by Jan Warchol (MIT), itself a redesign of [Solarized](https://ethanschoonover.com/solarized/) by Ethan Schoonover (MIT). Background warmth, naming, and semantic mapping are original to bru.

## License

MIT. See [`LICENSE`](./LICENSE).

---

built by kmf in pretoria · 2026
