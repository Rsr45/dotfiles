{config, pkgs, ... }:

{

  services.xserver.enable = true;
  services.xserver.autorun = true;
  services.xserver.windowManager.i3.enable = true;
  hardware.opengl.driSupport32Bit = true;

  services.xserver.displayManager.lightdm.enable = true;

  # Auto login
  # services.displayManager.autoLogin.enable = true;
  # services.displayManager.autoLogin.user = "fangyuan";

  gtk.enable = true;

  qt.enable = true;
  #qt.platformTheme = "gtk";
  #qt.style = "gtk";

  programs.sway = {
    enable = true;
    package = pkgs.swayfx;
  };

  xdg.portal.wlr.enable = true;

  security.polkit.enable = true;

  systemd = {
    user.services.polkit-gnome-authentication-agent-1 = {
      description = "polkit-gnome-authentication-agent-1";
      wantedBy = [ "graphical-session.target" ];
      wants = [ "graphical-session.target" ];
      after = [ "graphical-session.target" ];
      serviceConfig = {
          Type = "simple";
          ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
          Restart = "on-failure";
          RestartSec = 1;
          TimeoutStopSec = 10;
        };
    };
  };

  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
    thunar-volman
  ];

  services.gvfs.enable = true; # Mount, trash, and other functionalities
  services.tumbler.enable = true; # Thumbnail support for images

  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # jack.enable = true;
  };

  environment.systemPackages = [
    pkgs.polkit
    pkgs.polkit_gnome
    pkgs.zsh
    pkgs.fish
    pkgs.ffmpegthumbnailer # Video files
    pkgs.pavucontrol
    pkgs.neovim
    pkgs.libgcc
    pkgs.go
    pkgs.ripgrep
    pkgs.gnumake
    pkgs.fzf
    pkgs.wl-clipboard
    pkgs.xclip
    pkgs.rar
    pkgs.unrar
    pkgs.zip
    pkgs.unzip
    pkgs.p7zip
    pkgs.xarchiver
    pkgs.lf
    pkgs.superfile
    pkgs.feh
    pkgs.mpv
    pkgs.mpvc
    pkgs.palemoon-bin
    pkgs.floorp
    pkgs.librewolf
    pkgs.tor
    pkgs.mpd
    pkgs.mpc-cli
    pkgs.ncmpcpp
    pkgs.plattenalbum
    pkgs.ymuse
    pkgs.qbittorrent
    pkgs.logmein-hamachi
    pkgs.haguichi
    pkgs.anydesk
    pkgs.obsidian
    pkgs.keepassxc
    pkgs.smassh
    pkgs.typioca
    pkgs.mapscii
    pkgs.pywal
    pkgs.dmenu
    pkgs.polybar
    pkgs.swww
    pkgs.eww
    pkgs.papirus-icon-theme
    pkgs.btop
    pkgs.fastfetch
  ];

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
  ];

}
