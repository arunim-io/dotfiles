{ pkgs, ... }: {
  environment = {
    shells = with pkgs; [ fish ];
    systemPackages = with pkgs; [ git wget python3 most gnumake gcc pulseaudio nettools ];
  };

  users.users.arunim = {
    isNormalUser = true;
    description = "Mugdha Arunim Ahmed";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox-bin
      xfce.thunar
      xfce.thunar-archive-plugin
      uget
      chezmoi
      wezterm
      vscode-fhs
      neofetch
      tmux
      starship
      rustup
      poetry
      nodejs
      nodePackages.pnpm
      watchman
      lazygit
      exa
      ripgrep
      bottom
      rm-improved
      zoxide
      bat
      gh
      topgrade
      aria2
      android-studio
      android-tools
    ];
    shell = pkgs.fish;
  };

  programs.fish.enable = true;
}
