-- Plugins
vim.cmd([[
  call plug#begin('~/.vim/plugged')

  Plug 'nvim-telescope/telescope-symbols.nvim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'kdheepak/lazygit.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'jiangmiao/auto-pairs'
  Plug 'yuezk/vim-js'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug '~/my-prototype-plugin'
  Plug 'prisma/vim-prisma'
  Plug 'airblade/vim-gitgutter'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'rhysd/git-messenger.vim'
  Plug 'kaicataldo/material.vim', { 'branch': 'main' }
  Plug 'vim-test/vim-test'
  Plug 'ThePrimeagen/harpoon'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'laytan/tailwind-sorter.nvim', { 'do': 'cd formatter && npm i && npm run build' }
  Plug 'antoinemadec/FixCursorHold.nvim'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'tribela/vim-transparent'

  call plug#end()
]])
