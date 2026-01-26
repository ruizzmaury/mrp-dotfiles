# mrp-dotfiles

Minimal dotfiles for macOS.

## Principles

- This repo contains the real files (with one macOS exception)
- `$HOME` only contains symlinks
- Nothing from `Library/` is committed **except Ghostty (see below)**
- No GNU Stow, no magic, no indirection

The repository intentionally mirrors `$HOME`.

---

## Structure

```
mrp-dotfiles/
├── .config/
│   ├── nvim/
│   └── ghostty/
│       └── config -> ~/Library/Application Support/com.mitchellh.ghostty/config
├── .tmux.conf
└── README.md
```

---

## Setup

Clone the repository:

```bash
git clone git@github.com:youruser/mrp-dotfiles.git ~/dev/mrp-dotfiles
cd ~/dev/mrp-dotfiles
```

Link `.config`:

```bash
ln -s ~/dev/mrp-dotfiles/.config ~/.config
```

Link tmux config:

```bash
ln -s ~/dev/mrp-dotfiles/.tmux.conf ~/.tmux.conf
```

---

## Ghostty (macOS only, special case)

On macOS, Ghostty **cannot follow symlinks that escape**
`~/Library/Application Support`.

For this reason, the **real config file must live inside Library**,
and the repo tracks it via a reverse symlink.

### Setup Ghostty config

```bash
mkdir -p "$HOME/Library/Application Support/com.mitchellh.ghostty"

# move the real config into Library
mv ~/.config/ghostty/config \
  "$HOME/Library/Application Support/com.mitchellh.ghostty/config"

# point the repo back to it
ln -s "$HOME/Library/Application Support/com.mitchellh.ghostty/config" \
  ~/.config/ghostty/config
```

After editing the config, **fully restart Ghostty** (it does not hot-reload).

---

## Sanity check

```bash
nvim
tmux new -s dev
ghostty
```

If all three work, the setup is correct.
