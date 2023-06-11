{ ... }:{

  programs.nixvim.plugins.noice = {
    enable = true;
      lsp.override =
            {
              "vim.lsp.util.convert_input_to_markdown_lines" = true;
              "vim.lsp.util.stylize_markdown" = true;
              "cmp.entry.get_documentation" = false;
            };

      presets =
            {
              bottom_search = false;
              command_palette = true;
              long_message_to_split = true;
              inc_rename = false;
              lsp_doc_border = true;
            };

      cmdline = {
      enabled = true;
      view = "cmdline_popup";
      opts = {};
      format =
          {
            cmdline = {pattern = "^:"; icon = ""; lang = "vim";};
            search_down = {kind = "search"; pattern = "^/"; icon = " "; lang = "regex";};
            search_up = {kind = "search"; pattern = "?%?"; icon = " "; lang = "regex";};
            filter = {pattern = "^:%s*!"; icon = "$"; lang = "bash";};
            lua = {pattern = "^:%s*lua%s+"; icon = ""; lang = "lua";};
            input = {};

      };
    };
  };
}
