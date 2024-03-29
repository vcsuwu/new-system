{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "vocus";
    userEmail = "zenyabtw@gmail.com";
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
    };
  };

  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    dotDir = ".config/zsh";
    initExtra = ''
      PS1="[%n@%m %~ ]  "
    '';
  };

  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };

  programs.kitty = {
    enable = true;
    font.name = "JetBrainsMono Nerd Font Mono";
    settings = {
      cursor = "#ffffff";
      background = "#000000";
      foreground = "#ffffff";
      background_opacity = "0.8";
      window_padding_width = 5;
			disable_ligatures = "always";
    };
    shellIntegration.enableZshIntegration = true;
  };

  # programs.alacritty = {
  # 	enable = true;
  # 	settings = {
  # 		window.opacity = 0.8;
  # 		window.padding = {
  # 			x = 10;
  # 			y = 10;
  # 		};
  # 		font.normal.family = "JetBrainsMono Nerd Font Mono";
  # 		font.size = 12;
  # 		colors.primary = {
  # 			foreground = "#ffffff";
  # 			background = "#000000";
  # 		};
  # 	};
  # };

	programs.tmux = {
		enable = true;
		clock24 = true;
		escapeTime = 0;
		shell = "${pkgs.zsh}/bin/zsh";
	};
}
