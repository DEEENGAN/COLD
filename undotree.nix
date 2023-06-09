{ ... }: {

    programs.nixvim.plugins.undotree.enable = true;

    programs.nixvim.maps.normal."<leader>dt" = "<CMD>:UndotreeToggle<CR>";

}
