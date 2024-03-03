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

      keywords.FIX = { icon = "㊃"; alt = [ "SICK" "HPS" ]; };
      keywords.TODO = { icon = "㊒"; alt = [ "TODO" "JCD" ]; };
      keywords.HACK = { icon = "㊍"; alt = [ "HACK" "BER" ]; };
      keywords.WARN = { icon = "㊋";  alt = [ "MARK" "LTT" ]; };
      keywords.PERF = { icon = "㊊";  alt = [ "END" "RSP" ]; };
      keywords.NOTE = { icon = "㉄"; alt = [ "MIND" "ME" ]; };
      keywords.TEST = { icon = "㊏"; alt = [ "YARDSTICK" "OBV" ]; };

  };
}
