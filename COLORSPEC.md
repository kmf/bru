# Bru — Colorspec

> a lekker colorscheme.
> solarized accents, gruvbox warmth, brewed slow.

**Name:** Bru
**Variants:** `bru-espresso` (dark) · `bru-latte` (light)
**Version:** 1.0
**Lineage:** Solarized (Ethan Schoonover, 2011) → Selenized (Jan Warchol) → Bru
**License:** MIT

---

## About the name

**Bru** — South African slang for *bro* or *mate*. Doubles as a play on *brew*, continuing the coffee theme across the two variants:

- `bru-espresso` — the dark roast. Warm near-black with cream text.
- `bru-latte` — the creamy light. Warm sepia with coffee-dark text.

Short, friendly, three letters — fits any theme picker, status bar, or config filename.

---

## Design intent

A paired dark/light colorscheme that combines:

- **Warm coffee-toned backgrounds** (brown/sepia, not teal or grey) — a departure from Solarized and Selenized, which sit in the teal-blue family.
- **Cream foreground** (Gruvbox-adjacent) that carries warmth through typography rather than through accent desaturation.
- **Selenized-bright accent hues** — WCAG-tuned accents that pop against warm backgrounds without feeling neon.

Bru is for people who spend a lot of time in terminals and editors and want something that feels warm without feeling muddy, and readable without feeling clinical.

---

## bru-espresso (dark)

Warm near-black base with cream text and bright, crisp accents.

### Neutrals

| Token | Hex | Role |
|---|---|---|
| `--bru-bg` | `#1c1814` | Base background — warm near-black with brown undertone |
| `--bru-bg-soft` | `#26211c` | Elevated surface — cards, panels, code blocks |
| `--bru-bg-hi` | `#322b23` | Hover / selection / active state |
| `--bru-border` | `#3a332b` | Dividers, subtle borders |
| `--bru-fg` | `#f5e8c7` | Primary text — cream |
| `--bru-fg-alt` | `#fbf3db` | Emphasized text — brighter cream |
| `--bru-fg-muted` | `#8a7f6f` | Comments, secondary text, inactive UI |

### Accents

| Token | Hex | Role |
|---|---|---|
| `--bru-yellow` | `#dbb32d` | Primary accent, warnings, active states, streaks |
| `--bru-orange` | `#ed8649` | Highlights, secondary emphasis |
| `--bru-red` | `#fa5750` | Errors, destructive actions, critical values |
| `--bru-magenta` | `#f275be` | Special syntax, rare markers |
| `--bru-violet` | `#af88eb` | Types, XP / gamification markers |
| `--bru-blue` | `#4695f7` | Links, informational states, primary interactive |
| `--bru-teal` | `#41c7b9` | Success indicators, shields, constants |
| `--bru-green` | `#75b938` | Strings, success states, positive deltas |

---

## bru-latte (light)

Warm sepia cream base with dark coffee text and darkened, contrast-safe accents.

### Neutrals

| Token | Hex | Role |
|---|---|---|
| `--bru-bg` | `#faf3e0` | Base background — warm sepia cream |
| `--bru-bg-soft` | `#f3ead0` | Elevated surface — cards, panels, code blocks |
| `--bru-bg-hi` | `#ece3cc` | Hover / selection / active state |
| `--bru-border` | `#e0d4b0` | Dividers, subtle borders |
| `--bru-fg` | `#3a2f22` | Primary text — warm dark brown |
| `--bru-fg-alt` | `#2d241a` | Emphasized text — deeper coffee |
| `--bru-fg-muted` | `#8a7f6f` | Comments, secondary text, inactive UI (shared with Espresso) |

### Accents

| Token | Hex | Role |
|---|---|---|
| `--bru-yellow` | `#ad8900` | Primary accent, warnings, active states, streaks |
| `--bru-orange` | `#c25d1e` | Highlights, secondary emphasis |
| `--bru-red` | `#d2212d` | Errors, destructive actions, critical values |
| `--bru-magenta` | `#ca4898` | Special syntax, rare markers |
| `--bru-violet` | `#8762c6` | Types, XP / gamification markers |
| `--bru-blue` | `#0072d4` | Links, informational states, primary interactive |
| `--bru-teal` | `#009c8f` | Success indicators, shields, constants |
| `--bru-green` | `#489100` | Strings, success states, positive deltas |

---

## ANSI 16-color mapping

For terminal emulator configs (Ghostty, Alacritty, Kitty, WezTerm, iTerm2, etc.).

### bru-espresso

| ANSI | Name | Hex |
|---|---|---|
| 0 | black | `#1c1814` |
| 1 | red | `#fa5750` |
| 2 | green | `#75b938` |
| 3 | yellow | `#dbb32d` |
| 4 | blue | `#4695f7` |
| 5 | magenta | `#f275be` |
| 6 | cyan | `#41c7b9` |
| 7 | white | `#f5e8c7` |
| 8 | bright black | `#3a332b` |
| 9 | bright red | `#ff665c` |
| 10 | bright green | `#84c747` |
| 11 | bright yellow | `#ebc13d` |
| 12 | bright blue | `#58a3ff` |
| 13 | bright magenta | `#ff84cd` |
| 14 | bright cyan | `#53d6c7` |
| 15 | bright white | `#fbf3db` |
| — | foreground | `#f5e8c7` |
| — | background | `#1c1814` |
| — | cursor | `#dbb32d` |
| — | selection bg | `#322b23` |

