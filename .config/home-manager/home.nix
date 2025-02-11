{ config, pkgs, lib, ... }:

{
	home.packages = with pkgs; [
		## Dev
			#ide
			neovim
			#dev tools
			tmux
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
			zig
		## Misselanous
			#files
			lf
			zoxide
			fzf
			fd
			#dotfiles
			stow
			#shell
			zsh
			oh-my-posh
			atuin
			fastfetch
			#app gui
			discord
			libreoffice-qt
			obs-studio
			fuzzel # app launcher
				# image editor
				pinta # litteraly paint.net for linux
				inkscape # svg editor
			#app cli
			pass
			gh # github cli
			glow # markdown viewer
			slides # markdown - powerpoint viewer
			tldr
			ripgrep
		## Desktop
			wl-clip-persist
			waybar
			# screenshot
			grim # screenshot
			slurp # select part of screen
			#lock screen
			wlogout
			swaylock-effects
			hypridle
	];

	home.sessionVariables = {
		# EDITOR = "emacs";
	};

	# Home Manager is pretty good at managing dotfiles. The primary way to manage
	# plain files is through 'home.file'.
	home.file = {
		# # Building this configuration will create a copy of 'dotfiles/screenrc' in
		# # the Nix store. Activating the configuration will then make '~/.screenrc' a
		# # symlink to the Nix store copy.
		# ".screenrc".source = dotfiles/screenrc;
		
		# # You can also set the file content immediately.
		# ".gradle/gradle.properties".text = ''
		#   org.gradle.console=verbose
		#   org.gradle.daemon.idletimeout=3600000
		# '';
	};

	# Allow some unfree software.
	nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
		"discord"
	];

	# Let Home Manager install and manage itself.
	programs.home-manager.enable = true;
	home = {
		# Home Manager needs a bit of information about you and the paths it should
		# manage.
		username = "rignchen";
		homeDirectory = "/home/rignchen";
		
		# This value determines the Home Manager release that your configuration is
		# compatible with. This helps avoid breakage when a new Home Manager release
		# introduces backwards incompatible changes.
		#
		# You should not change this value, even if you update Home Manager. If you do
		# want to update the value, then make sure to first check the Home Manager
		# release notes.
		stateVersion = "24.05"; # Please read the comment before changing.
	};
}
