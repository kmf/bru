# Install

Clone the repo, then cherry-pick the configs you need.

```bash
git clone https://github.com/kmf/bru ~/.local/share/bru
```

Replace `bru-espresso` with `bru-latte` anywhere below for the light variant.

---

## Terminals

### Ghostty

```bash
mkdir -p ~/.config/ghostty/themes
cp terminals/ghostty/bru-espresso ~/.config/ghostty/themes/
cp terminals/ghostty/bru-latte    ~/.config/ghostty/themes/
```

In `~/.config/ghostty/config`:

```
theme = bru-espresso
```

Or auto-switch with system preference:

```
theme = light:bru-latte,dark:bru-espresso
```

### Alacritty

```bash
mkdir -p ~/.config/alacritty/themes
cp terminals/alacritty/bru-espresso.toml ~/.config/alacritty/themes/
cp terminals/alacritty/bru-latte.toml    ~/.config/alacritty/themes/
```

In `~/.config/alacritty/alacritty.toml`:

```toml
import = ["~/.config/alacritty/themes/bru-espresso.toml"]
```

### Kitty

```bash
mkdir -p ~/.config/kitty/themes
cp terminals/kitty/bru-espresso.conf ~/.config/kitty/themes/
cp terminals/kitty/bru-latte.conf    ~/.config/kitty/themes/
```

In `~/.config/kitty/kitty.conf`:

```
include ./themes/bru-espresso.conf
```

### WezTerm

```bash
mkdir -p ~/.config/wezterm/colors
cp terminals/wezterm/bru-espresso.lua ~/.config/wezterm/colors/
cp terminals/wezterm/bru-latte.lua    ~/.config/wezterm/colors/
```

In `~/.config/wezterm/wezterm.lua`:

```lua
config.colors = require 'colors/bru-espresso'
```

### iTerm2

Double-click `terminals/iterm2/bru-espresso.itermcolors` to import, or:

iTerm2 → Preferences → Profiles → Colors → Color Presets → Import → select the `.itermcolors` file.

### foot

```bash
mkdir -p ~/.config/foot
cp terminals/foot/bru-espresso.ini ~/.config/foot/bru-espresso.ini
```

In `~/.config/foot/foot.ini`:

```ini
include=~/.config/foot/bru-espresso.ini
```

### Windows Terminal

Open Settings → Open JSON file, then paste the contents of `terminals/windows-terminal/bru-espresso.json` into the `schemes` array. Set the scheme name in your profile:

```json
{
  "colorScheme": "bru-espresso"
}
```

---

## Editors

### Neovim

**lazy.nvim:**

```lua
{
  "kmf/bru",
  lazy = false,
  priority = 1000,
  config = function()
    require("bru").setup({ variant = "bru-espresso" })
    vim.cmd.colorscheme("bru-espresso")
  end,
}
```

**Manual:**

```bash
mkdir -p ~/.local/share/nvim/site/pack/bru/start
cp -r editors/neovim ~/.local/share/nvim/site/pack/bru/start/bru
```

### Vim

```bash
cp editors/vim/colors/bru-espresso.vim ~/.vim/colors/
cp editors/vim/colors/bru-latte.vim    ~/.vim/colors/
```

In `.vimrc`:

```vim
set termguicolors
colorscheme bru-espresso
```

**vim-plug:**

```vim
Plug 'kmf/bru', { 'rtp': 'editors/vim' }
colorscheme bru-espresso
```

### VS Code

```bash
cp -r editors/vscode ~/.vscode/extensions/bru
```

Or symlink from the repo clone:

```bash
ln -s ~/.local/share/bru/editors/vscode ~/.vscode/extensions/bru
```

Restart VS Code → Settings → Color Theme → **Bru Espresso** or **Bru Latte**.

### IntelliJ / JetBrains IDEs

Works with IntelliJ IDEA, PyCharm, WebStorm, GoLand, Rider, CLion, RubyMine, PhpStorm, etc.

1. Open **Settings** → **Editor** → **Color Scheme**
2. Click the gear icon → **Import Scheme**
3. Select `editors/intellij/bru-espresso.icls` or `bru-latte.icls`

Or copy directly:

```bash
# Linux
cp editors/intellij/bru-espresso.icls ~/.config/JetBrains/IntelliJIdea*/colors/

# macOS
cp editors/intellij/bru-espresso.icls ~/Library/Application\ Support/JetBrains/IntelliJIdea*/colors/
```

Restart the IDE, then select in **Settings** → **Editor** → **Color Scheme**.

### Emacs

```bash
cp editors/emacs/bru-*-theme.el ~/.emacs.d/themes/
```

