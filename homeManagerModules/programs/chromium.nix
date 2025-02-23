{pkgs, ...}: {
  programs.chromium = {
    enable = true;
    package = pkgs.chromium;
    extensions = [
      # uBlock Origin
      {id = "cjpalhdlnbpafiamejdnhcphjbkeiagm";}
      # Dark Reader
      {id = "eimadpbcbfnmbkopoojfekhnkhdbieeh";}
      # Catppuccin Mocha Theme
      {id = "bkkmolkhemgaeaeggcmfbghljjjoofoh";}
    ];
  };
}
