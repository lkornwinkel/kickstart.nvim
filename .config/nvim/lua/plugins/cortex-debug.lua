return {
  'jedrzejboczar/nvim-dap-cortex-debug',
  dependencies = {
    'mfussenegger/nvim-dap'
  },

  config = function()
    require('dap-cortex-debug').setup({
      debug = false,
      extension_path = nil,
      lib_extension = nil,
      node_path = 'node',
      depui_rtt = true,
      dap_vscode_filetypes = { 'c', 'cpp' },
      rtt = {
        buftype = 'Terminal',
      },
    })
  end
}

