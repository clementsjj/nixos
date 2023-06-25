# nixos
nixos configuration

# Configs to add



# Resources
https://thiscute.world/en/posts/nixos-and-flake-basics/

https://nixos.wiki/wiki/Flakes

https://github.com/NixOS/nixpkgs

https://github.com/nix-community/NUR

https://github.com/nix-community/home-manager

https://nixos.org/guides/nix-pills/

https://nixos.org/manual/nixos/stable/

### Nix Language
https://nix.dev/tutorials/first-steps/nix-language

https://nixos.org/guides/nix-pills/basics-of-language.html

### Desktop Environments

https://github.com/gvolpe/dconf2nix

# Conguration Additions

`videoDriver = "amdgpu";`

# Configuration Files
- ~/.bashrc
- ~/.bash_aliases
- ~/.bash_vars
- ~/.config/kdeglobals
    - remab of ctrl to super for copy, paste, cut, save
- ~/.config/kglobalshortcutsrc
    - kwin shortcuts
        - Walk through windows to meta+tab
        - window quick tile to alt+shift+_
        - open konsole with meta+t
- ~/.config/kwinrc
    - Tiling definitions; night color; no highlight window on meta+tab
- ~/.config/plasmashellrc
    - "Panel" sizes
- ~/.config/plasma-org.kde.plasma.desktop-appletsrc
    - Panel settings
- ~/.config/Code/User/keybindings.json
    - remap ctrl to super for copy, paste, cut, find, save
- ~/.config/Code/User/settings.json
    - VSCode dark theme and gitlab copilot


# KDE
Since this is my first time using KDE, I want to record some of the things I need to remember. 

In `~/.config/plasma-org.kde.plasma.desktop-appletsrc`, I can find my applets and most importantly the taskbar/panel (or whatever they are called). In the config, they are referred to as `Containments`. If the containment has a setting `plugin=org.kde.panel`, then it is a task panel. Since I found adjusting the task panel to be a bit difficult, I wanted to be sure I could save my configuration to use again. 



# To Do

Add xmrig service
```
services.xmrig = {
  enable = true;
  settings = {
    autosave = true;
    cpu = true;
    opencl = false;
    cuda = false;
    pools = [
      {
        url = "pool.supportxmr.com:443";
        user = "your-wallet";
        keepalive = true;
        tls = true;
      }
    ]
  }
};
```

setup window snapping

custom nix package

nfs and samba mounts

physical mounts

