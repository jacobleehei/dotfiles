require('plugin')
require('keymap')
require('cmd')
require('config')

require('lualine').setup {
  options = {
    theme = 'material'
  }
}

-- require("telescope").load_extension "file_browser"
require('telescope').setup {
  load_extension  = {
    "file_browser"
  },
  defaults = {
      file_ignore_patterns = {"node_modules", ".git", "dist", "**.DS_Store"},
      theme = 'dropdown',
      hidden = true,
  },
  extensions = {
    file_browser = {
      theme = 'dropdown',
      hidden = true,
      sorting_strategy = "ascending",
      path = vim.loop.cwd(),
      cwd = vim.loop.cwd(),
      cwd_to_path = false,
      grouped = false,
      files = true,
      add_dirs = false,
      depth = 3,
      auto_depth = false,
      select_buffer = false,
      respect_gitignore = vim.fn.executable "fd" == 1,
      no_ignore = false,
      follow_symlinks = false,
      browse_files = require("telescope._extensions.file_browser.finders").browse_files,
      browse_folders = require("telescope._extensions.file_browser.finders").browse_folders,
      hide_parent_dir = false,
      collapse_dirs = false,
      prompt_path = false,
      quiet = false,
      dir_icon = "",
      dir_icon_hl = "Default",
      display_stat = { date = true, size = true, mode = true },
      hijack_netrw = true,
      use_fd = true,
      git_status = true,
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

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argv(0) == "" then
      vim.api.nvim_command("Telescope file_browser")
    end
  end,
})
