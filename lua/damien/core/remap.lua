local ns = { noremap = true, silent = true }

-- Sets leader key to space
vim.g.mapleader = " "

-- Delete single character and throw it into the void
vim.keymap.set('n', 'x', '"_x')

-- Copys from system keyboard
vim.keymap.set('n', '<C-c>', '"+y')

-- gets me to normal mode quickly
vim.keymap.set('i', 'jj', '<Esc>', ns)

-- Splits
vim.keymap.set('n', '<leader>vs', ':vs<CR>')
vim.keymap.set('n', '<leader>hs', ':split<CR>')

-- Moving between splits
-- uses normal mode movements
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Mass move text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Insert line above or below
vim.keymap.set('n', 'o', 'o<Esc>')
vim.keymap.set('n', 'O', 'O<Esc>')

-- Page up and down with cursor in center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Serach terms stay in the center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- duplicate current line
vim.keymap.set('n', '<leader>dd', 'yyp', ns)
vim.keymap.set('n', '<leader>dd', 'yyp', ns)

-- Keeps cursor where line previously was when
-- appending the below line to a new one
vim.keymap.set("n", "J", "mzJ`z")

-- Keeps previously yanked text when pasting
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Grabs from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Please deleted text into the void register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Formats file
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)


-- Gives me a menu to search and replace the symbol of something
-- whole file
vim.keymap.set("n", "<leader>sf", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- single line
vim.keymap.set("n", "<leader>sl", [[:s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- This will remove all lines that start wth something
vim.keymap.set('n', '<leader>rl', [[:g/^<<C-r><C-w\>/d<Left><Left>]])
