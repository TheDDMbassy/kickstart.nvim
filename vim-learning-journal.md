# Learning and to-do journal

## Navigation
- <Ctrl-o> jumps backward in your jumplist
- <Ctrl-i> jumps forward in your jumplist
- m{a-z} sets a mark in the file, and `{a-z} will jump to that mark

## Macros
1. `q` to record
1. Press the key to symbolize the register you want to store the macro in, e.g. 'r' or '4'
1. Do your thing
1. Return to normal mode, press `q` to end the recording
1. Play the macro with `@<register>`, or `@@` to re-run the last macro you ran
    1. You can also end your macro by typing `@<register>`, to recursively call your macro for the whole file

## Running tests
- TO-DO

## Git navigation
- See the commit for a particular line in Git blame, either on GitHub or in a preview window

## Searching text
- `*` can be used to search for the word under your cursor
- `<leader> /` can be used to search in a preview, thanks to Telescope

## Formatting
- `<leader>f` is where the `conform` plugin maps the formatting keyboard shortcut

## Syntax highlighting
- Need a yaml syntax highlighter

## File creation and deletion
- Toggle the oil plugin with the minus '-' key
- To see the buffer ID, `set conceallevel=0`, helps for debugging

## LSP (Language Server Protocol) lessons
- Mason is the plugin you use for installing LSPs, and you can debug why it's not installing a particular plugin with `:checkhealth mason`
    - This is how you figured out why the TypeScript LSP wasn't installing -- the health check showed that node wasn't installed.
