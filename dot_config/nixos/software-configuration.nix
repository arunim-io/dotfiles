{ ... }: {
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    layout = "us";
    xkbVariant = "";
  };

  services = {
    flatpak.enable = true;
    gnome.gnome-keyring.enable = true;
  };

  programs.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
      hidpi = false;
    };
  };

  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
    defaultNetwork.settings.dns_enabled = true;
  };
}
