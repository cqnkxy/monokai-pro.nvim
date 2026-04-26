---@type MonokaiPro.PluginSpec
return {
  name = "folke/which-key.nvim",
  lazy = { module = "which-key" },

  highlights = function(c, config)
    local is_clear = vim.tbl_contains(config.background_clear or {}, "which-key")
    local whichkey_bg = c.float.background
    local whichkey_border = c.float.border
    local transparent_bg = c.editor.background

    -- stylua: ignore
    return {
      WhichKey          = { fg = c.base.blue },
      WhichKeySeperator = { fg = c.base.red },
      WhichKeyGroup     = { fg = c.base.magenta },
      WhichKeyDesc      = { fg = c.base.yellow },
      WhichKeyNormal    = { bg = is_clear and transparent_bg or whichkey_bg },
      WhichKeyBorder    = { bg = is_clear and transparent_bg or whichkey_bg, fg = is_clear and c.base.dimmed3 or whichkey_border },
    }
  end,
}
