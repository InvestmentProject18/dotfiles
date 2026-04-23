# Vim Mastery Dotfiles

## Rules
- Arrow keys are disabled.
- Single j/k presses are limited to 1 per second.
- Use counts (e.g., 5j) or advanced motions to move.

## Essential Motions

### Vertical (Instead of j/k)
- } / { : Jump to next/previous empty line
- CTRL-u / CTRL-d : Scroll Up / Down half page
- gg / G : Start / End of file
- {num}G : Jump to line number
- H / M / L : Top / Middle / Bottom of screen
- {num}j / {num}k : Jump down/up by X lines

### Horizontal (Instead of h/l)
- w / b : Forward / Backward by word
- e / ge : End of word / Previous end of word
- H / L : Start / End of line
- f{char} / t{char} : Find/Until character on line
- ; / , : Repeat last f or t search

### Precision Editing
- ciw : Change inside word
- di( : Delete inside parentheses
- ca{ : Change around braces
- . : Repeat last edit
- o / O : Open line below / above
- A / I : Append at end / Insert at start of line
- r{char} : Replace single character

### Search and System
- * / # : Search for word under cursor
- /pattern : Search for text
- n / N : Next / Previous search result
- % : Jump between matching brackets
- CTRL-o / CTRL-i : Jump back / forward in history
- gd : Go to definition

## Emergency
Press <Space>h to toggle HardTime if required.