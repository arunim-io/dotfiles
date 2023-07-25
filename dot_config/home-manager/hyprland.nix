{ inputs, pkgs, ... }:

{
  home.packages = with pkgs; [
    xdg-desktop-portal-hyprland
    copyq
    hyprpicker
    blueman
    swaynotificationcenter
    playerctl
    brightnessctl
    wpaperd
    wlogout
    pavucontrol
    wl-clipboard
    swaylock-effects
    font-awesome
    ubuntu_font_family
    rofi
    networkmanagerapplet
    inputs.hyprland-contrib.packages.${pkgs.system}.grimblast
  ];

  programs.waybar = {
    enable = true;
    package = pkgs.waybar.overrideAttrs (oldAttrs: {
      mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
    });
  };
}
