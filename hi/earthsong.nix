{ ... }: {

    programs.nixvim.highlight = {

      # broadest && most general
          Comment = { fg = "#E0D561"; bg = "NONE"; };
          Constant = { fg = "#FF645A"; bg = "NONE"; };
          Directory = { fg = "#98E036"; bg = "NONE"; };
          Identifier = { fg = "#84F088"; bg = "NONE"; };
          MatchParen = { fg = "#5FDAFF"; bg = "NONE"; };
          PreProc = { fg = "#98E036"; bg = "NONE"; };
          Search = { fg = "#F5AE2E"; bg = "NONE"; };
          Special = { fg = "#F5AE2E"; bg = "NONE"; };
          Statement = { fg = "#FF9269"; bg = "NONE"; };
          StatusLine = { fg = "#5FDAFF"; bg = "NONE"; };
          TermCursor = { fg = "#E0D561"; bg = "NONE"; };
          Title = { fg = "#F5AE2E"; bg = "NONE"; };
          Todo = { fg = "#F5AE2E"; bg = "NONE"; };
          Type = { fg = "#F6F7EC"; bg = "NONE"; };
          Underlined = { fg = "#98E036"; bg = "NONE"; };
          Visual = { fg = "#5FDAFF"; bg = "NONE"; };
          FoldColumn = { fg = "#5FDAFF"; bg = "NONE"; };
          ColorColumn = { fg = "#85C54C"; bg = "#F6F7EC"; };
          Conceal = { fg = "#85C54C"; bg = "NONE"; };
          MoreMsg = { fg = "#1398B9"; bg = "NONE"; };
          Folded = { fg = "#85C54C"; bg = "NONE"; };

          # cursor, lcursor has fg = bg
              Cursor = { fg = "#509552"; bg = "#E0D561"; };
              CursorColumn = { fg = "NONE"; bg = "NONE"; };
              CursorLine = { fg = "NONE"; bg = "NONE"; };
              CursorLineNR = { fg = "NONE"; bg = "NONE"; };
              lCursor = { fg = "#E0D561"; bg = "#E0D561"; };

          # errors
              Error = { fg = "#C94234"; bg = "NONE"; };
              ErrorMsg = { fg = "#C94234"; bg = "NONE"; };
              NvimInternalError = { fg = "#C94234"; bg = "NONE"; };
          
          # diagnostics
              DiagnosticError = { fg = "#D0633D"; bg = "NONE"; };
              DiagnosticHint = { fg = "#5FDAFF"; bg = "NONE"; };
              DiagnosticInfo = { fg = "#F6F7EC"; bg = "NONE"; };
              DiagnosticOk = { fg = "#98E036"; bg = "NONE"; };
              DiagnosticWarn = { fg = "#F5AE2E"; bg = "NONE"; };

                # underline
                  DiagnosticUnderlineError = { fg = "#C94234"; bg = "NONE"; };
                  DiagnosticUnderlineHint = { fg = "#5FDAFF"; bg = "NONE"; };
                  DiagnosticUnderlineInfo = { fg = "#F6F7EC"; bg = "NONE"; };
                  DiagnosticUnderlineOk = { fg = "#98E036"; bg = "NONE"; };
                  DiagnosticUnderlineWarn = { fg = "#FF9269"; bg = "NONE"; };

      # diff
          DiffDelete = { fg = "#FF645A"; bg = "NONE"; };
          DiffText = { fg = "#FF9269"; bg = "NONE"; };
          DiffChange = { fg = "#84F088"; bg = "NONE"; };
          DiffAdd = { fg = "#98E036"; bg = "NONE"; };

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
            # Todo Sign
                TodoSignFIX = { fg = "#FF645A"; bg = "NONE"; };
                TodoSignTODO = { fg = "#5FDAFF"; bg = "NONE"; };
                TodoSignHACK = { fg = "#FF9269"; bg = "NONE"; };
                TodoSignWARN = { fg = "#F5AE2E"; bg = "NONE"; };
                TodoSignPERF = { fg = "#84F088"; bg = "NONE"; };
                TodoSignNOTE = { fg = "#509552"; bg = "NONE"; };
                TodoSignTEST = { fg = "#E0D561"; bg = "NONE"; };

            # Todo Fg
                TodoFgFIX = { fg = "#FF645A"; bg = "NONE"; };
                TodoFgTODO = { fg = "#5FDAFF"; bg = "NONE"; };
                TodoFgHACK = { fg = "#FF9269"; bg = "NONE"; };
                TodoFgWARN = { fg = "#F5AE2E"; bg = "NONE"; };
                TodoFgPERF = { fg = "#84F088"; bg = "NONE"; };
                TodoFgNOTE = { fg = "#509552"; bg = "NONE"; };
                TodoFgTEST = { fg = "#E0D561"; bg = "NONE"; };
            
            # Todo Bg
                TodoBgFIX = { bold = true; fg = "#121418"; bg = "#FF645A"; };
                TodoBgTODO = { bold = true; fg = "#121418"; bg = "#5FDAFF"; };
                TodoBgHACK = { bold = true; fg = "#121418"; bg = "#FF9269"; };
                TodoBgWARN = { bold = true; fg = "#121418"; bg = "#F5AE2E"; };
                TodoBgPERF = { bold = true; fg = "#121418"; bg = "#84F088"; };
                TodoBgNOTE = { bold = true; fg = "#121418"; bg = "#509552"; };
                TodoBgTEST = { bold = true; fg = "#121418"; bg = "#E0D561"; };

      # redraw
          RedrawDebugRecompose = { bold = true; fg = "#509552"; bg = "NONE"; };
          RedrawDebugComposed = { bold = true; fg = "#98E036"; bg = "NONE"; };
          RedrawDebugNormal = { bold = true; fg = "#5FDAFF"; bg = "NONE"; };
          RedrawDebugClear = { bold = true; fg = "#F6F7EC"; bg = "NONE"; };

      # unknown
          FloatShadow = { fg = "NONE"; bg = "NONE"; };
          FloatShadowThrough = { fg = "NONE"; bg = "NONE"; };

  };
}
