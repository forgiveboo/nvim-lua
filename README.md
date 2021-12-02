#### 使用Lua配置Nvim
> 对Lua语言不太懂，大多数配置都是照抄大神的，在此感谢大神们的贡献
#### 截图
![启动页](https://github.com/forgiveboo/nvim-lua/blob/main/screenshots/dashboard.png)
![Nvim使用界面](https://github.com/forgiveboo/nvim-lua/blob/main/screenshots/nvim.png)
> 主题是[tokyonight](https://github.com/folke/tokyonight.nvim)
#### 安装
##### 安装前需要做的事
- 安装[fd](https://github.com/sharkdp/fd)(文件搜索需要)
- 安装pynvim(为nvim添加python支持)
##### 安装Packer(插件管理工具)
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
##### 克隆本仓库
```
git clone https://github.com/forgiveboo/nvim-lua.git ~/.nvim-lua
```
##### 创建软链接
```
cd ~/.config
ln -s ~/.nvim-lua nvim
```
##### 安装后需要做的事
- 安装插件`:PackerInstall`
> 中国用户可能需要"特殊处理"
#### 用到的插件
- [ ] [bufferline](https://github.com/akinsho/bufferline.nvim)
- [ ] [dashboard](https://github.com/glepnir/dashboard-nvim)
- [ ] [formatter](https://github.com/mhartington/formatter.nvim)
- [X] [Fterm](https://github.com/numToStr/FTerm.nvim)
- [ ] [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [X] [glow](https://github.com/ellisonleao/glow.nvim)
- [X] [inent-blank-line](https://github.com/lukas-reineke/indent-blankline.nvim)
- [X] [lsp-color](https://github.com/folke/lsp-colors.nvim)
- [X] [lsp-saga](https://github.com/glepnir/lspsaga.nvim)
- [ ] [lsp-signature](https://github.com/ray-x/lsp_signature.nvim)
- [X] [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer)
- [X] [lspkind](https://github.com/onsails/lspkind-nvim)
- [ ] [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [ ] [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [X] [nvim-colorizer](https://github.com/norcalli/nvim-colorizer.lua)
- [ ] [nvim-gps](https://github.com/SmiteshP/nvim-gps)
- [ ] [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)
- [X] [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [ ] [nvim-treesitter-context](https://github.com/romgrk/nvim-treesitter-context)
- [ ] [sniprun](https://github.com/michaelb/sniprun)
- [ ] [spellsitter](https://github.com/lewis6991/spellsitter.nvim)
- [ ] [which-key](https://github.com/folke/which-key.nvim)
- [ ] [wilder](https://github.com/gelguy/wilder.nvim)
> 只贴出了需要配置的插件，其他可以直接使用的没有贴出来
#### TODO
##### 2021.12.2
- [X] 配置dashboader可以使用启动页上的功能
- [X] 配置inentLind让除了代码界面的其他界面都没有缩进线
- [X] 配置LSP界面
##### 2021.12.3
- [ ] 配置dashboard启动页上没有buffer栏
- [ ] 配置Python语言的快速运行
- [ ] 优化cmp的配置，主要是怎么在不需要提示时取消提示框(避免有些时候需要换行结果把提示信息的内容选上了)
> 这可以说是最最基本的配置，因为本人是个小菜鸡，很多功能和插件还用不到，不过作为日常使用没有什么问题
