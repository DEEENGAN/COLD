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

      keywords.FIX = { icon = " "; alt = [ "BUG" "JCD" ]; };
      keywords.TODO = { icon = " "; alt = [ "MERGE" "CONT" "HPS" ]; };
      keywords.HACK = { icon = " "; alt = [ "EDIT" "BER" ]; };
      keywords.WARN = { icon = " ";  alt = [ "TRASH" "MARK" "LTT" ]; };
      keywords.PERF = { icon = " ";  alt = [ "END" "RSP" ]; };
      keywords.NOTE = { icon = " "; alt = [ "PLOT" "ME" ]; };
      keywords.TEST = { icon = " "; alt = [ "TRY" "OBV" ]; };


  };
}
