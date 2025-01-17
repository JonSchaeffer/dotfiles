{
  description = "Example nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs }:
  let
    configuration = { pkgs, ... }: {
      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages =
        [ pkgs.vim
        ];

      #Config
      nix.settings.experimental-features = "nix-command flakes";
      programs.zsh.enable = true; # Sets the default shell to zsh
      security.pam.enableSudoTouchIdAuth = true; # Enable TouchID for sudo
      system.configurationRevision = self.rev or self.dirtyRev or null;
      system.stateVersion = 5;
      nixpkgs.hostPlatform = "aarch64-darwin";
      
      users.users.jon.home = "/Users/jon";

      system.defaults = {
        dock.autohide = true;
        finder.AppleShowAllExtensions = true;
        finder.AppleShowAllFiles = true;
        finder.FXPreferredViewStyle = "clmv";
        finder.ShowStatusBar = true;
        screencapture.location = "~/Pictures/screenshots";
        NSGlobalDomain.AppleInterfaceStyle = "Dark";
        NSGlobalDomain.AppleShowAllExtensions = true;
        NSGlobalDomain."com.apple.swipescrolldirection" = true;
        WindowManager.EnableStandardClickToShowDesktop = false;
        controlcenter.BatteryShowPercentage = false;
        dock.mru-spaces = false;
        dock.orientation = "bottom";
        dock.tilesize = 27;
      };

      system.keyboard = {
        enableKeyMapping = true;
        remapCapsLockToControl = true;
      };

      #Homebrew needs to be installed on its own!
      homebrew.enable = true;
      homebrew.casks = [
        "arc"
        "bruno"
        "ghostty"
        "google-cloud-sdk"
        "meetingbar"
        "obsidian"
        "orbstack"
        "tableplus"
        "unnaturalscrollwheels"
      ];
      homebrew.brews = [
        "age"
        "ansible"
        "bash"
        "bat"
        "cfssl"
        "dagger"
        "flux"
        "fzf"
        "gcc"
        "gh"
        "git"
        "glib"
        "go"
        "helm"
        "hugo"
        "istioctl"
        "jq"
        "k3d"
        "k9s"
        "kind"
        "kube-ps1"
        "kubecolor"
        "kubectx"
        "kubernetes-cli"
        "kubeseal"
        "lazygit"
        "minikube"
        "neovim"
        "python@3.12"
        "qemu"
        "ripgrep"
        "sops"
        "sshpass"
        "tailscale"
        "terraform"
        "tilt"
        "tmux"
        "tmux-fingers"
        "tree"
        "vcluster"
        "wget"
        "yazi"
        "yq"
        "zoxide"
      ];

  
    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#DPL-T4P7MVX1LP
    darwinConfigurations."DPL-T4P7MVX1LP" = nix-darwin.lib.darwinSystem {
      modules = [ configuration ];
    };
  };
}
