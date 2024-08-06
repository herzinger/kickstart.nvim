-- Set <space> as the leader key
-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- for brevity
local keymap = vim.keymap

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- TIP: Disable arrow keys in normal mode
keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Manage Tabs
keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', { desc = '[T]ab [O]pen' })
keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = '[T]ab close (e[X]it)' })
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', { desc = '[T]ab [N]ext' })
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', { desc = '[T]ab [P]rev' })
keymap.set('n', '<leader>t%', '<cmd>tabnew %<CR>', { desc = '[T]ab [%] (current buffer)' })

-- Manage split windows
keymap.set('n', '<leader>wv', '<C-w>v', { desc = 'Split [W]indow [V]ertically' })
keymap.set('n', '<leader>wh', '<C-w>s', { desc = 'Split [W]indow [H]orizontally' })
keymap.set('n', '<leader>we', '<C-w>=', { desc = 'Make split [W]indows [E]qual size' })
keymap.set('n', '<leader>wx', '<cmd>close<CR>', { desc = 'Close split [W]indow (e[X]it)' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
