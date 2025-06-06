return {
	{
		
		-- adds telescope plugin
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		-- Adds tree sitter plugin
		'nvim-treesitter/nvim-treesitter',
		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })()
		end, 
	},
	{
		"nvim-tree/nvim-tree.lua",
  	version = "*",
  	lazy = false,
  	dependencies = {
    "nvim-tree/nvim-web-devicons",
  	},
  	config = function()
 	  	require("nvim-tree").setup {}
  	end,
	},
	{
  	"folke/which-key.nvim",
  	event = "VeryLazy",
  	opts = {
    	-- your configuration comes here
    	-- or leave it empty to use the default settings
    	-- refer to the configuration section below
  	},
  	keys = {
    	{
      	"<leader>?",
      	function()
        	require("which-key").show({ global = false })
      	end,
      	desc = "Buffer Local Keymaps (which-key)",
    	},
  	},
	}
}
