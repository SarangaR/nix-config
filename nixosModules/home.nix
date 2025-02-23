{
  config,
  pkgs,
  ...
}: {
  imports = [
    ../homeManagerModules/direnv.nix
    ../homeManagerModules/zen.nix
    ../homeManagerModules/programs
    ../homeManagerModules/shell
    ../homeManagerModules/desktopEnvironment
    ../homeManagerModules/catppuccin.nix
    ../homeManagerModules/gtk.nix
  ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home = {
    username = "saranga";

    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "23.05";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.gpg = {
    enable = true;
    homedir = "${config.xdg.dataHome}/gnupg";
  };

  programs.nnn.enable = true;
  programs.eza.enable = true;
  programs.btop.enable = true;

  home.packages = with pkgs; [
    sioyek
    ripgrep
    p7zip
  ];

  fonts.fontconfig.enable = true;
}
