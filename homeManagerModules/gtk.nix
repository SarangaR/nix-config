{pkgs, ...}: {
  gtk = {
    enable = true;
    theme = {
      name = "Colloid-Purple-Dark-Compact-Catppuccin";
      package = pkgs.colloid-gtk-theme.override {
        themeVariants = ["all"];
        colorVariants = ["dark"];
        sizeVariants = ["standard"];
        tweaks = ["catppuccin" "black" "rimless" "normal"];
      };
    };
  };
}
