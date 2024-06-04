-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Undo files location
vim.opt.undodir = '$NVIMRC/.undo/nvim//,/tmp//'

-- Swap files location
vim.opt.directory = '$NVIMRC/.swap//,/tmp//'

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true -- 'stl:\ ,stlnc:\ ,vert:\ ,fold:\ ,diff:- '
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- [[ CLEM ]]

-- Set cursor as block
vim.opt.guicursor = 'n-v-c-i:block'

-- Shift and Tab width in spaces
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Simulate tabs for backspaces
vim.opt.softtabstop = 4

-- Indent to the nearest tab mark
vim.opt.shiftround = true

-- Disable shell access
vim.opt.secure = true

-- Screen line wrapping
vim.opt.wrap = false

-- Dictionary Location
vim.opt.spellfile = '$NVIMRC/.spell/custom.utf-8.add'

-- Lang for spellcheck
vim.opt.spelllang = 'en,fr'

-- Dictionary completion C-X C-K
vim.opt.dictionary = 'spell,/usr/share/dict/words'

-- Insert spaces instead tab
vim.opt.expandtab = true

-- :find path
vim.opt.path = '.,,$NVIMRC/init/,$NVIMRC/plugin/'

-- vim: ts=2 sts=2 sw=2 et
