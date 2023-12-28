-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ','

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Map Esc to kk
map('i', 'kk', '<Esc>')

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')

-- Toggle auto-indenting for code paste
map('n', '<F2>', ':set invpaste paste?<CR>')
vim.opt.pastetoggle = '<F2>'

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical

-- Move around splits using Ctrl + {h,j,k,l} and Ctrl + {left+up+down+right}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
map('n', '<C-s>', ':wa<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<C-q>', ':qa!<CR>')

-- NvimTree shortcuts

-- Toggle NvimTree with CTRL and n
map('n', '<C-n>', ':NvimTreeToggle<CR>')
-- Find file in NvimTree with CTRL and f
map('n', '<C-f>', ':NvimTreeFindFile<CR>')

-- Telescope shortcuts

-- Find files with CTRL and p
map('n', '<C-p>', ':Telescope find_files<CR>')
-- Find buffers with CTRL and b
map('n', '<C-b>', ':Telescope buffers<CR>')

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
map('n', '<leader>t', ':Term<CR>', { noremap = true })  -- open
map('t', '<Esc>', '<C-\\><C-n>')                    -- exit

-- Tagbar
map('n', '<leader>z', ':TagbarToggle<CR>')          -- open/close
