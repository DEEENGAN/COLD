{ ... }:{
    
    programs.nixvim.plugins.todo-comments = {
      enable = true;
      signs = true;
      signPriority = 8;

      keywords.FIX = { icon = " "; alt = [ "FIXME" "BUG" "FIXIT" "ISSUE" ]; };
      keywords.TODO = { icon = " "; };
      keywords.HACK = { icon = " "; };
      keywords.WARN = { icon = " ";  alt = [ "WARNING" "XXX" ]; };
      keywords.PERF = { icon = "ℹ️";  alt = [ "OPTIM" "PERFORMANCE" "OPTIMIZE" ]; };
      keywords.NOTE = { icon = "🗊 "; alt = [ "INFO" ]; };
      keywords.TEST = { icon = "⏲ "; alt = [ "TESTING" "PASSED" "FAILED" ]; };

      guiStyle.fg = "NONE";
      guiStyle.bg = "BOLD";
      mergeKeywords = true;

      highlight.multiline = true;
      highlight.multilinePattern = "^.";
      highlight.multilineContext = 10;
      highlight.before = "";
      highlight.keyword = "wide";
      highlight.after = "fg";
      highlight.pattern = ".*<(KEYWORDS)\\s*:";
      highlight.commentsOnly = false;
      highlight.maxLineLen = 400;


  };
}
