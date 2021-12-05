vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- ============ 界面美化 ================
  -- 主题
  use 'rakr/vim-one'
  use 'rafamadriz/neon'
  use 'marko-cerovac/material.nvim'
  use 'bluz71/vim-moonfly-colors'
  use 'ray-x/aurora'
  use 'folke/tokyonight.nvim'

  -- 内浮窗UI美化
  use 'stevearc/dressing.nvim'

  --启动页
  use {
    'glepnir/dashboard-nvim'
  }

  -- 漂亮的命令提示
  use {
    'gelguy/wilder.nvim',
    run = ':UpdateRemotePlugins'
  }

  -- 浮动终端
  use "numToStr/FTerm.nvim"

  -- 浮动cmdline
  use {
    'VonHeikemen/fine-cmdline.nvim',
    requires = 'MunifTanjim/nui.nvim'
  }

  -- 状态栏
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- 标签栏
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- 更好看的搜索
  use {
    'VonHeikemen/searchbox.nvim',
    requires = 'MunifTanjim/nui.nvim'
  }

  -- ============== LSP相关 ==================
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

  -- lsp安装器
  use {
    'williamboman/nvim-lsp-installer',
    requires = 'neovim/nvim-lspconfig'
  }

  -- 自动补全美化
  use 'folke/lsp-colors.nvim'

  -- java自动补全
  use 'mfussenegger/nvim-jdtls'

  -- 内置LSP UI优化
  use {
    'glepnir/lspsaga.nvim',
    requires = 'neovim/nvim-lspconfig'
  }

  -- 代码片段
  use {
    'L3MON4D3/LuaSnip',
    requires = {
      'saadparwaiz1/cmp_luasnip',
      "rafamadriz/friendly-snippets",
    }
  }

  -- ============= 代码相关 ===============
  -- 语法高亮
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- 显示当前在哪个函数中
  use {
    'romgrk/nvim-treesitter-context',
    requires = 'nvim-treesitter/nvim-treesitter'
  }

  -- 多光标操作
  use {
    'mg979/vim-visual-multi',
    branch = 'master'
  }

   -- 缩进
  use "lukas-reineke/indent-blankline.nvim"

  -- 语法导航
  use {
    "SmiteshP/nvim-gps",
    requires = "nvim-treesitter/nvim-treesitter"
  }

  -- 高亮颜色代码
  use 'norcalli/nvim-colorizer.lua'

  -- 显示函数签名
  use "ray-x/lsp_signature.nvim"

  -- 括号自动补全
  use 'windwp/nvim-autopairs'

  -- 代码运行
  use { 'michaelb/sniprun', run = 'bash ./install.sh'}

  -- 代码格式化
  use 'mhartington/formatter.nvim'

  -- 高亮光标所在的所有相同单词
  use {
    'RRethy/vim-illuminate'
  }

  -- markdown预览
  use {"ellisonleao/glow.nvim"}

  -- 拼写检查
  use {
    'lewis6991/spellsitter.nvim',
  }

  -- 快速注释
  use 'numToStr/Comment.nvim'

  -- ============= 功能相关 =================
  -- 搜索神器
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- 文件树
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }

  -- 查看git修改状态
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    -- tag = 'release' -- To use the latest release
  }

  -- lazygit
  use 'kdheepak/lazygit.nvim'

  -- 快捷键映射
  use 'folke/which-key.nvim'

end)
