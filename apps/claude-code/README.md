# bru for Claude Code

Claude Code ships a small set of built-in themes (light / dark / dark-daltonized / etc.) and does not yet expose per-element color configuration — the feature is [tracked in issue #25366](https://github.com/anthropics/claude-code/issues/25366).

Until that lands, bru for Claude Code provides:

1. **A coordinating `settings.json`** — picks the closest built-in theme (`dark` for espresso) and forces truecolor rendering so syntax colors stay vibrant even over SSH.
2. **A custom statusline script** — `bru-statusline.sh` renders the session status using bru's actual palette via ANSI truecolor escape sequences.

Since bru is what your terminal uses, Claude Code will inherit bru's ANSI palette automatically for its diff highlighting and user input colors. The statusline gives you the bru look for the session info row.

## Install

```bash
# Settings file
mkdir -p ~/.claude
cp settings.json       ~/.claude/settings.json
cp bru-statusline.sh   ~/.claude/bru-statusline.sh
chmod +x               ~/.claude/bru-statusline.sh
```

## Customize the variant

In `~/.claude/settings.json`, the `env.BRU_VARIANT` controls which bru palette the statusline uses:

```json
{
  "env": {
    "BRU_VARIANT": "espresso"   // or "latte"
  }
}
```

## What the statusline shows

```
☕  Claude 4.7 Opus  ~/projects/bru  ▰▰▰▱▱ 35%  $0.42
```

Left to right: bru bean, model, working directory, context usage gauge (color-shifts green → yellow → red as it fills), session cost.

## When full theme support ships

When Claude Code adds full user-theme configuration, this directory will gain a `bru-espresso.json` and `bru-latte.json` alongside the settings file.
