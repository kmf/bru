# bru

> a lekker colorscheme.
> solarized accents, gruvbox warmth, brewed slow.

A warm, readable colorscheme for the terminal generation. Two variants — `bru-espresso` (dark) and `bru-latte` (light) — with matching configs for every tool in your stack.

## Palette

### bru-espresso (dark)

**Neutrals**

| | Token | Hex |
|---|---|---|
| ![bg](https://singlecolorimage.com/get/1c1814/16x16) | bg | `#1c1814` |
| ![bg_soft](https://singlecolorimage.com/get/26211c/16x16) | bg_soft | `#26211c` |
| ![bg_hi](https://singlecolorimage.com/get/322b23/16x16) | bg_hi | `#322b23` |
| ![border](https://singlecolorimage.com/get/3a332b/16x16) | border | `#3a332b` |
| ![fg](https://singlecolorimage.com/get/f5e8c7/16x16) | fg | `#f5e8c7` |
| ![fg_alt](https://singlecolorimage.com/get/fbf3db/16x16) | fg_alt | `#fbf3db` |
| ![fg_muted](https://singlecolorimage.com/get/8a7f6f/16x16) | fg_muted | `#8a7f6f` |

**Accents**

| | Token | Hex |
|---|---|---|
| ![yellow](https://singlecolorimage.com/get/dbb32d/16x16) | yellow | `#dbb32d` |
| ![orange](https://singlecolorimage.com/get/ed8649/16x16) | orange | `#ed8649` |
| ![red](https://singlecolorimage.com/get/fa5750/16x16) | red | `#fa5750` |
| ![magenta](https://singlecolorimage.com/get/f275be/16x16) | magenta | `#f275be` |
| ![violet](https://singlecolorimage.com/get/af88eb/16x16) | violet | `#af88eb` |
| ![blue](https://singlecolorimage.com/get/4695f7/16x16) | blue | `#4695f7` |
| ![teal](https://singlecolorimage.com/get/41c7b9/16x16) | teal | `#41c7b9` |
| ![green](https://singlecolorimage.com/get/75b938/16x16) | green | `#75b938` |

### bru-latte (light)

**Neutrals**

| | Token | Hex |
|---|---|---|
| ![bg](https://singlecolorimage.com/get/faf3e0/16x16) | bg | `#faf3e0` |
| ![bg_soft](https://singlecolorimage.com/get/f3ead0/16x16) | bg_soft | `#f3ead0` |
| ![bg_hi](https://singlecolorimage.com/get/ece3cc/16x16) | bg_hi | `#ece3cc` |
| ![border](https://singlecolorimage.com/get/e0d4b0/16x16) | border | `#e0d4b0` |
| ![fg](https://singlecolorimage.com/get/3a2f22/16x16) | fg | `#3a2f22` |
| ![fg_alt](https://singlecolorimage.com/get/2d241a/16x16) | fg_alt | `#2d241a` |
| ![fg_muted](https://singlecolorimage.com/get/8a7f6f/16x16) | fg_muted | `#8a7f6f` |

**Accents**

| | Token | Hex |
|---|---|---|
| ![yellow](https://singlecolorimage.com/get/ad8900/16x16) | yellow | `#ad8900` |
| ![orange](https://singlecolorimage.com/get/c25d1e/16x16) | orange | `#c25d1e` |
| ![red](https://singlecolorimage.com/get/d2212d/16x16) | red | `#d2212d` |
| ![magenta](https://singlecolorimage.com/get/ca4898/16x16) | magenta | `#ca4898` |
| ![violet](https://singlecolorimage.com/get/8762c6/16x16) | violet | `#8762c6` |
| ![blue](https://singlecolorimage.com/get/0072d4/16x16) | blue | `#0072d4` |
| ![teal](https://singlecolorimage.com/get/009c8f/16x16) | teal | `#009c8f` |
| ![green](https://singlecolorimage.com/get/489100/16x16) | green | `#489100` |

## What's included

| Category | Tools |
|---|---|
| Terminals | Ghostty · Alacritty · Kitty · WezTerm · iTerm2 · foot · Windows Terminal |
| Editors | Neovim (Lua) · Zed |
| Apps | Claude Code · Chrome · Firefox · Obsidian · COSMIC · opencode |
| Dev tools | bat · fzf · tmux · btop · lazygit · k9s · yazi |
| Shell | Starship |

## Install

Clone the repo and cherry-pick the configs you need — each tool's directory has its own README with install instructions:

```bash
git clone https://github.com/kmf/bru ~/.local/share/bru
```

## Quickstart by tool

- **Ghostty** → `cp terminals/ghostty/bru-espresso ~/.config/ghostty/themes/bru-espresso`
- **Neovim** → `{ "kmf/bru.nvim" }` in your plugin manager, then `colorscheme bru-espresso`
- **Zed** → `cp editors/zed/bru.json ~/.config/zed/themes/`
- **tmux** → `source-file ~/.local/share/bru/tools/tmux/bru-espresso.tmux` in your `.tmux.conf`
- **bat** → `cp tools/bat/bru-espresso.tmTheme ~/.config/bat/themes/ && bat cache --build`

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