### bru-latte

| ANSI | Name | Hex |
|---|---|---|
| 0 | black | `#3a2f22` |
| 1 | red | `#d2212d` |
| 2 | green | `#489100` |
| 3 | yellow | `#ad8900` |
| 4 | blue | `#0072d4` |
| 5 | magenta | `#ca4898` |
| 6 | cyan | `#009c8f` |
| 7 | white | `#faf3e0` |
| 8 | bright black | `#8a7f6f` |
| 9 | bright red | `#cc1729` |
| 10 | bright green | `#428b00` |
| 11 | bright yellow | `#a78300` |
| 12 | bright blue | `#006dce` |
| 13 | bright magenta | `#c44392` |
| 14 | bright cyan | `#00978a` |
| 15 | bright white | `#2d241a` |
| — | foreground | `#3a2f22` |
| — | background | `#faf3e0` |
| — | cursor | `#ad8900` |
| — | selection bg | `#ece3cc` |

---

## Syntax highlighting mapping

Reference for editor/LSP theme authors.

| Syntax element | bru-espresso | bru-latte | Token |
|---|---|---|---|
| Comments | `#8a7f6f` | `#8a7f6f` | `fg-muted` |
| Strings | `#75b938` | `#489100` | `green` |
| Numbers | `#41c7b9` | `#009c8f` | `teal` |
| Booleans / null | `#ed8649` | `#c25d1e` | `orange` |
| Keywords (`if`, `return`, `class`) | `#fa5750` | `#d2212d` | `red` |
| Functions / methods | `#4695f7` | `#0072d4` | `blue` |
| Types / classes | `#af88eb` | `#8762c6` | `violet` |
| Constants / macros | `#ed8649` | `#c25d1e` | `orange` |
| Operators / punctuation | `#f5e8c7` | `#3a2f22` | `fg` |
| Variables / identifiers | `#f5e8c7` | `#3a2f22` | `fg` |
| Tags (HTML/JSX) | `#fa5750` | `#d2212d` | `red` |
| Attributes | `#dbb32d` | `#ad8900` | `yellow` |
| Special chars / regex | `#f275be` | `#ca4898` | `magenta` |

### Ansible / YAML mapping

| Element | bru-espresso | bru-latte | Token |
|---|---|---|---|
| YAML keys | `#4695f7` | `#0072d4` | `blue` |
| String values | `#75b938` | `#489100` | `green` |
| Numbers / ports / intervals | `#41c7b9` | `#009c8f` | `teal` |
| Booleans / null | `#ed8649` | `#c25d1e` | `orange` |
| Module names (`ansible.builtin.*`) | `#fa5750` | `#d2212d` | `red` |
| Task `name:` values | `#dbb32d` | `#ad8900` | `yellow` |
| List markers (`-`) | `#dbb32d` | `#ad8900` | `yellow` |
| Jinja variables | `#af88eb` | `#8762c6` | `violet` |
| Jinja delimiters (`{{ }}`) | `#f275be` | `#ca4898` | `magenta` |

### Ansible output mapping

| State | bru-espresso | bru-latte | Token |
|---|---|---|---|
| `ok:` | `#75b938` | `#489100` | `green` |
| `changed:` | `#dbb32d` | `#ad8900` | `yellow` |
| `failed:` / errors | `#fa5750` | `#d2212d` | `red` |
| `skipping:` | `#41c7b9` | `#009c8f` | `teal` |
| `TASK [...]` headers | `#4695f7` | `#0072d4` | `blue` |
| Hostnames | `#af88eb` | `#8762c6` | `violet` |

---

## Semantic color roles

For application UI (not just syntax).

| Role | bru-espresso | bru-latte |
|---|---|---|
| Success | `#75b938` (green) | `#489100` (green) |
| Info | `#4695f7` (blue) | `#0072d4` (blue) |
| Warning | `#dbb32d` (yellow) | `#ad8900` (yellow) |
| Danger / Error | `#fa5750` (red) | `#d2212d` (red) |
| Accent / Focus | `#41c7b9` (teal) | `#009c8f` (teal) |
| Emphasis | `#af88eb` (violet) | `#8762c6` (violet) |
| Highlight | `#ed8649` (orange) | `#c25d1e` (orange) |
| Special | `#f275be` (magenta) | `#ca4898` (magenta) |

---

## CSS custom properties

Drop-in block for any web project.

