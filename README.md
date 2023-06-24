# nixos
nixos configuration

# Configs to add
- ~/.bashrc
- ~/.bash_aliases
- ~/.bash_vars
- ~/.config/kdeglobal
- ~/.config/Code/User/keybindings.json
- ~/.config/Code/User/settings.json


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

