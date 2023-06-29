{ ... }:{
    
    programs.nixvim.plugins.todo-comments = {
      enable = true;
      signs = true;
      signPriority = 8;
      mergeKeywords = true;

      highlight = {
        multiline = true;
        multilinePattern = "^.";
        multilineContext = 10;
        before = "";
        keyword = "wide";
        after = "fg";
        pattern = ".*<(KEYWORDS)\\s*:";
        commentsOnly = false;
        maxLineLen = 400;
};

      keywords.FIX = { icon = " "; alt = [ "BUG" ]; };
      keywords.TODO = { icon = " "; alt = [ "MERGE" "CONT" ]; };
      keywords.HACK = { icon = " "; alt = [ "EDIT" ]; };
      keywords.WARN = { icon = " ";  alt = [ "TRASH" "PLOT" ]; };
      keywords.PERF = { icon = " ";  alt = [ "END" ]; };
      keywords.NOTE = { icon = " "; alt = [ "INFO" ]; };
      keywords.TEST = { icon = " "; alt = [ "TRY" ]; };


  };
}
