# nvim-config
neovim config files

Configures a few basic plugins + LSP. Based on lazy.

Put together from lazy docs, [Typecraft's amazing tutorials/videos](https://typecraft.dev/neovim-for-newbs), and many, many forum/reddit/etc posts.
Thank you to all the people who've taken the time to post their fixes, hacks,
solutions, and how-to guides - y'all the real heros.

Keybinds of note:
<C-p> File find (via Telescope)

LSP keybinds:
gd: goto Def in current window pane
gD: goto Def in new tab

NOTES:
- Must install language servers and add them to path.
- Requires nvim v0.10 or greater (b/c treesitter)
- Initial start on new machine requires installing Treesitter parsers for each language
  (i.e., run `:TSInstall \[language_name\]`; e.g., `:TSInstall c` or `:TSInstall python`)
- clangd requires a `compile_commands.json` file to analyze code; file must be
manually created through CMake for each project; see [this guide](https://gist.github.com/Strus/042a92a00070a943053006bf46912ae9).
