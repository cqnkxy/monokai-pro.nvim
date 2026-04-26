local colors = require("monokai-pro.colors")

---@type MonokaiPro.PluginSpec
return {
  name = "nvim-telescope/telescope.nvim",
  lazy = { module = { "telescope", "telescope.builtin" } },

  highlights = function(c, config)
    local is_clear = vim.tbl_contains(config.background_clear or {}, "telescope")

    local transparent_bg = c.editor.background
    local transparent_bg_border = c.float.border
    local result_bg = c.float.background
    local preview_bg = colors.blend(c.float.background, 0.8, c.base.black)
    local prompt_bg = colors.lighten(c.float.background, 5)
    local common_fg = c.editor.foreground

    -- stylua: ignore
    return {
      TelescopeSelection = {
        bg = c.list.activeSelectionBackground,
        bold = true,
      },

      TelescopeSelectionCaret = {
        bg = c.list.activeSelectionBackground,
        fg = c.base.blue,
      },

      TelescopeNormal = is_clear and { bg = c.editor.background, fg = common_fg } or { bg = result_bg, fg = common_fg },

      TelescopePromptCounter = { fg = c.base.red, bold = true },

      TelescopeBorder = is_clear and { bg = c.editor.background, fg = transparent_bg_border } or { bg = result_bg, fg = result_bg },

      TelescopeMatching = { fg = c.base.blue, bold = true },
      TelescopePreviewLine = { link = "TelescopeSelection" },

      -- Prompt
      TelescopePromptTitle = { bg = c.base.yellow, fg = c.base.black, bold = true },
      TelescopePromptNormal = is_clear and { bg = transparent_bg, fg = common_fg }             or { bg = prompt_bg, fg = common_fg },
      TelescopePromptBorder = is_clear and { bg = transparent_bg, fg = transparent_bg_border } or { bg = transparent_bg, fg = prompt_bg },
      TelescopePromptPrefix = { fg = c.base.cyan },

      -- Preview
      TelescopePreviewTitle = { bg = c.base.yellow, fg = c.base.black, bold = true },
      TelescopePreviewNormal = is_clear and { bg = transparent_bg, fg = common_fg }             or { bg = preview_bg, fg = common_fg },
      TelescopePreviewBorder = is_clear and { bg = transparent_bg, fg = transparent_bg_border } or { bg = transparent_bg, fg = preview_bg },

      -- Results
      TelescopeResultsTitle  = { bg = c.base.yellow, fg = c.base.black, bold = true },
      TelescopeResultsNormal = is_clear and { bg = transparent_bg, fg = common_fg }             or { bg = result_bg, fg = common_fg },
      TelescopeResultsBorder = is_clear and { bg = transparent_bg, fg = transparent_bg_border } or { bg = transparent_bg, fg = result_bg },
    }
  end,
}
