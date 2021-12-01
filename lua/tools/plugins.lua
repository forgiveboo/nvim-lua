vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'rakr/vim-one'
  use 'rafamadriz/neon'
  use 'marko-cerovac/material.nvim'
  use 'bluz71/vim-moonfly-colors'

  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }

  use {
    'ibhagwan/fzf-lua',
    requires = {
      'vijaymarupudi/nvim-fzf',
      'kyazdani42/nvim-web-devicons' } -- optional for icons
  }

  use {
    'glepnir/dashboard-nvim',
    requires = 'ibhagwan/fzf-lua'
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    -- tag = 'release' -- To use the latest release
  }

  use "lukas-reineke/indent-blankline.nvim"

  use {
    'gelguy/wilder.nvim',
    run = ':UpdateRemotePlugins'
  }

  use {
    'romgrk/nvim-treesitter-context',
    requires = 'nvim-treesitter/nvim-treesitter'
  }

  use {
    "SmiteshP/nvim-gps",
    requires = "nvim-treesitter/nvim-treesitter"
  }

  use 'norcalli/nvim-colorizer.lua'

  use "numToStr/FTerm.nvim"

  use {
    'williamboman/nvim-lsp-installer',
    requires = 'neovim/nvim-lspconfig'
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp', -- nvim内置lsp客户端的nvim-cmp源码
      'onsails/lspkind-nvim', -- 自动完成美化
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      "hrsh7th/cmp-emoji"
    }
  }

  use {
    'L3MON4D3/LuaSnip',
    requires = {
      'saadparwaiz1/cmp_luasnip',
      "rafamadriz/friendly-snippets",
    }
  }

  use "ray-x/lsp_signature.nvim"

  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use 'windwp/nvim-autopairs'

  use {
    'VonHeikemen/fine-cmdline.nvim',
    requires = 'MunifTanjim/nui.nvim'
  }

  use { 'michaelb/sniprun', run = 'bash ./install.sh'}


  use 'mhartington/formatter.nvim'

  use 'folke/lsp-colors.nvim'

  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  use 'mfussenegger/nvim-jdtls'

--  use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}
  use {"ellisonleao/glow.nvim"}

end)
