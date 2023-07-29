{ inputs, pkgs, ... }:
let
  waybar = inputs.hyprland.packages.${pkgs.system}.waybar-hyprland;
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
    rofi
    networkmanagerapplet
    grimblast
  ];

  programs.waybar = {
    enable = true;
    package = waybar;
  };
}
