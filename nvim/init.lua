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
    file_ignore_patterns = {"node_modules", ".git", "dist", "**.DS_Store"},
    hidden = true,
  },
  pickers =  {
    find_files = {
      theme = 'dropdown',
    },
    live_grep = {
      theme = 'dropdown',
    },
    buffers = {
      theme = 'dropdown',
    },
    oldfiles = {
      theme = 'dropdown',
    },
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

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argv(0) == "" then
      vim.api.nvim_command("Telescope find_files")
    end
  end,
})
