# Adding multiple cursors in helix.
  - Use `Shift+c` to add a new cursor below the current one.
  - Or use Spliting Selection method.

# Spliting Selection.
  - `Alt+S` This splits the selection and creates multiple cursors.
  - Used when creating multiple cursors when not using select option.
  - Used when doing sorting operations.
  - Remove the multiple cursors with `,` keybinds.

# Find and Replace.
  - Steps:
      1. You first visual select portions of the text or entire code with `%` keybind.
      2. Press `s` and search for the word you want to replace.
      3. Replace the word and press `Return`.
      4. Remove Multiple cursors. 

# You can pipe things with shell commands.
  - You can use `:pipe <command>` with any unix command to do text manupulation.

# Pasting whole files contents in the current buffer.
  - Use `:read <file_name>` command to paste the whole contents of that file into the current buffer.

# Adding a list of numbers using Insert Register.
  - The insert register is accesed using `Ctrl+r` in insert mode.
  - Steps:
      1. Fist create multiple cursors using `Shift+c`.
      2. Go to Inset Mode.
      3. Press `Ctrl+r`
      4. Press `#` option for selection indices.
      5. Back to single cursor mode.
