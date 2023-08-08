{ inputs, pkgs, ... }:
let
  grimblast = inputs.hyprland-contrib.packages.${pkgs.system}.grimblast;
in
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
    rofi-wayland
    networkmanagerapplet
    grimblast
  ];

  programs.waybar = {
    enable = true;
    package = pkgs.waybar-hyprland;
  };
}
