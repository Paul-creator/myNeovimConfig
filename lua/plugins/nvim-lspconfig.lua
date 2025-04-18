return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      matlab_ls = {
        cmd = { "matlab-language-server", "--stdio" },
        filetypes = { "matlab" },
        root_dir = function(fname)
          local util = require("lspconfig.util")
          return util.find_git_ancestor(fname) or util.root_pattern("*.m")(fname) or vim.fn.getcwd()
        end,
        settings = {
          MATLAB = {
            indexWorkspace = true,
            installPath = "/Applications/$(ls /Applications | grep -i matlab)", -- Update this path to your MATLAB installation
            matlabConnectionTiming = "onStart",
            telemetry = false,
          },
        },
        single_file_support = true,
      },
    },
  },
}
