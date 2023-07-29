{ inputs, pkgs, ... }:
let
  neovim = inputs.neovim-nightly.packages.${pkgs.system}.neovim;
  packages = with pkgs; [
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
in
{
  home.packages = packages;
  programs.neovim = {
    enable = true;
    package = neovim;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    withNodeJs = true;
    withPython3 = true;
    withRuby = false;
  };
}
