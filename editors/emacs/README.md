# bru for Emacs

Two variants: **bru-espresso** (dark) and **bru-latte** (light).

Covers core faces, font-lock, org-mode, markdown-mode, diff, magit, flycheck/flymake, company, which-key, and show-paren.

## Install

### Manual

Copy the theme files into your custom theme directory:

```bash
cp editors/emacs/bru-*-theme.el ~/.emacs.d/themes/
```

Then in your init file:

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'bru-espresso t)
```

### use-package + straight

```elisp
(use-package bru-espresso-theme
  :straight (:host github :repo "kmf/bru" :files ("editors/emacs/*.el"))
  :config
  (load-theme 'bru-espresso t))
```

### From the repo clone

```bash
ln -s ~/.local/share/bru/editors/emacs ~/.emacs.d/themes/bru
```
