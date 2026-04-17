# bru for tmux

## Install

```bash
# Clone bru somewhere accessible
git clone https://github.com/kmf/bru ~/.local/share/bru

# Add to ~/.tmux.conf
echo 'source-file ~/.local/share/bru/tools/tmux/bru-espresso.tmux' >> ~/.tmux.conf

# Reload
tmux source-file ~/.tmux.conf
```

## Switch variant on the fly

Bind a key to toggle:

```tmux
bind-key T if -F '#{==:#{@bru-variant},latte}' \
  'source-file ~/.local/share/bru/tools/tmux/bru-espresso.tmux ; set -g @bru-variant espresso ; display "espresso"' \
  'source-file ~/.local/share/bru/tools/tmux/bru-latte.tmux    ; set -g @bru-variant latte    ; display "latte"'
```

## What it styles

- Status bar background, active/inactive windows, pane borders
- Session name with a bru bean on the left
- Hostname with a violet tag on the right
- Message bar, command prompt, copy-mode selections
- Activity markers (orange) and bell (red, bold) — impossible to miss

The active window gets a solid bru-yellow block; inactive windows are muted. Pane borders highlight active in yellow.
