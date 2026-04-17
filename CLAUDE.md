# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

Bru is a colorscheme with two variants: `bru-espresso` (dark) and `bru-latte` (light). It provides theme configs for terminals, editors, dev tools, shell prompts, and apps. There is no build system, test suite, or application code — this is a collection of static config files.

## Source of truth

- `palette.json` is the canonical color definition. All tool configs must match these values exactly.
- `COLORSPEC.md` documents the full palette, ANSI mappings, syntax highlighting roles, and semantic color roles. Refer to it when creating or validating any config.

## Repo structure

```
palette.json          # canonical palette (neutrals, accents, ansi, ui per variant)
COLORSPEC.md          # design spec, token tables, role mappings
terminals/            # ghostty, alacritty, kitty, wezterm, iterm2, foot, windows-terminal
editors/              # neovim (lua plugin), zed
apps/                 # claude-code, chrome, firefox, obsidian, cosmic, opencode
tools/                # bat, btop, fzf, k9s, lazygit, starship, tmux, yazi
```

Each tool directory contains one config per variant (e.g., `bru-espresso.toml` / `bru-latte.toml`) and often a `README.md` with install instructions.

The Neovim theme is a proper plugin (not just a config file) — `lua/bru/init.lua` contains all palettes and highlight group definitions, and the `colors/` files are thin loaders.

## Conventions

- **Both variants**: when adding a new tool, always provide both `bru-espresso` and `bru-latte` configs unless the tool doesn't support light themes.
- **Naming**: files are named `bru-espresso.<ext>` and `bru-latte.<ext>`. Use the tool's native config format.
- **Hex values**: always lowercase, 6-digit hex (e.g., `#1c1814`, not `#1C1814` or shorthand). Some tools (Ghostty, CSS custom properties) use bare hex without `#` — match the tool's native format.
- **No build step**: configs are hand-authored static files. There is no template engine or code generation.
- **ANSI mapping**: terminal configs use the 16-color ANSI mapping from COLORSPEC.md, not the semantic accent tokens directly. Note that bru-latte inverts ANSI black/white semantics: black = dark foreground (`#3a2f22`), white = light background (`#faf3e0`), bright_white = darkest (`#2d241a`).
- **Syntax highlighting**: editor themes follow the syntax mapping table in COLORSPEC.md (e.g., keywords → red, strings → green, functions → blue, types → violet).

## Commits

Use [Conventional Commits](https://www.conventionalcommits.org/): `<type>: <description>`

Common types: `feat` (new tool/app theme), `fix` (color correction, typo), `docs` (README, COLORSPEC), `chore` (gitignore, repo maintenance).

Scope is optional but encouraged for clarity: `feat(kitty): add bru-latte theme`, `fix(neovim): correct bg_soft hex value`.

## Adding a new tool theme

1. Read `palette.json` for exact hex values.
2. Check `COLORSPEC.md` for the appropriate mapping (ANSI for terminals, syntax for editors, semantic for app UI).
3. Create `tools/<toolname>/bru-espresso.<ext>` and `bru-latte.<ext>`.
4. Add a `README.md` with install instructions specific to that tool.
