-- Alias Harpoon
vim.api.nvim_set_keymap('n', '<C-q>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-a>', ':lua require("harpoon.mark").add_file()<CR>', { noremap = true })

-- Alias Unit Test Shortcut
vim.api.nvim_set_keymap('n', '<silent> <leader>t', ':TestNearest -v<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<silent> <leader>T', ':TestFile -v<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<silent> <leader>a', ':TestSuite -v<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<silent> <leader>l', ':TestLast -v<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<silent> <leader>g', ':TestVisit -v<CR>', { noremap = true })

-- Easy Navigating Between Windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

-- Go back and Center
vim.api.nvim_set_keymap('n', '<C-o>', '<C-o>zz', { noremap = true })

-- Open Vscode
vim.api.nvim_set_keymap('n', '<leader>code', ':!code .<CR>', { noremap = true })

-- Show Git Message
vim.api.nvim_set_keymap('n', '<C-m>', ':GitMessenger<CR>', { noremap = true })

-- Save file
vim.api.nvim_set_keymap('n', 'W', ':wa <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-s>', ':w <CR>', { noremap = true })

-- Copy selected text in visual mode and put it to search
vim.api.nvim_set_keymap('v', '*', 'y:let @/ = @"<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<silent> f', 'y:<C-U>CocSearch <C-R>0<CR>', { noremap = true })

-- Custom escape key
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', {})


-- <Lazygit>--------------------
vim.api.nvim_set_keymap('n', '<C-g>', ':LazyGit<CR>', { silent = true })

-- <Vimspector>-----------------
vim.api.nvim_set_keymap('n', '<Leader>dd', ':call vimspector#Launch()<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>de', ':call vimspector#Reset()<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dc', ':call vimspector#Continue()<CR>', { silent = true })

vim.api.nvim_set_keymap('n', '<Leader>dt', ':call vimspector#ToggleBreakpoint()<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dT', ':call vimspector#ClearBreakpoints()<CR>', { silent = true })

vim.api.nvim_set_keymap('n', '<Leader>dk', '<Plug>VimspectorRestart', {})
vim.api.nvim_set_keymap('n', '<Leader>dh', '<Plug>VimspectorStepOut', {})
vim.api.nvim_set_keymap('n', '<Leader>dl', '<Plug>VimspectorStepInto', {})
vim.api.nvim_set_keymap('n', '<Leader>dj', '<Plug>VimspectorStepOver', {})

-- <Telescope>------------------
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', {})

vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeFind<CR>', {})

vim.api.nvim_set_keymap('n', 'F', ':call CocAction("runCommand", "prettier.formatFile")<CR>', {})

vim.api.nvim_set_keymap('n', 'F', ':call CocAction("runCommand", "prettier.formatFile")<CR>', {})

-- Use <c-space> to trigger completion
if vim.fn.has('nvim') then
  vim.api.nvim_set_keymap('i', '<c-space>', 'coc#refresh()', { expr = true })
else
  vim.api.nvim_set_keymap('i', '<c-@>', 'coc#refresh()', { expr = true })
end

-- Make <CR> auto-select the first completion item and notify coc.nvim to format on enter
vim.api.nvim_set_keymap('i', '<cr>', 'pumvisible() ? coc#_select_confirm() : "<C-g>u<CR><c-r>=coc#on_enter()<CR>"', { expr = true })
vim.api.nvim_set_keymap('i', '<CR>', 'coc#pum#visible() ? coc#pum#confirm() : "<CR>"', { expr = true })

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of the current buffer in the location list
vim.api.nvim_set_keymap('n', '[g', '<Plug>(coc-diagnostic-prev)', { silent = true })
vim.api.nvim_set_keymap('n', ']g', '<Plug>(coc-diagnostic-next)', { silent = true })

-- GoTo code navigation
vim.api.nvim_set_keymap('n', 'gs', ':call CocAction("jumpDefinition", "split")<CR>', { silent = true })
vim.api.nvim_set_keymap('n', 'gv', ':call CocAction("jumpDefinition", "vsplit")<CR>', { silent = true })
vim.api.nvim_set_keymap('n', 'gd', ':call CocAction("jumpDefinition")<CR>', { silent = true })

vim.api.nvim_set_keymap('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
vim.api.nvim_set_keymap('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fo', '<cmd>CocList outline<cr>', { silent = true })

vim.api.nvim_set_keymap('n', 'K', ':call v:lua.show_documentation()<CR>', { silent = true })
-- Use tab for trigger completion with characters ahead and navigate
vim.api.nvim_set_keymap('i', '<TAB>', 'pumvisible() ? "<C-n>" : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', { expr = true })
vim.api.nvim_set_keymap('i', '<S-TAB>', 'pumvisible() ? "<C-p>" : "<C-h>"', { expr = true })

vim.api.nvim_set_keymap('n', '<leader>rn', '<Plug>(coc-rename)', {})
vim.api.nvim_set_keymap('x', '<leader>f', '<Plug>(coc-format-selected)', {})
vim.api.nvim_set_keymap('n', '<leader>f', '<Plug>(coc-format-selected)', {})
vim.api.nvim_set_keymap('x', '<leader>a', '<Plug>(coc-codeaction-selected)', {})
vim.api.nvim_set_keymap('n', '<leader>a', '<Plug>(coc-codeaction-selected)', {})

vim.api.nvim_set_keymap('n', '<leader>ac', '<Plug>(coc-codeaction)', {})
vim.api.nvim_set_keymap('n', '<leader>qf', '<Plug>(coc-fix-current)', {})

vim.api.nvim_set_keymap('x', 'if', '<Plug>(coc-funcobj-i)', {})
vim.api.nvim_set_keymap('o', 'if', '<Plug>(coc-funcobj-i)', {})
vim.api.nvim_set_keymap('x', 'af', '<Plug>(coc-funcobj-a)', {})
vim.api.nvim_set_keymap('o', 'af', '<Plug>(coc-funcobj-a)', {})
vim.api.nvim_set_keymap('x', 'ic', '<Plug>(coc-classobj-i)', {})
vim.api.nvim_set_keymap('o', 'ic', '<Plug>(coc-classobj-i)', {})
vim.api.nvim_set_keymap('x', 'ac', '<Plug>(coc-classobj-a)', {})
vim.api.nvim_set_keymap('o', 'ac', '<Plug>(coc-classobj-a)', {})

vim.api.nvim_set_keymap('n', '<C-s>', '<Plug>(coc-range-select)', { silent = true })
vim.api.nvim_set_keymap('x', '<C-s>', '<Plug>(coc-range-select)', { silent = true })

vim.api.nvim_set_keymap('n', ']h', '<Plug>(GitGutterNextHunk) zz', {})
vim.api.nvim_set_keymap('n', '[h', '<Plug>(GitGutterPrevHunk) zz', {})
vim.api.nvim_set_keymap('n', 'ghp', '<Plug>(GitGutterPreviewHunk)', {})
-- Mappings for CoCList
vim.api.nvim_set_keymap('n', '<space>a', ':<C-u>CocList diagnostics<CR>', { silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<space>e', ':<C-u>CocList extensions<CR>', { silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<space>c', ':<C-u>CocList commands<CR>', { silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<space>o', ':<C-u>CocList outline<CR>', { silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<space>s', ':<C-u>CocList -I symbols<CR>', { silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<space>j', ':<C-u>CocNext<CR>', { silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<space>k', ':<C-u>CocPrev<CR>', { silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<space>p', ':<C-u>CocListResume<CR>', { silent = true, nowait = true })

