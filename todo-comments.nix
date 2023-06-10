{ ... }:{

    programs.nixvim.plugins.todo-comments.enable = true;
    programs.nixvim.plugins.todo-comments.signs = true;
    programs.nixvim.plugins.todo-comments.signPriority = 8;

    programs.nixvim.plugins.todo-comments.keywords.FIX = { icon = " "; color = "#dd4c47";  alt = [ "FIXME" "BUG" "FIXIT" "ISSUE" ]; };
    programs.nixvim.plugins.todo-comments.keywords.TODO = { icon = " "; color = "#0fbad7"; };
    programs.nixvim.plugins.todo-comments.keywords.HACK = { icon = " "; color = "#ddb173"; };
    programs.nixvim.plugins.todo-comments.keywords.WARN = { icon = " "; color = "#ddb173"; alt = [ "WARNING" "XXX" ]; };
    programs.nixvim.plugins.todo-comments.keywords.PERF = { icon = "ℹ️"; color = "#b99bfa"; alt = [ "OPTIM" "PERFORMANCE" "OPTIMIZE" ]; };
    programs.nixvim.plugins.todo-comments.keywords.NOTE = { icon = "🗊 "; color = "#10b581"; alt = [ "INFO" ]; };
    programs.nixvim.plugins.todo-comments.keywords.TEST = { icon = "⏲ "; color = "test"; alt = [ "TESTING" "PASSED" "FAILED" ]; };

    programs.nixvim.plugins.todo-comments.guiStyle.fg = "NONE";
    programs.nixvim.plugins.todo-comments.guiStyle.bg = "BOLD";
    programs.nixvim.plugins.todo-comments.mergeKeywords = true;


    programs.nixvim.plugins.todo-comments.highlight.multiline = true;
    programs.nixvim.plugins.todo-comments.highlight.multilinePattern = "^.";
    programs.nixvim.plugins.todo-comments.highlight.multilineContext = 10;
    programs.nixvim.plugins.todo-comments.highlight.before = "";
    programs.nixvim.plugins.todo-comments.highlight.keyword = "wide";
    programs.nixvim.plugins.todo-comments.highlight.after = "fg";
    programs.nixvim.plugins.todo-comments.highlight.pattern = ".*<(KEYWORDS)\\s*:";
    programs.nixvim.plugins.todo-comments.highlight.commentsOnly = false;
    programs.nixvim.plugins.todo-comments.highlight.maxLineLen = 400;

      # Todo
          programs.nixvim.maps.normal."<leader>td" = "<CMD>TodoTelescope<CR>";

}
