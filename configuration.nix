# Edit this configuration file to define what should be installed on
# your system.	Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
	# List packages installed in system profile. To search, run: `nix search wget`
	environment.systemPackages = with pkgs; [
		## Dev
			#ide
			vim
			neovim
			#dev tools
			git
			tmux
			docker
			kanata
			#languages
			gcc
			rustup
			nodejs
			nodePackages.pnpm
			jdk
			(python3.withPackages (python-pkgs: with python-pkgs; [
				debugpy
				requests
				regex
			]))
			dotnet-sdk
			postgresql
		## Misselanous
			#files
			lf
			tree
			zoxide
			fzf
			fd
			#dotfiles
			stow
			#shell
			kitty
			zsh
			oh-my-posh
			atuin
			fastfetch
			wl-clipboard
			nixos-shell
			#app gui
			discord
			libreoffice-qt
			obs-studio
			rofi # app launcher
			pinta # litteraly paint.net for linux
			#app cli
			pass
			gh # github cli
			glow # markdown viewer
			slides # markdown - powerpoint viewer
			tldr
			zip
			unzip
		## Hyprland
			fuzzel
			#lock screen
			wlogout
			swaylock-effects
			hypridle
			#sound
			playerctl
			pamixer # audio manager
			#screen
			waybar
			grim
			slurp
			brightnessctl
		## Dependencies
			openssl
	];

	fonts.packages = with pkgs; [
		(nerdfonts.override { fonts = [
			"JetBrainsMono"
		 ]; })
	];

	# Program config
	programs = {
		firefox.enable = true;
		zsh.enable = true;
	};
	services.postgresql = {
		enable = true;
		ensureDatabases = [ "mydatabase" ];
		authentication = pkgs.lib.mkOverride 10 ''
			#type database  DBuser  auth-method
			local all       all     trust
		'';
	};


	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.rignchen = {
		shell = pkgs.zsh;
		isNormalUser = true;
		description = "rignchen";
		extraGroups = [
			"networkmanager"
			"wheel"
			"docker"
		];
		packages = with pkgs; [];
	};

	imports =
		[ # Include the results of the hardware scan.
			./hardware-configuration.nix
		];

	networking.hostName = "nixos"; # Define your hostname.
	# networking.wireless.enable = true;	# Enables wireless support via wpa_supplicant.

	virtualisation.docker.enable = true;

	# Allow unfree packages
	nixpkgs.config.allowUnfree = true;

	# Desktop Environment
	services.xserver.displayManager.gdm.enable = true;
	services.xserver.desktopManager.gnome.enable = true;
	programs.hyprland = {
		enable = true;
		xwayland.enable = true;
	};

	# Set your time zone.
	time.timeZone = "Europe/Zurich";

	# Select internationalisation properties.
	i18n.defaultLocale = "en_US.UTF-8";
	i18n.extraLocaleSettings = {
		LC_ADDRESS = "fr_CH.UTF-8";
		LC_IDENTIFICATION = "fr_CH.UTF-8";
		LC_MEASUREMENT = "fr_CH.UTF-8";
		LC_MONETARY = "fr_CH.UTF-8";
		LC_NAME = "fr_CH.UTF-8";
		LC_NUMERIC = "fr_CH.UTF-8";
		LC_PAPER = "fr_CH.UTF-8";
		LC_TELEPHONE = "fr_CH.UTF-8";
		LC_TIME = "fr_CH.UTF-8";
	};

	# Configure keymap
	services.xserver.xkb = {
		layout = "ch";
		variant = "fr_nodeadkeys";
	};

	# Enable experimental features
	nix.settings.experimental-features = [ "nix-command" ];

	# Enable sound with pipewire.
	hardware.pulseaudio.enable = false;
	security.rtkit.enable = true;
	services.pipewire = {
		enable = true;
		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
	};

	# Ssh & Gpg
	programs.gnupg.agent = {
		enable = true;
		enableSSHSupport = true;
	};
	services.openssh.enable = true;

	# Enable networking
	networking.networkmanager.enable = true;
	# Configure network proxy if necessary
	# networking.proxy.default = "http://user:password@proxy:port/";
	# networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

	# Enable the X11 windowing system.
	services.xserver.enable = true;

	# Configure console keymap
	console.keyMap = "sg";

	# Enable CUPS to print documents.
	services.printing.enable = true;

	# Bootloader.
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;

	system.stateVersion = "24.05"; # Before changing this value read the documentation for this option (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
}
