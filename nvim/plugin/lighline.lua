-- print(vim.cmd("echo &statusline"))
--
local prequel = 'Location::: '
vim.g['lightline'] = {
  colorscheme = 'powerline',
  showtabline = 4,
  active = {
    -- we have 3 groups first will have main color , 2nd wil hav white with backgroup gray
    --left = {{'mode', 'paste'}, {'readonly', 'filename', 'modified'}, { 'bufnum', 'example', 'location'}},
    --left = {{ 'bufnum', 'example', 'location'}, {'mode', 'paste'}, {'readonly', 'filename', 'modified'} },
    left = {{'mode', 'paste'},{ 'bufnum', 'example'},  {'readonly', 'filename', 'modified'} },
--    right = {{'filetype'}, { 'filetype', 'percent', 'lineinfo' }}
  },
  tabline = {
    left = {{'tabs'}},
    right = {{'bufnum', 'buffers'}},
--    middle = {{'#dadada', '#121212', 253, 233}}
  },
  component = {
       example =  'Simple is better than complex...',
       -- provide the location of the file now
--       location =  vim.fn.expand('%:p') ,
   -- location =  prequel.. " " ..vim.fn.getcwd()
   --     location =  prequel.. " " ..vim.cmd("pwd")
       -- path =  vim.fn.getcwd()
--      example =  {{ 'bufnum', 'example' }[v
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

