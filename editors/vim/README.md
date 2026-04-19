# bru for Vim

Traditional Vim colorscheme (no Lua required). Two variants: **bru-espresso** (dark) and **bru-latte** (light).

For Neovim with Lua support, see `editors/neovim/` instead — it includes tree-sitter, LSP semantic tokens, and plugin highlight groups.

## Install

### Manual

```bash
cp editors/vim/colors/bru-espresso.vim ~/.vim/colors/
cp editors/vim/colors/bru-latte.vim ~/.vim/colors/
```

Then in your `.vimrc`:

```vim
set termguicolors
colorscheme bru-espresso
```

### vim-plug

```vim
Plug 'kmf/bru', { 'rtp': 'editors/vim' }
colorscheme bru-espresso
```
