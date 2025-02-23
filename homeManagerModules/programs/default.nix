{...}: {
  imports = [
    ./firefox.nix
    ./chromium.nix
    ./ssh-forward-agent.nix
    ./spotify.nix
    ./helix.nix
    ./bat.nix
    ./git.nix
  ];
}
