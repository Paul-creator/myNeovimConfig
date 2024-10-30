return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      texlab = {
        settings = {
          texlab = {
            build = {
              executable = "latexmk", -- Use latexmk for building
              args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
              onSave = true, -- Build on save
            },
            forwardSearch = {
              executable = "open", -- Use `open` to launch Skim
              args = {
                "-a",
                "Skim", -- Open with Skim
                "--args",
                "%p",
                "-g",
                "-r",
                "%l:1:%f", -- SyncTeX forward search arguments
              },
            },
            chktex = { onOpenAndSave = true }, -- Enable linting
          },
        },
      },
    },
  },
}
