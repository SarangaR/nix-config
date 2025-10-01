{...}: {
  programs.git = {
    enable = true;
    userName = "SarangaR";
    userEmail = "59266397+SarangaR@users.noreply.github.com";
    signing = {
      key = "~/.ssh/id_ed25519.pub";
      signByDefault = true;
    };
    iniContent.gpg.format = "ssh";
  };
}
