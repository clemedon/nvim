-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- [[ CLEM ]]

-- Disable built-ins aliases
vim.keymap.set('n', 's', '<cmd>echo "Use \'cl\' instead."')
vim.keymap.set('n', 'x', '<cmd>echo "Use \'dl\' instead."<CR>')
vim.keymap.set('n', 'S', '<cmd>echo "Use \'cc\' instead."<CR>')
vim.keymap.set('n', 'X', '<cmd>echo "Use \'dh\' instead."<CR>')

-- Editing
vim.keymap.set('n', 'mw', '<cmd>write<CR>', { desc = 'Write' })
vim.keymap.set('n', 'mW', '<cmd>wall<CR>', { desc = 'Write all' })
vim.keymap.set('n', 'mq', '<cmd>quit<CR>', { desc = 'Quit' })
vim.keymap.set('n', 'mQ', '<cmd>qall<CR>', { desc = 'Quit all' })
vim.keymap.set('n', 'md', '<cmd>bn|bd#<CR>', { desc = 'Delete buffer' })

-- Navigation
vim.api.nvim_set_keymap('n', 'sf', ':fin<space>', { desc = 'Find file' })
vim.api.nvim_set_keymap('n', 'se', ':e<space>', { desc = 'Edit file' })
vim.api.nvim_set_keymap('n', 'sp', ':e #<CR>', { desc = 'Edit prev file' })
vim.api.nvim_set_keymap('n', 'sb', ':ls<CR>:b<space>', { desc = 'List buffers' })
vim.api.nvim_set_keymap('n', 'st', ':tag /', { desc = 'Jump to a tag' })
vim.api.nvim_set_keymap('n', 'sg', ':grep -r ', { desc = 'Grep' })

-- Function calls
-- vim.keymap.set('n', 'glbn', ':call toggle_nav#(":bnext", ":bprev")<CR>', { desc = '' })
-- vim.keymap.set('n', 'glln', ':call toggle_nav#(":lnext", ":lprev")<CR>', { desc = '' })
-- vim.keymap.set('n', 'glqn', ':call toggle_nav#(":cnext", ":cprev")<CR>', { desc = '' })
-- vim.keymap.set('n', 'glsy', ':call getsyntax#()<CR>', { desc = '' })

-- Internal commands
vim.keymap.set('n', 'gl', '<cmd>echo "Nop."')
vim.keymap.set('n', 'glcc', ':set cursorcolumn!<CR>', { desc = 'Cursor column' })
vim.keymap.set('n', 'glcd', ':cd %:h<CR>', { desc = 'Update global cd' })
vim.keymap.set('n', 'glcl', ':set cursorline!<CR>', { desc = 'Cursor line' })
vim.keymap.set('n', 'glhl', ':set hlsearch!<CR>', { desc = 'Highlight search' })
vim.keymap.set('n', 'gllc', ':lc %:h<CR>', { desc = 'Update local cd' })
vim.keymap.set('n', 'glli', ':set list!<CR>', { desc = 'Hidden chard' })
vim.keymap.set('n', 'glnu', ':set number!<CR>', { desc = 'Number' })
vim.keymap.set('n', 'glpd', ":put=strftime('%a %d %b %Y')<CR>", { desc = 'Print date' })
vim.keymap.set('n', 'glrn', ':set relativenumber!<CR>', { desc = 'Relative number' })
vim.keymap.set('n', 'glsb', ':set scrollbind!<CR>', { desc = 'Scroll bind' })
vim.keymap.set('n', 'glsc', ":exec ':set scrolloff=' . 999*(&scrolloff == 0)<CR>", { desc = 'Fixed center cursor' })
vim.keymap.set('n', 'glsp', ':set spell!<CR>', { desc = 'Spell' })
vim.keymap.set('n', 'glst', ':set startofline!<CR>', { desc = 'Start of line' })
vim.keymap.set('n', 'glts', ":put=strftime(' % y % m % d % H % M % S ')<CR>", { desc = 'Print timestamp' })
vim.keymap.set('n', 'glve', ':set virtualedit=all', { desc = 'Virtual edit' })

