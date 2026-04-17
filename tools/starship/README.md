# bru for Starship

## Install

```bash
cp bru-espresso.toml ~/.config/starship.toml
```

Or merge into your existing config — the key bits are the `[palettes.bru-espresso]` table and `palette = "bru-espresso"` at the top.

## Switch to latte

Change the top-level palette line:

```toml
palette = "bru-latte"
```

Both palette tables are included in the same config file.

## What it shows

```
☕ ~/projects/bru   main !2 +1 ⇡1  ansible 2.17  go 1.23  42s
❯
```

- Bru bean ☕ as prompt identifier
- Directory in bru-blue, truncated to 3 segments
- Git branch in violet with status in yellow
- Language environments (Ansible, Go, Rust, Python, Nix) each in a distinct bru accent
- Kubernetes context in teal (disabled by default — set `disabled = false`)
- Command duration in muted when > 2s
- Success/error prompt symbol (`❯`) in yellow/red
