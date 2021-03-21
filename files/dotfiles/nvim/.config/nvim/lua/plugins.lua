local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'anott03/nvim-lspinstall'

    -- helpers
    use 'tpope/vim-vinegar'
    use 'millermedeiros/vim-statline'
    use 'rhlobo/vim-super-retab'
    use 'tpope/vim-commentary'

    -- tools
    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use 'tpope/vim-fugitive'

    -- linting
    -- use 'dense-analysis/ale'
end)