In your init file:

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'bru-espresso t)
```

**use-package + straight.el:**

```elisp
(use-package bru-espresso-theme
  :straight (:host github :repo "kmf/bru" :files ("editors/emacs/*.el"))
  :config
  (load-theme 'bru-espresso t))
```

### Zed

```bash
mkdir -p ~/.config/zed/themes
cp editors/zed/bru.json ~/.config/zed/themes/
```

In `~/.config/zed/settings.json`:

```json
{
  "theme": {
    "mode": "dark",
    "dark": "Bru Espresso",
    "light": "Bru Latte"
  }
}
```

---

## Apps

### Claude Code

```bash
mkdir -p ~/.claude
cp apps/claude-code/settings.json     ~/.claude/settings.json
cp apps/claude-code/bru-statusline.sh ~/.claude/bru-statusline.sh
chmod +x ~/.claude/bru-statusline.sh
```

### COSMIC Desktop

```bash
# Dark
mkdir -p ~/.config/cosmic/com.system76.CosmicTheme.Dark.Builder/v1
cp desktop/cosmic/bru-espresso.ron ~/.config/cosmic/com.system76.CosmicTheme.Dark.Builder/v1/Theme

# Light
mkdir -p ~/.config/cosmic/com.system76.CosmicTheme.Light.Builder/v1
cp desktop/cosmic/bru-latte.ron ~/.config/cosmic/com.system76.CosmicTheme.Light.Builder/v1/Theme
```

Then import via Settings → Appearance.

### Dank Material Shell (DMS)

Point DMS at the theme file via its [config file](https://danklinux.com/docs/dankmaterialshell/custom-themes#via-configuration-file). In `~/.config/DankMaterialShell/settings.json`:

```json
{
  "currentThemeName": "custom",
  "customThemeFile": "/home/you/.local/share/bru/desktop/dms/theme.json"
}
```

DMS reloads automatically on save. The theme provides two flavors (**Espresso** / **Latte**) and 8 accents (yellow default, plus orange, red, magenta, violet, blue, teal, green), selectable via the DMS variant picker.

### Omarchy

```bash
omarchy-theme-install https://github.com/kmf/omarchy-bru-espresso-theme
omarchy-theme-install https://github.com/kmf/omarchy-bru-latte-theme
```

Or manually:

```bash
git clone https://github.com/kmf/omarchy-bru-espresso-theme ~/.config/omarchy/themes/omarchy-bru-espresso-theme
git clone https://github.com/kmf/omarchy-bru-latte-theme ~/.config/omarchy/themes/omarchy-bru-latte-theme
```

Then: Omarchy Menu (Super + Alt + Space) → Style → Theme → **bru-espresso** or **bru-latte**.

### Obsidian

```bash
VAULT=~/path/to/your/vault
mkdir -p "$VAULT/.obsidian/themes/bru"
cp apps/obsidian/theme.css     "$VAULT/.obsidian/themes/bru/theme.css"
cp apps/obsidian/manifest.json "$VAULT/.obsidian/themes/bru/manifest.json"
```

Settings → Appearance → Themes → select **bru**.

### opencode

```bash
mkdir -p ~/.config/opencode/themes
cp apps/opencode/bru.json ~/.config/opencode/themes/
```

In `~/.config/opencode/tui.json`:

```json
{
  "theme": "bru"
}
```

### Chrome

1. Open `chrome://extensions`
2. Enable **Developer mode**
3. Click **Load unpacked**
4. Select `apps/chrome/bru-espresso/` or `apps/chrome/bru-latte/`

### Firefox

1. Open `about:debugging#/runtime/this-firefox`
2. Click **Load Temporary Add-on**
3. Select `apps/firefox/bru-espresso/manifest.json`

For persistent install, package as `.xpi`:

```bash
cd apps/firefox/bru-espresso && zip -r ../bru-espresso.xpi .
```

---

## Dev Tools

### bat

```bash
mkdir -p "$(bat --config-dir)/themes"
cp tools/bat/bru-espresso.tmTheme "$(bat --config-dir)/themes/"
bat cache --build
```

In `~/.config/bat/config`:

```
--theme="bru-espresso"
```

### btop

```bash
mkdir -p ~/.config/btop/themes
cp tools/btop/bru-espresso.theme ~/.config/btop/themes/
cp tools/btop/bru-latte.theme    ~/.config/btop/themes/
```

In btop: press `Esc` → Options → Color theme → select **bru-espresso**.

### fzf

Source the theme in your shell rc:

```bash
# ~/.zshrc or ~/.bashrc
source ~/.local/share/bru/tools/fzf/bru-espresso.sh
```

### k9s

```bash
mkdir -p ~/.config/k9s/skins
cp tools/k9s/bru-espresso.yaml ~/.config/k9s/skins/
cp tools/k9s/bru-latte.yaml    ~/.config/k9s/skins/
```

In `~/.config/k9s/config.yaml`:

```yaml
k9s:
  ui:
    skin: bru-espresso
```

### lazygit

Merge the contents of `tools/lazygit/bru-espresso.yml` into `~/.config/lazygit/config.yml` under the `gui.theme` key.

### Starship

```bash
cp tools/starship/bru-espresso.toml ~/.config/starship.toml
```

Or merge the `[palettes.bru-espresso]` section into your existing config and set `palette = "bru-espresso"` at the top.

### tmux

```bash
# In ~/.tmux.conf
source-file ~/.local/share/bru/tools/tmux/bru-espresso.tmux
```

Then reload:

```bash
tmux source-file ~/.tmux.conf
```

### yazi

```bash
cp tools/yazi/bru-espresso.toml ~/.config/yazi/theme.toml
```

---

## Shell

### Starship

See [Dev Tools → Starship](#starship) above.
