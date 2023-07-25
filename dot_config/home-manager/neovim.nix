{ inputs, pkgs, ... }: {
  home.packages = with pkgs; [ fd ];

  programs.neovim = {
    defaultEditor = true;
    enable = true;
    viAlias = true;
    vimAlias = true;
    package = inputs.neovim-nightly.packages.${pkgs.system}.neovim;
    plugins = with pkgs.vimPlugins; [];
    withNodeJs = true;
    withPython3 = true;
  };
}