-- External commands
vim.keymap.set('n', 'glbc', 'V:!bc<CR>', { desc = 'Calculator' })
vim.keymap.set('n', 'glgs', ':silent %!gpg --quiet --symmetric --armor<CR>', { desc = 'GPG sym encrypt file' })
vim.keymap.set('n', 'glge', ':silent %!gpg --quiet --encrypt --armor --recipient $GPGID<CR>', { desc = 'GPG asym encrypt file' })
vim.keymap.set('n', 'glgd', ':silent %!gpg --quiet --decrypt<CR>', { desc = 'GPG decrypt file' })
vim.keymap.set('v', 'glgs', ':!gpg --symmetric --armor<CR>', { desc = 'GPG sym encrypt chunk' })
vim.keymap.set('v', 'glge', ':!gpg --encrypt --armor --recipient $GPGID<CR>', { desc = 'GPG asym encrypt chunk' })
vim.keymap.set('v', 'glgd', ':!gpg --decrypt<CR>', { desc = 'GPG decrypt chunk' })
vim.keymap.set('n', 'glgr', ':silent !gpgconf --kill gpg-agent<CR>:redraw!<CR>', { desc = 'GPG restart agent' })

-- Window commands
vim.keymap.set('n', '<leader>w', '<C-W>', { noremap = true, desc = 'Window commands' })
vim.keymap.set('n', '<leader>wM', '<C-W>_|<C-W><bar>', { noremap = true, desc = 'Maximize window' })
vim.keymap.set('n', '<leader>wX', '<C-W>x|<C-W>_|<C-W><bar>', { noremap = true, desc = 'Swap windows' })
vim.keymap.set('n', '<leader>wE', ':resize <C-R>=&lines * 0.66<CR><CR>', { desc = 'Window increase height' })
vim.keymap.set('n', '<leader>we', ':vertical resize <C-R>=&columns * 0.66<CR><CR>', { desc = 'Window increase width' })
vim.keymap.set('n', '<S-Left>', '<C-W>5<', { desc = 'Window increase at left' })
vim.keymap.set('n', '<S-Up>', '<C-W>5+', { desc = 'Window increase at up' })
vim.keymap.set('n', '<S-Right>', '<C-W>5>', { desc = 'Window increase at right' })
vim.keymap.set('n', '<S-Down>', '<C-W>5-', { desc = 'Window increase at down' })

-- Improvements
vim.keymap.set('n', 'x', ':', { desc = 'Command line' })
vim.keymap.set('n', 'z,', 'z.15<C-e>', { noremap = true, desc = 'Eyes level cursor' })
vim.keymap.set('n', 'g8', '*N', { noremap = true, desc = 'Static search down' })
vim.keymap.set('n', 'g3', '#N', { noremap = true, desc = 'Static search up' })

vim.keymap.set('v', 'P', 'pgvy', { noremap = true, desc = 'Paste without yank' })
vim.keymap.set('n', '1s', '1z=', { desc = 'Spell suggestion 1' })
vim.keymap.set('n', '2s', '2z=', { desc = 'Spell suggestion 2' })
vim.keymap.set('i', '<C-q>', '<c-g>u<esc>[s1z=`]a<c-g>u', { noremap = true, desc = 'Spell suggestion 2' })

vim.keymap.set('n', '<leader>=', ":let view = winsaveview() | execute 'normal! gg=G' | call winrestview(view)<CR>", { desc = 'Indent file' })
vim.keymap.set(
  'n',
  '<leader>?',
  ":let view = winsaveview() | execute 'set nospell' | execute 'normal! ggg?G' | call winrestview(view)<CR>",
  { desc = 'Rot13 file' }
)

vim.keymap.set('i', 'jf', '<esc>', { noremap = true, desc = 'Esc' })
vim.keymap.set('i', 'fj', '<esc>', { noremap = true, desc = 'Esc' })
vim.keymap.set('c', '<C-u>', '<nop>', { noremap = true, desc = 'Prevent cmdline c-u deletion' })
vim.keymap.set('n', '<leader>y', ':call system("xclip -sel clip", getreg(\'"\'))<CR>', { desc = 'System clipboard paste' })

-- vim: ts=2 sts=2 sw=2 et
