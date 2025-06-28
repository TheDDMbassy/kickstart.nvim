# Learning and to-do journal

## Navigation

- Ctrl-o jumps backward in your jumplist
- Ctrl-i jumps forward in your jumplist
- m{a-z} sets a mark in the file, and `{a-z} will jump to that mark

## Macros

1. `q` to record
2. Press the key to symbolize the register you want to store the macro in, e.g. 'r' or '4'
3. Do your thing
4. Return to normal mode, press `q` to end the recording
5. Play the macro with `@<register>`, or `@@` to re-run the last macro you ran
6. NOTE: You can also end your macro by typing `@<register>`, to recursively call your macro for the whole file
7. View all macros by entering command mode + "registers" or "reg" for short.

## Marks

Command     | Description
ma          |  set mark a at current cursor location
'a          |  jump to line of mark a (first non-blank character in line)
`a          |  jump to position (line and column) of mark a
d'a         |  delete from current line to line of mark a
d`a         |  delete from current cursor position to position of mark a
c'a         |  change text from current line to line of mark a
y`a         |  yank text to unnamed buffer from cursor to position of mark a
:marks      |  list all the current marks
:marks aB   |  list marks a, B

## Tests

- TODO: Run the tests from a file/line
- TODO: Open the test for the current file

## Git navigation

- TODO: See the commit for a particular line in Git blame, either on GitHub or in a preview window
- TODO: Show git history of current file in descending chronological order

## Searching text

- `*` can be used to search for the word under your cursor
- `<leader> /` can be used to search in a preview, thanks to Telescope

## Formatting

- `<leader>f` is where the `conform` plugin maps the formatting keyboard shortcut
- TODO: Saving a markdown file should trim trailing whitespace

## Syntax highlighting

-

## File creation and deletion

- Toggle the oil plugin with the minus '-' key
- To see the buffer ID, `:set conceallevel=0`, helps for debugging

## LSP (Language Server Protocol) lessons

- Mason is the plugin you use for installing LSPs, and you can debug why it's not installing a particular plugin with `:checkhealth mason`
  - (This is how you figured out why the TypeScript LSP wasn't installing -- the health check showed that node wasn't installed.)
- TODO: Figure out how to stop Lsp to see if it speeds up Rails development in screenings_app
- TODO: Figure out how to get LSP working in the property_app (not in apm_bundle)

## General wishlist

- TODO: Figure out how to yank the relative path of the current file in the buffer, so that you can paste file names more easily with your coworkers.
- TODO: Figure out how to install Copilot and use it occasionally
- TODO: Figure out triple backticks syntax, useful for commit messages

## Useful commands

- `:TodoQuickFix`
- `:TodoTelescope`
- `:LspInfo`
- `:LspStop`

## Preferred colorschemes

- TODO: Turn these into a specific-colors-for-filetype kind of thing

- { :rose-pine => [
      '.lua',
    ]
  }
- { :everforest => [
      '.rb',
    ]
  }
