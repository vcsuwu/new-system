{ inputs, ...}:
{
  imports = [ inputs.nixvim.homeManagerModules.nixvim ];

  programs.nixvim = {
    enable = true;
		globals.mapleader = " ";
    colorschemes.rose-pine = {
      enable = true;
      transparentBackground = true;
    };
    options = {
      autoindent = true;
      cursorline = true;
      tabstop = 2;
      shiftwidth = 2;
      wrap = true;
      linebreak = true;
      mouse = "";
      number = true;
      relativenumber = true;
    };
		plugins = {
		  treesitter.enable = true;
			lsp = {
				enable = true;
				servers = {
					tsserver.enable = true; # javascript & typescript
					nil_ls.enable = true; # nix programming language
				};
			};
		};
  };
}
