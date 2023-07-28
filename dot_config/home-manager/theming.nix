{ pkgs, ... }: {
  home.packages = with pkgs; [
    gnome.gnome-themes-extra
    gnome.adwaita-icon-theme
    jetbrains-mono
    ubuntu_font_family
  ];
  fonts.fontconfig.enable = true;
  gtk = {
    enable = true;
    font.name = "Ubuntu";
    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };
  };
  qt = {
    enable = true;
    platformTheme = "gtk";
  };
}
