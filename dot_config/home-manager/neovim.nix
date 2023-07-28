{ inputs, pkgs, ... }: {
  home.packages = with pkgs; [
    tree-sitter
    fd
    ripgrep
    gcc
    trashy
    nodePackages.vscode-langservers-extracted
    lua-language-server
    nodePackages.pyright
    ruff
    taplo
    nodePackages.svelte-language-server
    nodePackages.yaml-language-server
    # djlint
    dotenv-linter
    editorconfig-checker
    black
    nodePackages.prettier # replace with prettierd
    nil
    nixpkgs-fmt
    statix
    nodePackages.dockerfile-language-server-nodejs
  ];

  programs.neovim = {
    defaultEditor = true;
    enable = true;
    viAlias = true;
    vimAlias = true;
    package = inputs.neovim-nightly.packages.${pkgs.system}.neovim;
    withNodeJs = true;
    withPython3 = true;
  };
}
