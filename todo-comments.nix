{ ... }:{

    programs.nixvim.plugins.todo-comments.enable = true;
    programs.nixvim.plugins.todo-comments.signs = true;
    programs.nixvim.plugins.todo-comments.signPriority = 8;

    programs.nixvim.plugins.todo-comments.keywords.FIX = { icon = " "; color = "info";  alt = [ "FIXME" "BUG" "FIXIT" "ISSUE" ]; };
    programs.nixvim.plugins.todo-comments.keywords.TODO = { icon = " "; color = "info"; };
    programs.nixvim.plugins.todo-comments.keywords.HACK = { icon = " "; color = "warning"; };
    programs.nixvim.plugins.todo-comments.keywords.WARN = { icon = " "; color = "warning"; alt = [ "WARNING" "XXX" ]; };
    programs.nixvim.plugins.todo-comments.keywords.PERF = { icon = "🖄 "; alt = [ "OPTIM" "PERFORMANCE" "OPTIMIZE" ]; };
    programs.nixvim.plugins.todo-comments.keywords.NOTE = { icon = "🗊 "; color = "hint"; alt = [ "INFO" ]; };
    programs.nixvim.plugins.todo-comments.keywords.TEST = { icon = "⏲ "; color = "test"; alt = [ "TESTING" "PASSED" "FAILED" ]; };

    programs.nixvim.plugins.todo-comments.highlight.multiline = true;
    programs.nixvim.plugins.todo-comments.highlight.multilinePattern = "^.";
    programs.nixvim.plugins.todo-comments.highlight.multilineContext = 10;
    programs.nixvim.plugins.todo-comments.highlight.before = "";
    programs.nixvim.plugins.todo-comments.highlight.keyword = "wide";
    programs.nixvim.plugins.todo-comments.highlight.after = "fg";
    programs.nixvim.plugins.todo-comments.highlight.pattern = ".*<(KEYWORDS)\\s*:";
    programs.nixvim.plugins.todo-comments.highlight.commentsOnly = false;
    programs.nixvim.plugins.todo-comments.highlight.maxLineLen = 400;
  
    programs.nixvim.plugins.todo-comments.colors.error = [ "DiagnosticError" "ErrorMsg" "#DC2626" ];
    programs.nixvim.plugins.todo-comments.colors.warning = [ "DiagnosticWarn" "WarningMsg" "#FBBF24" ];
    programs.nixvim.plugins.todo-comments.colors.info = [ "DiagnosticInfo" "#2563EB" ];
    programs.nixvim.plugins.todo-comments.colors.hint = [ "DiagnosticHint" "#10B981" ];
    programs.nixvim.plugins.todo-comments.colors.default = [ "Identifier" "#7C3AED" ];
    programs.nixvim.plugins.todo-comments.colors.test = [ "Identifier" "#FF00FF" ];

}
