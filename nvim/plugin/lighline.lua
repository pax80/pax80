-- print(vim.cmd("echo &statusline"))
vim.g['lightline'] = {
  colorscheme = 'powerline',
  showtabline = 4,
  active = {
    left = {{'mode', 'paste'}, {'readonly', 'filename', 'modified'}, { 'bufnum', 'example'}},
--    right = {{'filetype'}, { 'filetype', 'percent', 'lineinfo' }}
  },
  tabline = {
    left = {{'tabs'}},
    right = {{'bufnum', 'buffers'}},
--    middle = {{'#dadada', '#121212', 253, 233}}
  },
  component = {
       example =  '>>>>>   Simple is better than complex...'
--      example =  {{ 'bufnum', 'example' }}
  },
  component_expand = {
    buffers = 'lightline#bufferline#buffers'
  },
  component_type = {
    buffers = 'tabsel'
  }
}

--vim.g.lightline = {
--    colorscheme = "solarized",
----    lineinfo = "%3l,%-2c",
--    -- line = "%l",
--    -- column = "%c",
--}

