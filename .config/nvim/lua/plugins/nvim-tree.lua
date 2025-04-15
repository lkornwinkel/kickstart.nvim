-- File Explorer / Tree
return {
  -- https://github.com/nvim-tree/nvim-tree.lua
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    -- https://github.com/nvim-tree/nvim-web-devicons
    'nvim-tree/nvim-web-devicons', -- Fancy icon support
  },
  opts = {
--    hijack_directories.enable = false
    actions = {
      open_file = {
        window_picker = {
          enable = false
        },

        quit_on_open = true, -- Close the tree when opening a file
      },
    },

 --   renderer = {
 --     hijack_directories = {
 --       auto_open = false,
 --       enable = false,
 --     },
 --   },
  },

  config = function (_, opts)
    -- Recommended settings to disable default netrw file explorer
    vim.g.loaded_netrw = false
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup(opts)

  end
}

