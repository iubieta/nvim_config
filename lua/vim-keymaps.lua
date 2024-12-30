-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Lista de teclas de movimiento en modo normal
local keys = { 'h', 'j', 'k', 'l', 'w', 'b', 'e', '0', '$', 'gg', 'G'}

-- Iterar sobre las teclas y mapear Ctrl + tecla en modo insertar
for _, key in ipairs(keys) do
    vim.api.nvim_set_keymap('i', '<C-' .. key .. '>', '<C-o>' .. key, { noremap = true, silent = true })
end

-- Mapear Ctrl + z para deshacer en modo insertar
vim.api.nvim_set_keymap('i', '<C-z>', '<C-o>u', { noremap = true, silent = true })
-- Mapear Ctrl + z para deshacer en modo normal
vim.api.nvim_set_keymap('n', '<C-z>', 'u', { noremap = true, silent = true })
-- Mapear Ctrl + z para deshacer en modo visual
vim.api.nvim_set_keymap('v', '<C-z>', 'u', { noremap = true, silent = true })

-- Navegar entre ventanas
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