```css
:root {
  /* bru-espresso (dark) — default */
  --bru-bg:        #1c1814;
  --bru-bg-soft:   #26211c;
  --bru-bg-hi:     #322b23;
  --bru-border:    #3a332b;
  --bru-fg:        #f5e8c7;
  --bru-fg-alt:    #fbf3db;
  --bru-fg-muted:  #8a7f6f;

  --bru-yellow:    #dbb32d;
  --bru-orange:    #ed8649;
  --bru-red:       #fa5750;
  --bru-magenta:   #f275be;
  --bru-violet:    #af88eb;
  --bru-blue:      #4695f7;
  --bru-teal:      #41c7b9;
  --bru-green:     #75b938;
}

[data-theme="bru-latte"] {
  /* bru-latte (light) */
  --bru-bg:        #faf3e0;
  --bru-bg-soft:   #f3ead0;
  --bru-bg-hi:     #ece3cc;
  --bru-border:    #e0d4b0;
  --bru-fg:        #3a2f22;
  --bru-fg-alt:    #2d241a;
  --bru-fg-muted:  #8a7f6f;

  --bru-yellow:    #ad8900;
  --bru-orange:    #c25d1e;
  --bru-red:       #d2212d;
  --bru-magenta:   #ca4898;
  --bru-violet:    #8762c6;
  --bru-blue:      #0072d4;
  --bru-teal:      #009c8f;
  --bru-green:     #489100;
}

/* Optional: auto-switch with system preference */
@media (prefers-color-scheme: light) {
  :root:not([data-theme]) {
    --bru-bg:        #faf3e0;
    --bru-bg-soft:   #f3ead0;
    --bru-bg-hi:     #ece3cc;
    --bru-border:    #e0d4b0;
    --bru-fg:        #3a2f22;
    --bru-fg-alt:    #2d241a;
    --bru-fg-muted:  #8a7f6f;
    --bru-yellow:    #ad8900;
    --bru-orange:    #c25d1e;
    --bru-red:       #d2212d;
    --bru-magenta:   #ca4898;
    --bru-violet:    #8762c6;
    --bru-blue:      #0072d4;
    --bru-teal:      #009c8f;
    --bru-green:     #489100;
  }
}
```

---

## JSON export

For theme build pipelines.

```json
{
  "name": "Bru",
  "version": "1.0",
  "variants": {
    "bru-espresso": {
      "type": "dark",
      "neutrals": {
        "bg":       "#1c1814",
        "bg-soft":  "#26211c",
        "bg-hi":    "#322b23",
        "border":   "#3a332b",
        "fg":       "#f5e8c7",
        "fg-alt":   "#fbf3db",
        "fg-muted": "#8a7f6f"
      },
      "accents": {
        "yellow":  "#dbb32d",
        "orange":  "#ed8649",
        "red":     "#fa5750",
        "magenta": "#f275be",
        "violet":  "#af88eb",
        "blue":    "#4695f7",
        "teal":    "#41c7b9",
        "green":   "#75b938"
      },
      "ansi": {
        "black":          "#1c1814",
        "red":            "#fa5750",
        "green":          "#75b938",
        "yellow":         "#dbb32d",
        "blue":           "#4695f7",
        "magenta":        "#f275be",
        "cyan":           "#41c7b9",
        "white":          "#f5e8c7",
        "bright_black":   "#3a332b",
        "bright_red":     "#ff665c",
        "bright_green":   "#84c747",
        "bright_yellow":  "#ebc13d",
        "bright_blue":    "#58a3ff",
        "bright_magenta": "#ff84cd",
        "bright_cyan":    "#53d6c7",
        "bright_white":   "#fbf3db"
      }
    },
    "bru-latte": {
      "type": "light",
      "neutrals": {
        "bg":       "#faf3e0",
        "bg-soft":  "#f3ead0",
        "bg-hi":    "#ece3cc",
        "border":   "#e0d4b0",
        "fg":       "#3a2f22",
        "fg-alt":   "#2d241a",
        "fg-muted": "#8a7f6f"
      },
      "accents": {
        "yellow":  "#ad8900",
        "orange":  "#c25d1e",
        "red":     "#d2212d",
        "magenta": "#ca4898",
        "violet":  "#8762c6",
        "blue":    "#0072d4",
        "teal":    "#009c8f",
        "green":   "#489100"
      },
      "ansi": {
        "black":          "#3a2f22",
        "red":            "#d2212d",
        "green":          "#489100",
        "yellow":         "#ad8900",
        "blue":           "#0072d4",
        "magenta":        "#ca4898",
        "cyan":           "#009c8f",
        "white":          "#faf3e0",
        "bright_black":   "#8a7f6f",
        "bright_red":     "#cc1729",
        "bright_green":   "#428b00",
        "bright_yellow":  "#a78300",
        "bright_blue":    "#006dce",
        "bright_magenta": "#c44392",
        "bright_cyan":    "#00978a",
        "bright_white":   "#2d241a"
      }
    }
  }
}
```

---

## Attribution

Accent hue values derived from [Selenized](https://github.com/jan-warchol/selenized) by Jan Warchol (MIT License), which is itself a redesign of [Solarized](https://ethanschoonover.com/solarized/) by Ethan Schoonover (MIT License). Background warmth, naming, and semantic mapping are original to Bru.

---

## Changelog

- **v1.0** — Initial release as Bru. Renamed from "Solarized Espresso/Latte" working title. Finalized warm espresso dark and sepia latte light variants with Selenized-derived accents.
