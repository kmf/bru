#!/usr/bin/env bash
# bru statusline for Claude Code
# https://github.com/kmf/bru
#
# Reads the Claude Code session JSON from stdin and prints a single-line
# statusline using bru-espresso colors via ANSI truecolor escape sequences.
#
# Install:
#   cp bru-statusline.sh ~/.claude/bru-statusline.sh
#   chmod +x ~/.claude/bru-statusline.sh
#
# Then reference it from ~/.claude/settings.json under "statusLine.command".

set -euo pipefail

# bru-espresso palette (switch block below for bru-latte)
VARIANT="${BRU_VARIANT:-espresso}"

if [[ "$VARIANT" == "latte" ]]; then
  FG_MUTED="138;127;111"   # #8a7f6f
  YELLOW="173;137;0"        # #ad8900
  ORANGE="194;93;30"        # #c25d1e
  RED="210;33;45"           # #d2212d
  BLUE="0;114;212"          # #0072d4
  TEAL="0;156;143"          # #009c8f
  GREEN="72;145;0"          # #489100
  VIOLET="135;98;198"       # #8762c6
else
  FG_MUTED="138;127;111"    # #8a7f6f
  YELLOW="219;179;45"       # #dbb32d
  ORANGE="237;134;73"       # #ed8649
  RED="250;87;80"           # #fa5750
  BLUE="70;149;247"         # #4695f7
  TEAL="65;199;185"         # #41c7b9
  GREEN="117;185;56"        # #75b938
  VIOLET="175;136;235"      # #af88eb
fi

# ANSI truecolor: \e[38;2;R;G;Bm ... \e[0m
c()   { printf '\e[38;2;%sm' "$1"; }
rst() { printf '\e[0m'; }

# Read Claude Code session JSON from stdin
JSON="$(cat)"

# Extract fields with jq if available; fall back to defaults otherwise
if command -v jq >/dev/null 2>&1; then
  model=$(printf '%s' "$JSON"    | jq -r '.model.display_name // "claude"')
  dir=$(printf '%s' "$JSON"      | jq -r '.workspace.current_dir // "~"')
  ctx_pct=$(printf '%s' "$JSON"  | jq -r '.context.usage_percent // 0')
  cost=$(printf '%s' "$JSON"     | jq -r '.cost.total_usd // 0')
else
  model="claude"; dir="~"; ctx_pct=0; cost=0
fi

# Trim home path
dir="${dir/$HOME/~}"

# Build a gauge bar for context usage
gauge() {
  local pct=$1
  local filled=$((pct / 10))
  local empty=$((10 - filled))
  local bar=""
  for ((i=0; i<filled; i++)); do bar+="▰"; done
  for ((i=0; i<empty;  i++)); do bar+="▱"; done
  printf '%s' "$bar"
}

# Color the gauge based on usage
if   (( $(echo "$ctx_pct > 80" | bc -l 2>/dev/null || echo 0) )); then CTX_COLOR="$RED"
elif (( $(echo "$ctx_pct > 50" | bc -l 2>/dev/null || echo 0) )); then CTX_COLOR="$YELLOW"
else                                                                   CTX_COLOR="$GREEN"
fi

# Render the statusline
printf '%s☕%s  %s%s%s  ' "$(c "$YELLOW")" "$(rst)" "$(c "$BLUE")" "$model" "$(rst)"
printf '%s%s%s  ' "$(c "$VIOLET")" "$dir" "$(rst)"
printf '%s%s %d%%%s  ' "$(c "$CTX_COLOR")" "$(gauge "$ctx_pct")" "$ctx_pct" "$(rst)"
printf '%s$%.2f%s' "$(c "$FG_MUTED")" "$cost" "$(rst)"
