{...}: {
  security.pam = {
    u2f.settings.cue = true;
    services = {
      login.u2fAuth = true;
      sudo.u2fAuth = true;
    };
  };
}
