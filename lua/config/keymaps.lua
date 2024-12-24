-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local key = vim.keymap
key.set("i", "jk", "<ESC>")
key.set("i", "<C-e>", "<Esc>A")
key.set("i", "<C-a>", "<Esc>I")
key.set("i", "<C-q>", "<++>")

key.set("n", "<leader>o", "/<++><CR><cmd>nohl<CR>c4l")
key.set("n", "<leader>i", "?<++><CR><cmd>nohl<CR>c4l")
key.set("n", "<leader>nh", "<cmd>nohl<CR>")

-- easy way to go the the end of a line
key.set("n", "<leader>e", "$")
key.set("v", "<leader>e", "$")
key.set("n", "<leader>a", "0")
key.set("v", "<leader>a", "0")

-- disable avante's keymaps
key.del("n", "<leader>ad")
key.del("n", "<leader>af")
key.del("n", "<leader>ah")
key.del("n", "<leader>aR")
key.del("n", "<leader>as")
key.del("n", "<leader>at")

-- set <leader>ua to avante
key.set("n", "<leader>ua", "<cmd>AvanteAsk<CR>")

-- 窗口切换
key.set("n", "<leader>h", "<C-w>h")
key.set("n", "<leader>j", "<C-w>j")
key.set("n", "<leader>k", "<C-w>k")
key.set("n", "<leader>l", "<C-w>l")

-- ; to :
key.set("n", ";", ":")

-- window resize
key.set("n", "<up>", "<cmd>res +2<CR>")
key.set("n", "<down>", "<cmd>res -2<CR>")
key.set("n", "<left>", "<cmd>vertical resize -2<CR>")
key.set("n", "<right>", "<cmd>vertical resize +2<CR>")

-- move lines
key.set("v", "J", "<cmd>m '>+1<CR>gv=gv")
key.set("v", "K", "<cmd>m '<-2<CR>gv=gv")

-- exit v mode
key.set("v", "io", "<ESC>")

-- better J K
key.set("n", "<C-j>", "5j")
key.set("n", "<C-k>", "5k")
key.set("v", "<C-j>", "5j")
key.set("v", "<C-k>", "5k")
key.set("n", "<C-h>", "8h")
key.set("n", "<C-l>", "8l")
key.set("v", "<C-h>", "8h")
key.set("v", "<C-l>", "8l")

-- tab
key.set("n", "tu", "<cmd>tabnew<cr>")
key.set("n", "J", "<cmd>tabprevious<cr>")

-- terminal
key.set("n", "<leader>gt", "<cmd>vsplit term://fish<CR>")
key.set("t", "<C-s>", "<C-\\><C-n>")
