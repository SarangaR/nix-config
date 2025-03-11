{ config, pkgs, lib, ... }:

{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    style = ''
      ${lib.readFile ./waybar-style-2.css}
    '';
    settings = [{
      height = 30;
      layer = "top";
      position = "bottom";
      tray = { spacing = 20; };
      modules-left = [ "clock" ];
      modules-center = [ "hyprland/workspaces" ];
      modules-right = [
        "pulseaudio"
        "bluetooth"
        "network"
        "cpu"
        "memory"
        "temperature"
        "battery"
      ];
      battery = {
        format = "{capacity}% {icon}";
        format-alt = "{time} {icon}";
        format-charging = "{capacity}% ";
        format-icons = [ "" "" "" "" "" ];
        format-plugged = "{capacity}% ";
        states = {
          critical = 15;
          warning = 30;
        };
      };
      clock = {
        format-alt = "{:%Y-%m-%d}";
        tooltip-format = "{:%Y-%m-%d | %H:%M}";
      };
      cpu = {
        format = "{usage}% ";
        tooltip = false;
        on-click = "kitty -e btop";
      };
      memory = {
        format = "{}% ";
        on-click = "kitty -e btop";
      };
      network = {
        interval = 1;
        format-alt = "{ifname}: {ipaddr}/{cidr}";
        format-disconnected = "Disconnected ⚠";
        format-ethernet = "{ifname} ";
        format-linked = "{ifname} (No IP) ";
        format-wifi = "{essid} ({signalStrength}%) ";
        on-click = "kitty --class nmwui sudo nmtui";
      };
      pulseaudio = {
        format = "{volume}% {icon} {format_source}";
        format-bluetooth = "{volume}% {icon} {format_source}";
        format-bluetooth-muted = " {icon} {format_source}";
        format-icons = {
          car = "";
          default = [ "" "" "" ];
          handsfree = "";
          headphones = "";
          headset = "";
          phone = "";
          portable = "";
        };
        format-muted = " {format_source}";
        format-source = " | {volume}% ";
        format-source-muted = "";
        on-click = "${pkgs.pavucontrol}/bin/pavucontrol";
      };
      # "sway/mode" = { format = ''<span style="italic">{}</span>''; };
      temperature = {
        critical-threshold = 80;
        format = "{temperatureC}°C {icon}";
        format-icons = [ "" "" "" ];
      };
      bluetooth = {
        # format-alt = "bluetooth: {status}";
        format-on = "";
        format-off = "!";
        format-disabled = "";
        format-connected = " {device_alias}";
        on-click = "blueman-manager";
        tooltip-format = "{status}";
      };
    }];
  };
}
