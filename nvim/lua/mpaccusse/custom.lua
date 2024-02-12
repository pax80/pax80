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



local function writeLine(l, c1, c2)
    lenght = c2 - c1
    vim.api.nvim_buf_set_text(0, l-1, c1, l-1, c1, {"+"})
    vim.api.nvim_buf_set_text(0, l-1, c1 +1, l-1, c1 +(lenght), {string.rep("-", lenght-1)})
    vim.api.nvim_buf_set_text(0, l-1, c2, l-1, c2 , {"+"})
end

function M.WriteSomething()
    b1, l1, c1, off1 = unpack(vim.fn.getpos("'<"))
    b2, l2, c2, off2 = unpack(vim.fn.getpos("'>"))

    -- print("buffer ", b1, " line 1 ", l1, " columm ", c1, " offset ", off1)
    -- print("buffer ", b2, " line 2 ", l2, " columm ", c2, " offset ", off2)

    writeLine(l1, c1, c2)
    writeLine(l2, c1, c2)
    for i = l1 +1, l2-1, 1 do 
        vim.api.nvim_buf_set_text(0, i-1, c1, i-1, c1, {"|"})
        vim.api.nvim_buf_set_text(0, i-1, c2, i-1, c2, {"|"})
    end
end

return M
