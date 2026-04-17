# bru-espresso — a lekker colorscheme for tmux
# https://github.com/kmf/bru
#
# Install:
#   Add to ~/.tmux.conf:
#     source-file ~/.local/share/bru/tools/tmux/bru-espresso.tmux
#   Reload:  tmux source-file ~/.tmux.conf

# --- base ---
set -g status-style "bg=#26211c,fg=#f5e8c7"
set -g status-position bottom
set -g status-interval 5

# --- left: session name ---
set -g status-left-length 40
set -g status-left "#[bg=#dbb32d,fg=#1c1814,bold] ☕ #S #[bg=#26211c,fg=#dbb32d]#[bg=#26211c,fg=#8a7f6f] "

# --- right: date + time + host ---
set -g status-right-length 80
set -g status-right "#[fg=#8a7f6f]#[fg=#f5e8c7,bg=#322b23] %Y-%m-%d #[fg=#dbb32d]· #[fg=#f5e8c7]%H:%M #[fg=#af88eb,bg=#322b23]#[fg=#1c1814,bg=#af88eb,bold] #h "

# --- windows ---
set -g window-status-format "#[fg=#8a7f6f,bg=#26211c] #I #W "
set -g window-status-current-format "#[fg=#26211c,bg=#dbb32d]#[fg=#1c1814,bg=#dbb32d,bold] #I #W #[fg=#dbb32d,bg=#26211c]"
set -g window-status-separator ""

# --- panes ---
set -g pane-border-style "fg=#3a332b"
set -g pane-active-border-style "fg=#dbb32d"
set -g display-panes-active-colour "#dbb32d"
set -g display-panes-colour "#8a7f6f"

# --- messages / command prompt ---
set -g message-style "bg=#322b23,fg=#f5e8c7"
set -g message-command-style "bg=#322b23,fg=#dbb32d"

# --- copy mode ---
set -g mode-style "bg=#322b23,fg=#dbb32d"

# --- clock ---
set -g clock-mode-colour "#dbb32d"

# --- activity / bell ---
set -g window-status-activity-style "fg=#ed8649,bg=#26211c"
set -g window-status-bell-style "fg=#fa5750,bg=#26211c,bold"
