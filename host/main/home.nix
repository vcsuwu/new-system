{ config, pkgs, inputs, ... }:

{

  home.username = "vocus";
  home.homeDirectory = "/home/vocus";
  home.stateVersion = "23.11"; # Please read the comment before changing.

  imports = [
    ../../modules/home/pkgs.nix
    ../../modules/home/xdg.nix
    ../../modules/home/apps.nix
    ../../modules/home/hypr.nix
  ];

  programs.home-manager.enable = true;
}
