Output build/lorem-ipsum-demo.mp4

Set Width 1200
Set Height 600
Set FontSize 18
Set TypingSpeed 120ms
Set Theme "Dracula"

# ─── Open vim ────────────────────────────────────────────────────────────────

Type "vim -u NONE lorem-ipsum-demo.txt"
Enter
Sleep 1500ms

# Enable showcmd so normal-mode keystrokes appear in the bottom-right corner
Type ":set showcmd"
Enter
Sleep 800ms

# ─── Section: Insert mode ────────────────────────────────────────────────────

Type ":echo '--- Insert mode: press i to start typing ---'"
Enter
Sleep 2s

Type "i"
Sleep 400ms

Type "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
Enter
Type "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
Enter
Enter
Type "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris."
Enter
Type "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum."
Escape
Sleep 800ms

# ─── Save ────────────────────────────────────────────────────────────────────

Type ":w"
Enter
Sleep 1s

# ─── Section: Find & replace ─────────────────────────────────────────────────

Type ":echo '--- Find and replace: :%s/ipsum/epsum/g ---'"
Enter
Sleep 2s

Type ":%s/ipsum/epsum/g"
Enter
Sleep 1500ms

Type ":echo '--- Undo with: u ---'"
Enter
Sleep 2s

Type "u"
Sleep 1s

# ─── Section: Word navigation ────────────────────────────────────────────────

Type ":echo '--- Word navigation: w (forward one word), b (backward) ---'"
Enter
Sleep 2s

Type "gg"
Sleep 600ms

Type "w"
Sleep 600ms
Type "w"
Sleep 600ms
Type "w"
Sleep 600ms
Type "w"
Sleep 600ms
Type "w"
Sleep 800ms

Type ":echo '--- Moving back with b ---'"
Enter
Sleep 2s

Type "b"
Sleep 600ms
Type "b"
Sleep 600ms
Type "b"
Sleep 800ms

# ─── Section: Delete a word ──────────────────────────────────────────────────

Type ":echo '--- Delete a word: dw ---'"
Enter
Sleep 2s

Type "dw"
Sleep 1200ms

Type ":echo '--- Undo: u ---'"
Enter
Sleep 2s

Type "u"
Sleep 1s

# ─── Section: Start / end of line ────────────────────────────────────────────

Type ":echo '--- Jump to start/end of line: 0 and $ ---'"
Enter
Sleep 2s

Type "$"
Sleep 800ms
Type "0"
Sleep 800ms

# ─── Section: Delete a line ──────────────────────────────────────────────────

Type ":echo '--- Delete entire line: dd ---'"
Enter
Sleep 2s

Type "dd"
Sleep 1200ms

Type ":echo '--- Undo: u ---'"
Enter
Sleep 2s

Type "u"
Sleep 1s

# ─── Section: Yank and paste ─────────────────────────────────────────────────

Type ":echo '--- Copy (yank) a line: yy, then paste: p ---'"
Enter
Sleep 2s

Type "yy"
Sleep 800ms
Type "p"
Sleep 1200ms

Type "u"
Sleep 800ms

# ─── Section: Jump top / bottom ──────────────────────────────────────────────

Type ":echo '--- Jump to top: gg, bottom: G ---'"
Enter
Sleep 2s

Type "G"
Sleep 800ms
Type "gg"
Sleep 800ms

# ─── Quit ────────────────────────────────────────────────────────────────────

Type ":echo '--- Quit without saving: :q! ---'"
Enter
Sleep 2s

Type ":q!"
Enter
Sleep 1s

# ─── Section: Terminal output ─────────────────────────────────────────────────

Type "cat lorem-ipsum-demo.txt"
Enter
Sleep 2s

Type "wc -l lorem-ipsum-demo.txt"
Enter
Sleep 1500ms

Type "wc -w lorem-ipsum-demo.txt"
Enter
Sleep 1500ms

Type "grep -o 'Lorem' lorem-ipsum-demo.txt | wc -l"
Enter
Sleep 1500ms

Sleep 500ms
