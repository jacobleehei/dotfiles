-- <Nerdtree>-------------------
-- >> Basic settings
vim.g.NERDTreeChDirMode = 2  -- Change current folder as root

-- >> UI settings
vim.g.NERDTreeQuitOnOpen = 1   -- Close NERDtree when files were opened
vim.g.NERDTreeMinimalUI = 1    -- Start NERDTree in minimal UI mode (No help lines)
vim.g.NERDTreeDirArrows = 1    -- Display arrows instead of ASCII art in NERDTree
vim.g.NERDTreeChDirMode = 2    -- Change current working directory based on root directory in NERDTree
vim.g.NERDTreeShowHidden = 1   -- Show hidden files
vim.g.NERDTreeWinSize = 35     -- Initial NERDTree width
vim.g.NERDTreeAutoDeleteBuffer = 1  -- Auto delete buffer deleted with NerdTree
vim.g.NERDTreeIgnore = { '.pyc$', '.swp', '.swo', '__pycache__', '.DS_Store$', '.git$' }  -- Hide temp files in NERDTree

-- Customize icons on Nerdtree
vim.g.NERDTreeDirArrowExpandable = '▸'
vim.g.NERDTreeDirArrowCollapsible = '▾'
vim.opt.signcolumn = "yes"

-- Git Gutter
vim.g.gitgutter_async = 0
vim.g.gitgutter_max_signs = 2000
vim.opt.foldtext = 'gitgutter#fold#foldtext()'
vim.opt.signcolumn = 'yes'

vim.g.coc_global_extensions = {'coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier'}
