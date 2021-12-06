local status, formatter = pcall(require, "formatter")
if (not status) then
  return
end
formatter.setup(
  {
    filetype = {
      lua = {
        -- luafmt
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
            stdin = true
          }
        end
      },

      java = {
        function ()
          return {
            exe = 'astyle',
            args = {'-style=kr'},
            stdin = true
          }
        end
      },

      python = {
      function()
        return {
          exe = "python3 -m autopep8",
          args = {
            "--in-place --aggressive --aggressive",
            vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
          }
        }
        end
      }
    }
  }
)

--配置保存文件自动格式化代码
vim.api.nvim_exec(
  [[
    augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost *.rs,*.lua,*.java FormatWrite
    augroup END
]],
  true
)
