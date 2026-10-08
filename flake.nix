{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS official package source
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0";
    determinate.url = "https://flakehub.com/f/DeterminateSystems/determinate/*";
    home-manager = {
      url = "https://flakehub.com/f/nix-community/home-manager/0";
      # The `follows` keyword in inputs is used for inheritance.
      # Here, `inputs.nixpkgs` of home-manager is kept consistent with
      # the `inputs.nixpkgs` of the current flake,
      # to avoid problems caused by different versions of nixpkgs.
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, home-manager, determinate, nixpkgs, ... }@inputs: {
    # Please replace my-nixos with your hostname
    homeConfigurations.TohsakaNode = inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = import inputs.nixpkgs {
        system = "x86_64-linux";
      };
    };

    nixosConfigurations.TohsakaNode = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
	determinate.nixosModules.default

	home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            # TODO replace ryan with your own username
            home-manager.users.mazin = import ./home.nix;
	}
        # Import the previous configuration.nix we used,
        # so the old configuration file still takes effect
        ./configuration.nix
      ];
    };
  };
}

