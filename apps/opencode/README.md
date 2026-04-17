# bru for opencode

A single theme file with both `bru-espresso` (dark) and `bru-latte` (light) variants that follow your terminal's dark/light preference.

## Install

```bash
mkdir -p ~/.config/opencode/themes
cp bru.json ~/.config/opencode/themes/
```

## Activate

In `~/.config/opencode/tui.json`:

```json
{
  "$schema": "https://opencode.ai/tui.json",
  "theme": "bru"
}
```

Or pick it interactively with `/theme`.

## How it works

The theme file defines both variants using opencode's `{ "dark": ..., "light": ... }` schema, so the theme automatically picks espresso when your terminal background is dark and latte when it's light. No separate files or hot-swapping needed.

## Notes

- Requires truecolor terminal support. Check with `echo $COLORTERM` — should say `truecolor` or `24bit`.
- Covers the full opencode schema: UI chrome, diffs, markdown rendering, and syntax highlighting.
- Diff backgrounds use subtle tinted versions of espresso/latte bg-soft so changes are legible without overwhelming the text.
