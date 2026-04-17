# bru.nvim

A lekker Neovim colorscheme with full Tree-sitter, LSP semantic token, and plugin support.

## Install

### lazy.nvim

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

### packer

```lua
use {
  "kmf/bru",
  config = function()
    require("bru").setup({ variant = "bru-espresso" })
    vim.cmd.colorscheme("bru-espresso")
  end,
}
```

### Manual

```bash
mkdir -p ~/.local/share/nvim/site/pack/bru/start
cp -r editors/neovim ~/.local/share/nvim/site/pack/bru/start/bru
```

## Usage

```vim
:colorscheme bru-espresso
:colorscheme bru-latte
```

## Configuration

```lua
require("bru").setup({
  variant = "bru-espresso",  -- or "bru-latte"
})
```

## Plugin support

Tested with and provides highlight groups for:

- **Tree-sitter** — full `@capture` group coverage
- **LSP semantic tokens** — `@lsp.type.*` groups
- **Telescope** — borders, titles, matches, selection
- **nvim-cmp** — item kinds, match highlighting
- **gitsigns.nvim** — add/change/delete signs, blame
- **indent-blankline.nvim** — indent guides, scope highlights
- **which-key.nvim** — keys, groups, descriptions
- **nvim-notify** — error/warn/info borders and icons

## Lualine / statusline

Use the palette directly:

```lua
local p = require("bru").palettes["bru-espresso"]
-- p.yellow, p.blue, p.red, etc.
```

## Switching on the fly

```lua
vim.keymap.set("n", "<leader>tb", function()
  local bru = require("bru")
  local next_variant = bru.variant == "bru-espresso" and "bru-latte" or "bru-espresso"
  bru.setup({ variant = next_variant })
  bru.load()
  vim.notify("bru → " .. next_variant)
end, { desc = "Toggle bru variant" })
```
