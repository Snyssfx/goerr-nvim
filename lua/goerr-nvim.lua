local api = vim.api
local v = vim.v
local fn = vim.fn
local buf, win

local function GoErrFoldTxt(bufnr, foldstart, foldend, folddashes)
    local lines = fn.getbufline(bufnr, foldstart)

    if string.find(lines[1], "^%s*if err != nil {") == nil then
        return vim.api.nvim_eval('foldtext()')
    end

    local result = ""
    for _, l in ipairs(lines) do
        l = string.gsub(l, "^%s*", "")
        result = result .. l
    end
    return "if err: "..result

end

-- print(GoErrFoldTxt(10, 7, 9, "..."))
-- print(GoErrFoldTxt(10, 11, 14, "..."))
