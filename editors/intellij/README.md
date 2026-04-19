# bru for IntelliJ / JetBrains IDEs

Two variants: **Bru Espresso** (dark) and **Bru Latte** (light).

Works with all JetBrains IDEs: IntelliJ IDEA, PyCharm, WebStorm, GoLand, Rider, CLion, RubyMine, PhpStorm, etc.

## Install

### Import via Settings

1. Open **Settings** → **Editor** → **Color Scheme**
2. Click the gear icon → **Import Scheme**
3. Select `bru-espresso.icls` or `bru-latte.icls`
4. Apply and close

### Manual

Copy the `.icls` files into your IDE's colors directory:

```bash
# Find your config directory (varies by IDE and version)
# Linux
cp editors/intellij/bru-espresso.icls ~/.config/JetBrains/IntelliJIdea*/colors/
cp editors/intellij/bru-latte.icls    ~/.config/JetBrains/IntelliJIdea*/colors/

# macOS
cp editors/intellij/bru-espresso.icls ~/Library/Application\ Support/JetBrains/IntelliJIdea*/colors/
cp editors/intellij/bru-latte.icls    ~/Library/Application\ Support/JetBrains/IntelliJIdea*/colors/
```

Restart the IDE, then select the scheme in **Settings** → **Editor** → **Color Scheme**.
