if true then
  return {}
end

return {
  "neovim/nvim-lspconfig",
  init = function()
    require("lspconfig").omnisharp.setup({
      -- your other configuration options here
      on_attach = function(client)
        client.enable_editorconfig_support = false
      end,
    })
  end,
}
