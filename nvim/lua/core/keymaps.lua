vim.g.mapleader = " "

local keymap = vim.keymap

-- 插入模式
keymap.set("i", "hh", "<ESC>") 

-- 视觉模式
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- 普通模式
-- 多窗口移动
keymap.set("n", "<A-h>", "<C-w>h")
keymap.set("n", "<A-j>", "<C-w>j")
keymap.set("n", "<A-k>", "<C-w>k")
keymap.set("n", "<A-l>", "<C-w>l")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- toggleterm
keymap.set("n", ":ToggleTerm", "<C-`>")
keymap.set("t", "<esc>", [[<C-\><C-n>]], {buffer = 0})

