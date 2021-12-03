vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- 主题
  use 'rakr/vim-one'
  use 'rafamadriz/neon'
  use 'marko-cerovac/material.nvim'
  use 'bluz71/vim-moonfly-colors'
  use 'ray-x/aurora'
  use 'xiyaowong/nvim-transparent'
  use 'folke/tokyonight.nvim'

  -- 快捷键映射
  use 'folke/which-key.nvim'

  -- 语法高亮
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }

    -- 多光标操作
  use {
    'mg979/vim-visual-multi', 
    branch = 'master'
  }
  -- 搜索神器
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  --启动页
  use {
    'glepnir/dashboard-nvim',
    requires = 'ibhagwan/fzf-lua'
  }

  -- 文件树
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }

  -- git修改状态
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    -- tag = 'release' -- To use the latest release
  }

  -- lazygit
  use 'kdheepak/lazygit.nvim'

  -- 缩进
  use "lukas-reineke/indent-blankline.nvim"

  -- 漂亮的命令提示
  use {
    'gelguy/wilder.nvim',
    run = ':UpdateRemotePlugins'
  }

  -- 文本注释
  use {
    'romgrk/nvim-treesitter-context',
    requires = 'nvim-treesitter/nvim-treesitter'
  }

  -- 语法导航
  use {
    "SmiteshP/nvim-gps",
    requires = "nvim-treesitter/nvim-treesitter"
  }

  -- 高亮颜色代码
  use 'norcalli/nvim-colorizer.lua'

  -- 浮动终端
  use "numToStr/FTerm.nvim"

  -- lsp安装器
  use {
    'williamboman/nvim-lsp-installer',
    requires = 'neovim/nvim-lspconfig'
  }

  -- 自动补全
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
  
  -- 自动补全美化
  use 'folke/lsp-colors.nvim'

  -- java自动补全
  use 'mfussenegger/nvim-jdtls'

  use {
    'glepnir/lspsaga.nvim',
    requires = 'neovim/nvim-lspconfig'
  }

  -- 浮动窗口下的命令栏
  use {
    'VonHeikemen/fine-cmdline.nvim',
    requires = 'MunifTanjim/nui.nvim'
  }

  -- 代码片段
  use {
    'L3MON4D3/LuaSnip',
    requires = {
      'saadparwaiz1/cmp_luasnip',
      "rafamadriz/friendly-snippets",
    }
  }

  -- 显示函数签名
  use "ray-x/lsp_signature.nvim"

  -- 状态栏
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- 括号自动补全
  use 'windwp/nvim-autopairs'

  -- 代码运行
  use { 'michaelb/sniprun', run = 'bash ./install.sh'}

  -- 代码格式化
  use 'mhartington/formatter.nvim'

  -- 标签栏
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- markdown预览
  use {"ellisonleao/glow.nvim"}

  -- 拼写检查
  use {
    'lewis6991/spellsitter.nvim',
  }

  -- 高亮光标所在的所有相同单词
  use {
    'RRethy/vim-illuminate'
  }

end)
