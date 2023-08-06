{ pkgs, ... }: {
  home.packages = with pkgs; [
    wezterm
    vscode-fhs
    tmux
    rustup
    poetry
    pipx
    nodejs
    nodePackages.pnpm
    lazygit
    gh
    flutter
    android-studio
    android-tools
  ];
}
