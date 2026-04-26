---@type MonokaiPro.PluginSpec
return {
  name = "preservim/nerdtree",
  lazy = { module = "nerdtree" },

  highlights = function(c, config)
    local isBackgroundClear = vim.tbl_contains(config.background_clear or {}, "nerdtree")
    local sidebar_bg = isBackgroundClear and c.editor.background or c.sideBar.background
    -- stylua: ignore
    return {
      NERDTreeDir          = { fg = c.base.blue, bg = sidebar_bg },
      NERDTreeDirSlash     = { fg = c.base.blue, bg = sidebar_bg },
      NERDTreeOpenable     = { fg = c.sideBar.foreground, bg = sidebar_bg },
      NERDTreeClosable     = { fg = c.sideBar.foreground, bg = sidebar_bg },
      NERDTreeFile         = { fg = c.sideBar.foreground, bg = sidebar_bg },
      NERDTreeExecFile     = { fg = c.base.green, bg = sidebar_bg },
      NERDTreeUp           = { fg = c.sideBar.foreground, bg = sidebar_bg },
      NERDTreeCWD          = { fg = c.sideBarSectionHeader.foreground, bg = sidebar_bg, bold = true },
      NERDTreeHelp         = { fg = c.base.dimmed3, bg = sidebar_bg },
      NERDTreeToggleOn     = { fg = c.base.green },
      NERDTreeToggleOff    = { fg = c.base.red },
      
      -- Syntax highlighting integration (if vim-nerdtree-syntax-highlight is used)
      NERDTreeFileHighlight = { bg = sidebar_bg },
      NERDTreeDirHighlight  = { bg = sidebar_bg },
    }
  end,
}
