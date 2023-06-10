{ ... }: {

    programs.nixvim.highlight = {

      # broadest && most general
          Comment = { fg = "#E0D561"; bg = "NONE"; };
          Constant = { fg = "#FF645A"; bg = "NONE"; };
          Cursor = { fg = "NONE"; bg = "NONE"; };
          TermCursor = { fg = "NONE"; bg = "NONE"; };
          Identifier = { fg = "#84F088"; bg = "NONE"; };
          Search = { fg = "#F5AE2E"; bg = "NONE"; };
          Statement = { fg = "#FF9269"; bg = "NONE"; };
          Title = { fg = "#C94234"; bg = "NONE"; };
          Visual = { fg = "#D0633D"; bg = "NONE"; };
          StatusLine = { fg = "#5FDAFF"; bg = "NONE"; };
          MatchParen = { fg = "#5FDAFF"; bg = "NONE"; };
          Special = { fg = "#F5AE2E"; bg = "NONE"; };
          Todo = { fg = "#F5AE2E"; bg = "NONE"; };
          Type = { fg = "#F6F7EC"; bg = "NONE"; };
          PreProc = { fg = "#509552"; bg = "NONE"; };
          Underlined = { fg = "#98E036"; bg = "NONE"; };
          Directory = { fg = "#98E036"; bg = "NONE"; };

          # errors && diagnostics
              Error = { fg = "#C94234"; bg = "NONE"; };
              ErrorMsg = { fg = "#C94234"; bg = "NONE"; };
              NvimInternalError = { fg = "#C94234"; bg = "NONE"; };
              DiagnosticError = { fg = "#C94234"; bg = "NONE"; };
              DiagnosticWarn = { fg = "#F5AE2E"; bg = "NONE"; };
              DiagnosticHint = { fg = "#F6F7EC"; bg = "NONE"; };
              DiagnosticInfo = { fg = "#F6F7EC"; bg = "NONE"; };

      # menus
          Pmenu = { fg = "#1398B9"; bg = "NONE"; };
          PmenuExtraSel = { fg = "NONE"; bg = "NONE"; };
          PmenuKindSel = { fg = "NONE"; bg = "NONE"; };
          PmenuSbar = { fg = "NONE"; bg = "NONE"; };
          PmenuSel = { fg = "#5FDAFF"; bg = "NONE"; };
          PmenuThumb = { fg = "NONE"; bg = "NONE"; };
          Scrollbar = { fg = "NONE"; bg = "NONE"; };
      
      # number line && signs
          LineNr = { fg = "#121418"; bg = "NONE"; };
          LineNrAbove = { fg = "#675F54"; bg = "NONE"; };
          LineNrBelow = { fg = "#675F54"; bg = "NONE"; };
          SignColumn = { fg = "NONE"; bg = "NONE"; };

      # non-breaking spaces, tab spaces, the nbsp between typed characters etc. also, the indent lines
          SpecialKey = { fg = "#675F54"; bg = "NONE"; };
          NonText = { fg = "#675F54"; bg = "NONE"; };

      # plugins
          #Noice
              NoicePopupmenuSelected = { fg = "NONE"; bg = "NONE"; };
              NoicePopupmenu = { fg = "NONE"; bg = "NONE"; };
              NoiceFormatConfirmDefault = { fg = "NONE"; bg = "NONE"; };
              NoiceFormatConfirm = { fg = "NONE"; bg = "NONE"; };

          # Notify
              NotifyBackground = { fg = "NONE"; bg = "#F6F7EC"; };

          # Todo-Comment
              # todo

      # unknown
          FloatShadow = { fg = "NONE"; bg = "NONE"; };
          FloatShadowThrough = { fg = "NONE"; bg = "NONE"; };
  };
}
