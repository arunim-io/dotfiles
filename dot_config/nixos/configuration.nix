{ pkgs, ... }: {
  imports = [
    ./cachix.nix
    ./hardware-configuration.nix
    ./system-configuration.nix
    ./software-configuration.nix
    ./user-configuration.nix
  ];

  nix = {
    package = pkgs.nixFlakes;
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
    settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
    };
  };

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "23.11";
}
