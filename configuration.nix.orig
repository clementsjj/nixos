
{ config, pkgs, ... }:

{
    nixpkgs.config.allowUnfree = true;
    time.timeZone = "America/New_York";

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.efi.efiSysMountPoint = "/boot/efi";
    

    networking.hostName = "annes-tounge";
    networking.networkmanager.enable = true;

    environment.systemPackages = with pkgs; [
        vim
        wget
        git
        curl
        neofetch
        htop
        brave
        discord
        steam
        steam-run
        lutris
        obs-studio
        vlc
        qbittorrent
        libreoffice
        gimp
        nfs-utils
        openssh
        tldr
        tabby
        notepadqq
        vscode
        firefox
        gnome-tweaks
    ];

    programs.steam.enable = true;
    programs.steam.remotePlay.openFirewall = true;
    programs.steam.dedicatedServer.openFirewall = true;

    services.xserver.enable = true;
    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;
    services.gnome.games.enable = true;
    services.gnome.core-developer-tools.enable = true;

    hardware.pulseaudio.enable = true;
    hardware.bluetooth.enable = true;

    services.flatpak.enable = true;
    services.dbus.enable = true;
    

    users.users.juuj = {
        isNormalUser = true;
        extraGroups = [ "wheel" "networkmanager" "audio" "video" "games"];
    };

    sound.enable = true;


}