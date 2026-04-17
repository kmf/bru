# bru-latte — a lekker colorscheme for tmux
# https://github.com/kmf/bru

set -g status-style "bg=#f3ead0,fg=#3a2f22"
set -g status-position bottom
set -g status-interval 5

set -g status-left-length 40
set -g status-left "#[bg=#ad8900,fg=#faf3e0,bold] ☕ #S #[bg=#f3ead0,fg=#ad8900]#[bg=#f3ead0,fg=#8a7f6f] "

set -g status-right-length 80
set -g status-right "#[fg=#8a7f6f]#[fg=#3a2f22,bg=#ece3cc] %Y-%m-%d #[fg=#ad8900]· #[fg=#3a2f22]%H:%M #[fg=#8762c6,bg=#ece3cc]#[fg=#faf3e0,bg=#8762c6,bold] #h "

set -g window-status-format "#[fg=#8a7f6f,bg=#f3ead0] #I #W "
set -g window-status-current-format "#[fg=#f3ead0,bg=#ad8900]#[fg=#faf3e0,bg=#ad8900,bold] #I #W #[fg=#ad8900,bg=#f3ead0]"
set -g window-status-separator ""

set -g pane-border-style "fg=#e0d4b0"
set -g pane-active-border-style "fg=#ad8900"
set -g display-panes-active-colour "#ad8900"
set -g display-panes-colour "#8a7f6f"

set -g message-style "bg=#ece3cc,fg=#3a2f22"
set -g message-command-style "bg=#ece3cc,fg=#ad8900"

set -g mode-style "bg=#ece3cc,fg=#ad8900"

set -g clock-mode-colour "#ad8900"

set -g window-status-activity-style "fg=#c25d1e,bg=#f3ead0"
set -g window-status-bell-style "fg=#d2212d,bg=#f3ead0,bold"
