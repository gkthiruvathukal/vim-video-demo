# vim-video-demo

A self-contained demo video showing common vim commands, produced with
[VHS](https://github.com/charmbracelet/vhs) so the recording is fully
reproducible from a plain-text script.

## What the demo covers

| Section | Commands shown |
|---------|---------------|
| Open editor | `vim -u NONE <file>` |
| Insert mode | `i`, type text, `Esc` |
| Save | `:w` |
| Find & replace | `:%s/ipsum/epsum/g` |
| Undo | `u` |
| Word navigation | `w` (forward one word), `b` (backward one word) |
| Delete a word | `dw` |
| Line jumps | `0` (line start), `$` (line end) |
| Delete a line | `dd` |
| Yank & paste | `yy`, `p` |
| File jumps | `gg` (top), `G` (bottom) |
| Quit | `:q!` |

Keystroke visibility is provided by vim's built-in `showcmd` option
(`:set showcmd`), which displays the current normal-mode key sequence in the
bottom-right corner of the screen. Each section is preceded by an `:echo`
caption so viewers know what to watch for.

## Prerequisites

- [VHS](https://github.com/charmbracelet/vhs) — `brew install vhs` on macOS
- `vim` (any version; the script uses `-u NONE` so your `~/.vimrc` is ignored)
- `ffmpeg` (VHS requires it for MP4 output) — `brew install ffmpeg`

## Producing the video

```bash
vhs lorem-ipsum-demo.tape
```

This writes `lorem-ipsum-demo.mp4` to the current directory.

## Files

```
.
├── README.md               # this file
└── lorem-ipsum-demo.tape   # VHS script
```

`lorem-ipsum-demo.mp4` is the output artifact and is not committed.

## Extending the demo

The tape script is organized into clearly labeled sections separated by
comments (`# ─── Section name ───`). To add a new section:

1. Add a caption line:
   ```
   Type ":echo '--- Your section title ---'"
   Enter
   Sleep 2s
   ```
2. Add the keystrokes for that section, with `Sleep 600ms`–`800ms` between
   each keystroke so motion is visible.
3. End with a `u` undo if you want to keep the buffer clean for the next
   section.

### Tuning pacing

| Setting | Effect |
|---------|--------|
| `Set TypingSpeed` | Milliseconds between each character typed |
| `Sleep` after `:echo` | How long the caption stays visible (currently 2s) |
| `Sleep` between keystrokes | Pause between individual normal-mode commands |

### Changing the look

Edit the header block at the top of the tape:

```
Set Width 1200
Set Height 600
Set FontSize 18
Set Theme "Dracula"
```

VHS supports any theme from the
[Glamour theme list](https://github.com/charmbracelet/glamour/tree/master/styles).
Common alternatives: `"Tokyo Night"`, `"Catppuccin Mocha"`, `"One Dark"`.

### Using a different editor

The script uses `vim -u NONE` for a clean, config-free start. To adapt it:

- **Neovim**: replace `vim -u NONE` with `nvim -u NONE`
- **Your normal config**: replace `vim -u NONE` with `vim` (startup may be
  slower; increase the initial `Sleep` accordingly)
- **A different editor entirely**: replace the open command and adjust the
  keystroke sections to match that editor's keybindings

## Agent / automation notes

This repo was scaffolded with [Claude Code](https://claude.ai/code). The tape
script and README were generated from a plain-English list of desired demo
sections. To continue development with an AI agent:

- Describe new sections in plain English and ask the agent to append them to
  `lorem-ipsum-demo.tape` following the existing section pattern.
- The agent should run `vhs lorem-ipsum-demo.tape` after edits to verify the
  output renders without errors.
- Keep sections short and undoable (`u` after destructive commands) so the
  buffer stays predictable throughout the recording.
