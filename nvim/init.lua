require('plugin')
require('keymap')
require('cmd')
require('config')

require('lualine').setup {
  options = {
    theme = 'material'
  }
}

require('telescope').setup {
  defaults = {
    file_ignore_patterns = {"node_modules", ".git"},
  },
  pickers = {
    find_files = {
      theme = 'dropdown',
      hidden = true,
    }
  }
}

require('tailwind-sorter').setup {
  on_save_pattern = { '*.html', '*.jsx', '*.tsx' }
}

require('nvim-treesitter.configs').setup {
  ensure_installed = { "html", "css", "vim", "lua", "javascript", "typescript", "tsx", "java", "python", "gosum", "gomod", "c", "bash" },

  highlight = {
    enable = true,
  }
}
