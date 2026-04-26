local colors = require("monokai-pro.colors")

---@type MonokaiPro.GroupSpec
return {
  name = "editor",

  highlights = function(scheme, config)
    local float_win_clear = vim.tbl_contains(config.background_clear or {}, "float_win")

    return {
      -- Basic editor highlights
      ColorColumn = { bg = scheme.base.dimmed5 },
      Conceal = { bg = scheme.editor.background, fg = scheme.base.dimmed3 },
      Cursor = { bg = scheme.base.white, fg = scheme.base.white },
      CursorColumn = { bg = scheme.editor.lineHighlightBackground },
      CursorLine = { bg = scheme.editor.lineHighlightBackground },
      CursorLineNr = {
        bg = scheme.editor.background,
        fg = scheme.editorLineNumber.activeForeground,
        bold = true,
      },
      CursorLineFold = { bg = scheme.editor.background, fg = scheme.base.white },

      -- Directory
      Directory = {
        fg = scheme.base.blue,
      },

      -- Diff highlights
      DiffAdd = {
        bg = scheme.diffEditor.insertedLineBackground,
        fg = scheme.diffEditorOverview.insertedForeground,
      },
      DiffChange = {
        bg = scheme.diffEditor.modifiedLineBackground,
        fg = scheme.diffEditorOverview.modifiedForeground,
      },
      DiffDelete = {
        bg = scheme.diffEditor.removedLineBackground,
        fg = scheme.diffEditorOverview.removedForeground,
      },
      DiffText = { bg = scheme.editor.background, fg = scheme.editor.foreground },

      -- Buffer end and errors
      EndOfBuffer = { fg = scheme.editor.background },
      ErrorMsg = { bg = scheme.editor.background, fg = scheme.inputValidation.errorForeground },

      -- Window separators
      VertSplit = { bg = scheme.editor.background, fg = scheme.base.black },
      WinSeparator = { fg = scheme.base.black },

      -- Folding
      Folded = { bg = scheme.editor.foldBackground },
      FoldColumn = { bg = scheme.editor.background, fg = scheme.editorLineNumber.activeForeground },

      -- Signs and line numbers
      SignColumn = { bg = scheme.editor.background },
      LineNr = { fg = scheme.editorLineNumber.foreground },

      -- Matching
      MatchParen = { fg = scheme.base.yellow, bold = true, underline = true },

      -- Messages
      ModeMsg = { link = "Normal" },
      MsgArea = { link = "ModeMsg" },
      MsgSeparator = { link = "ModeMsg" },
      MoreMsg = { fg = scheme.base.yellow },

      -- Non-text characters
      NonText = { fg = scheme.base.dimmed4 },

      -- Normal text
      Normal = { bg = scheme.editor.background, fg = scheme.editor.foreground },
      NormalNC = { bg = scheme.editor.background, fg = scheme.editor.foreground },

      -- Floating windows
      NormalFloat = {
        bg = float_win_clear and scheme.editor.background or scheme.float.background,
        fg = scheme.editor.foreground,
      },
      FloatBorder = {
        bg = float_win_clear and scheme.editor.background or scheme.float.background,
        fg = float_win_clear and scheme.base.dimmed3 or scheme.float.border,
      },
      FloatTitle = {
        bg = float_win_clear and scheme.editor.background or scheme.base.yellow,
        fg = float_win_clear and scheme.base.yellow or scheme.base.black,
        bold = true,
      },

      -- Popup menu
      Pmenu = {
        bg = float_win_clear and scheme.editor.background or scheme.float.background,
        fg = scheme.editor.foreground,
      },
      PmenuSel = {
        bg = colors.blend(scheme.base.yellow, 0.3, scheme.float.background),
        bold = true,
      },
      PmenuSbar = { bg = scheme.float.background },
      PmenuThumb = { bg = scheme.base.dimmed3 },

      -- Search
      Search = { bg = scheme.editor.findMatchHighlightBackground },
      IncSearch = config.inc_search == "underline" and {
        bg = scheme.editor.findMatchBackground,
        sp = scheme.editor.findMatchBorder,
        underline = true,
        bold = true,
      } or {
        bg = scheme.base.yellow,
        fg = scheme.base.black,
        bold = true,
      },

      -- Status line
      StatusLine = {
        bg = scheme.statusBar.background,
        fg = scheme.statusBar.activeForeground,
        reverse = false,
      },
      StatusLineNC = { bg = scheme.statusBar.background, fg = scheme.statusBar.foreground },
      StatusLineSeparator = { fg = scheme.statusBar.background },
      StatusLineTerm = { fg = scheme.statusBar.background },
      StatusLineTermNC = { fg = scheme.statusBar.background },

      -- Tab line
      Tabline = { bg = scheme.tab.inactiveBackground, fg = colors.blend(scheme.base.white, 0.6, scheme.tab.inactiveBackground) },
      TablineFill = { bg = scheme.editorGroupHeader.tabsBackground },
      TablineSel = { bg = scheme.tab.activeBackground, fg = scheme.tab.activeForeground },

      -- Title
      Title = { fg = scheme.base.yellow, bold = true },

      -- Visual mode
      Visual = { bg = scheme.editor.selectionBackground },
      VisualNOS = { link = "Visual" },

      -- Warnings
      WarningMsg = { fg = scheme.inputValidation.warningForeground },

      -- Whitespace
      Whitespace = { fg = scheme.base.dimmed4 },

      -- Git diff
      diffAdded = { fg = scheme.base.green },
      diffChanged = { fg = scheme.base.yellow },
      diffRemoved = { fg = scheme.base.red },
      diffFile = { fg = scheme.base.yellow },
      diffNewFile = { fg = scheme.base.yellow },
      diffLine = { fg = scheme.base.cyan },

      -- Spelling
      SpellBad = { fg = scheme.base.red, sp = scheme.base.red, undercurl = true },
      SpellCap = { fg = scheme.base.red, sp = scheme.base.red, undercurl = true },
      SpellLocal = { fg = scheme.base.red, sp = scheme.base.red, undercurl = true },
      SpellRare = { fg = scheme.base.red, sp = scheme.base.red, undercurl = true },

      -- Neovim health
      healthError = { fg = scheme.base.red },
      healthSuccess = { fg = scheme.base.green },
      healthWarning = { fg = scheme.base.blue },
    }
  end,
}
