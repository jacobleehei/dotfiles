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
