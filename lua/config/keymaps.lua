-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local key = vim.keymap
key.set("i", "jk", "<ESC>")
key.set("i", "<C-e>", "<Esc>A")
key.set("i", "<C-a>", "<Esc>I")
key.set("i", "<C-q>", "<++>")

key.set("n", "<leader>o", "/<++><CR><cmd>nohl<CR>c4l", { desc = "Next placeholder" })
key.set("n", "<leader>i", "?<++><CR><cmd>nohl<CR>c4l", { desc = "Previous placeholder" })
key.set("n", "<leader>nh", "<cmd>nohl<CR>", { desc = "No highlight" })

-- easy way to go the the end of a line
key.set("n", "<leader>e", "$", { desc = "End of line" })
key.set("v", "<leader>e", "$", { desc = "End of line" })
key.set("n", "<leader>a", "0", { desc = "Start of line" })
key.set("v", "<leader>a", "0", { desc = "Start of line" })

-- disable avante's keymaps
key.del("n", "<leader>ad")
key.del("n", "<leader>af")
key.del("n", "<leader>ah")
key.del("n", "<leader>aR")
key.del("n", "<leader>as")
key.del("n", "<leader>at")

-- set <leader>ua to avante
key.set("n", "<leader>ua", "<cmd>AvanteAsk<CR>", { desc = "Avante ask" })

-- 窗口切换
key.set("n", "<leader>h", "<C-w>h", { desc = "Move to left window" })
key.set("n", "<leader>j", "<C-w>j", { desc = "Move to down window" })
key.set("n", "<leader>k", "<C-w>k", { desc = "Move to up window" })
key.set("n", "<leader>l", "<C-w>l", { desc = "Move to right window" })

-- ; to :
key.set("n", ";", ":")

-- window resize
key.set("n", "<up>", "<cmd>res +2<CR>")
key.set("n", "<down>", "<cmd>res -2<CR>")
key.set("n", "<left>", "<cmd>vertical resize -2<CR>")
key.set("n", "<right>", "<cmd>vertical resize +2<CR>")

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
key.set("n", "tu", "<cmd>tabnew<cr>", { desc = "New tab" })
key.set("n", "J", "<cmd>tabprevious<cr>", { desc = "Previous tab" })

key.set("v", "io", "<esc>")

-- terminal
key.set("n", "<leader>gt", "<cmd>vsplit term://fish<CR>")
key.set("t", "<C-s>", "<C-\\><C-n>")
