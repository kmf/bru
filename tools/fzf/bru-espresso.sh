# bru-espresso — fzf colors
# https://github.com/kmf/bru
#
# Install:
#   Add to ~/.zshrc or ~/.bashrc:
#     source ~/.local/share/bru/tools/fzf/bru-espresso.sh

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--color=fg:#f5e8c7,fg+:#fbf3db,bg:#1c1814,bg+:#322b23 \
--color=hl:#4695f7,hl+:#58a3ff,info:#8a7f6f,marker:#41c7b9 \
--color=prompt:#dbb32d,spinner:#af88eb,pointer:#dbb32d,header:#af88eb \
--color=border:#3a332b,label:#dbb32d,query:#f5e8c7 \
--border=rounded --border-label=' bru ' --border-label-pos=2 \
--preview-window='border-rounded' \
--prompt=' ☕  ' --marker=' ✓ ' --pointer=' ❯ ' --separator='─'"
