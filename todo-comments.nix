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

      keywords.FIX = { icon = " "; alt = [ "MIDDLE" "JCD" ]; };
      keywords.TODO = { icon = " "; alt = [ "STITCH" "CONT" "HPS" ]; };
      keywords.HACK = { icon = " "; alt = [ "HERE" "BER" ]; };
      keywords.WARN = { icon = " ";  alt = [ "MARK" "LTT" ]; };
      keywords.PERF = { icon = " ";  alt = [ "END" "RSP" ]; };
      keywords.NOTE = { icon = " "; alt = [ "TALE" "ME" ]; };
      keywords.TEST = { icon = " "; alt = [ "NEW" "OBV" ]; };


  };
}
