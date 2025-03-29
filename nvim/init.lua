require("config.lazy")
-- set line numbers and relative line numbers
vim.opt.relativenumber = true
vim.opt.number = true
-- the thing where it has a margin of 10 lines on top and bottom
vim.opt.scrolloff = 10

vim.diagnostic.config({ virtual_text = true })
-- disabling arrow keys
vim.keymap.set('i', '<left>', '<cmd>echo "n00b"<CR>')
vim.keymap.set('i', '<right>', '<cmd>echo "n00b"<CR>')
vim.keymap.set('i', '<up>', '<cmd>echo "n00b"<CR>')
vim.keymap.set('i', '<down>', '<cmd>echo "n00b"<CR>')
-- disabling arrow keys
vim.keymap.set('n', '<left>', '<cmd>echo "n00b"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "n00b"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "n00b"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "n00b"<CR>')

--undo file
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

