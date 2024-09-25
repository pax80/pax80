local M = {}

definition = {
    row= 1,
    column = 2, buffer= 3, buffername= 4}


M.listMarks = function()
    local j = vim.api.nvim_get_mark("J",{})
    local k = vim.api.nvim_get_mark("K",{})
    local l = vim.api.nvim_get_mark("L",{})
    print("J ->", j[definition["buffername"]])
    print("K ->", k[definition["buffername"]])
    print("L ->", l[definition["buffername"]])
end

M.toogleFolder =  function()
  if vim.g.NetrwIsOpen == 1 then
    for _, i in pairs(vim.api.nvim_list_bufs()) do
      local buf_name = vim.api.nvim_buf_get_name(i)
      if string.find(buf_name, "NetrwTreeListing") then
        vim.api.nvim_buf_delete(i, { force = true })
      end
    end
    vim.g.NetrwIsOpen = 0
  else
    vim.g.NetrwIsOpen = 1
    vim.cmd("silent Vexplore")
  end
end

return M
